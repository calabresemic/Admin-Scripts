#requires -version 5
<#
.SYNOPSIS
  Installs RSAT Tools on Servers and Workstations
.DESCRIPTION
  Created for AFNET systems. This script allows the install of RSAT tools on workstations and servers.
  Assumes that RSAT install files are located in the netlogon share.
  Current supported/validated Windows 10 builds include:
    1909 (18363)
    2004 (19041)
    2009 (19042)
.INPUTS
  None
.OUTPUTS
  Log file stored in %LocalAppData%\Install-RSAT.log
.NOTES
  Version:        1.0
  Author:         Michael Calabrese
  Creation Date:  1/18/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  .\Install-RSAT.ps1
#>

#region Variables

[String]$scriptName = 'Install-RSAT'

$win32_OS = Get-WmiObject win32_operatingsystem
[version]$version = $win32_OS.Version
[String]$caption = $win32_OS.Caption

#endregion Varables

#region Functions

Function Write-Log {
    Param(
        [Parameter(Mandatory)]
        [String]$Message,

        [String]$Component,

        [Parameter(Mandatory)]
        [ValidateSet("Info","Warning","Error")]
        [String]$Type = "Info",

        [Parameter(Mandatory)]
        [String]$LogName
    )
    
    #If APPDATA\Local\Admin-Scripts folder does not exist, create it
    if(!(Test-Path "$env:LOCALAPPDATA\Admin-Scripts")){
        New-Item "$env:LOCALAPPDATA\Admin-Scripts" -ItemType Directory | Out-Null
    }

    #Switch the plain text type to the CMTrace format
    Switch ($Type) {
        "Info"      {[int]$Type = 1}
        "Warning"   {[int]$Type = 2}
        "Error"     {[int]$Type = 3}
    }

    #CMTrace formatted log line
    $Content = "<![LOG[$Message]LOG]!>" +`
        "<time=`"$(Get-Date -Format "HH:mm:ss.ffffff")`" " +`
        "date=`"$(Get-Date -Format "M-d-yyyy")`" " +`
        "component=`"$Component`" " +`
        "context=`"$([System.Security.Principal.WindowsIdentity]::GetCurrent().Name)`" " +`
        "type=`"$Type`" " +`
        "thread=`"$([Threading.Thread]::CurrentThread.ManagedThreadId)`" " +`
        "file=`"`">"

    Add-Content -Path "$env:LOCALAPPDATA\Admin-Scripts\$LogName.log" -Value $Content
}

#endregion Functions

#If log path does not exist, create it
if(!(Test-Path "$env:LOCALAPPDATA\Admin-Scripts")){
    New-Item "$env:LOCALAPPDATA\Admin-Scripts" -ItemType Directory -Force | Out-Null
}

#Start transcript of entire install
Start-Transcript -Path "$env:LOCALAPPDATA\Admin-Scripts\$scriptName.log" -Force

try {
    if ($caption -like "Windows Server *") {

        #Run the server installer
        Write-Host ($caption + " detected. Installing RSAT-AD-Tools.")
        Install-WindowsFeature -Name RSAT-AD-Tools -Verbose

    } elseif ($ver -ge 10.0.19041) {

        #2004 & 2009
        Write-Host ($caption + " version: " + $version.ToString() + " detected. Running Features on Demand Offline Installer.")

        Write-Host "Creating temporary folder: $env:SystemDrive\RSAT_Temp"
        Remove-Item "$env:SystemDrive\RSAT_Temp" -Recurse -Force -ErrorAction SilentlyContinue
        New-Item "$env:SystemDrive\RSAT_Temp" -ItemType Directory -Force | Out-Null

        Write-Host "Copying installation files from $env:LOGONSERVER\netlogon\Administration_Scripts\RSAT."
        Copy-Item "$env:LOGONSERVER\netlogon\Administration_Scripts\RSAT\2004+\*" -Destination "$env:SystemDrive\RSAT_Temp" -Recurse -Force

        #Install RSAT Tools
        Get-WindowsCapability –Online | Where-Object Name -like 'RSAT*' | % {
            Write-Host "Installing $($_.Name.Split('~')[0])"
            Add-WindowsCapability -Online -Name $_.name -Source "$env:SystemDrive\RSAT_Temp" -LimitAccess | Out-Null
        }

        Write-Host "Performing cleanup."
        Remove-Item "$env:SystemDrive\RSAT_Temp" -Recurse -Force -ErrorAction SilentlyContinue

    } else {

        #1803 to 1909; 1909 is the only authorized version left.
        Write-Host ($caption + " version: " + $version.ToString() + " detected. Running update package.")

        Write-Host "Creating temporary folder: $env:SystemDrive\RSAT_Temp"
        Remove-Item "$env:SystemDrive\RSAT_Temp" -Recurse -Force -ErrorAction SilentlyContinue
        New-Item "$env:SystemDrive\RSAT_Temp" -ItemType Directory -Force | Out-Null

        Write-Host "Copying installation files from $env:LOGONSERVER\netlogon\Administration_Scripts\RSAT."
        Copy-Item "$env:LOGONSERVER\netlogon\Administration_Scripts\RSAT\WindowsTH-RSAT_WS_1803-x64.msu" -Destination "$env:SystemDrive\RSAT_Temp"

        Write-Host "Please click through the prompts to complete the install."
        Start-Process wusa.exe -ArgumentList "$env:SystemDrive\Temp_RSAT\WindowsTH-RSAT_WS_1803-x64.msu" -Verbose

        Write-Host "Performing cleanup."
        Remove-Item "$env:SystemDrive\RSAT_Temp" -Recurse -Force
    }

    Write-Host "Successfully installed RSAT tools!"
} catch {
    Write-Log -Message ($_ | Out-String) -Component $scriptName -Type Error -LogName Admin-Scripts
    Remove-Item "$env:SystemDrive\RSAT_Temp" -Recurse -Force
}

Stop-Transcript