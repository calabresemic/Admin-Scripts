#requires -version 5
#requires –Modules ActiveDirectory
<#
.SYNOPSIS
  Form used to allow NOS/COS admin to launch other forms.
.DESCRIPTION
  Form allows selecting domain and credentials. Will populate information about the selected domain/forest.
  Must be originally run from Admin-Scripts.ps1
.INPUTS
  None
.OUTPUTS
  None
.NOTES
  Version:        1.0
  Author:         Michael Calabrese
  Creation Date:  1/18/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  When called by Admin-Scripts.ps1
  .\NOSLauncher.ps1
#>

Function Enable-Buttons {
    $createUser.Enabled = $true
    $createAdmin.Enabled = $true
    $createSVC.Enabled = $true
    $createGroup.Enabled = $true
    $createComputer.Enabled = $true
    $editUser.Enabled = $true
    $editAdmin.Enabled = $true
    $editSVC.Enabled = $true
}

Function Disable-Buttons {
    $createUser.Enabled = $false
    $createAdmin.Enabled = $false
    $createSVC.Enabled = $false
    $createGroup.Enabled = $false
    $createComputer.Enabled = $false
    $editUser.Enabled = $false
    $editAdmin.Enabled = $false
    $editSVC.Enabled = $false
}

#Event triggered when the form loads
$form_Load = {
    $userName = "$env:USERDOMAIN\$env:USERNAME"
    $credentialStatusLabel.Text = "Credentials: $userName"
    $ForestSelector.SelectedNode = $ForestSelector.Nodes | Where-Object {$_.Name -eq $env:USERDNSDOMAIN}
}

#Event triggered when TreeView is selected, can cancel action
$forestSelector_BeforeSelect = {
    $NOSLauncher.Cursor = 'WaitCursor'
    if(!(Test-Connection $_.Node.Text -Count 1 -Quiet -ErrorAction SilentlyContinue)) {
        $_.Node.ForeColor = 'Red'
        Disable-Buttons
        $_.Cancel=$true
    } else {
        $_.Node.ForeColor = 'Black'
        Enable-Buttons
    }
    $NOSLauncher.Cursor = 'Default'
}

#Event triggered after forestSelector_BeforeSelect
$forestSelector_AfterSelect = {
    $NOSLauncher.Cursor = 'WaitCursor'
    Switch($this.SelectedNode.Tag) {
        'Forest' {
            Get-ForestInfo -Server $this.SelectedNode.Text #Gather info on forest and set global Forest var
            Locate-DomainController -Server $this.SelectedNode.Text #Find first domain controller and set global DC var

            #Populate domainInfoTextbox
            $domainInfoTextbox.Text = ''
            $domainInfoTextbox.AppendText("Forest Name: $($Forest.Name)" + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("Forest Functional Level: $($Forest.ForestMode)" + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("Domains:" + [System.Environment]::NewLine + ($Forest.Domains -join [System.Environment]::NewLine) + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("Sites:" + [System.Environment]::NewLine + ($Forest.Sites -join [System.Environment]::NewLine))
        }
        'Domain' {
            Get-DomainInfo -Server $this.SelectedNode.Text #Gather info on domain and set global Domain var
            Locate-DomainController -Server $this.SelectedNode.Text #Find first domain controller and set global DC var
            $Global:baseNames = Get-BaseNames #Gather Base Names from the 'Bases' OU

            #Populate domainInfoTextbox
            $domainInfoTextbox.Text = ''
            $domainInfoTextbox.AppendText("Domain Name: $($Domain.Name)" + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("Domain NetBIOS Name: $($Domain.NetBIOSName)" + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("Domain Functional Level: $($Domain.DomainMode)" + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("PDC Emulator: $($Domain.PDCEmulator)")
        }
        Default {
            Get-ForestInfo -Server $this.SelectedNode.Text #Gather info on forest and set global Forest var
            Get-DomainInfo -Server $this.SelectedNode.Text #Gather info on domain and set global Domain var
            Locate-DomainController -Server $this.SelectedNode.Text #Find first domain controller and set global DC var
            $Global:baseNames = Get-BaseNames #Gather Base Names from the 'Bases' OU

            #Populate domainInfoTextbox
            $domainInfoTextbox.Text = ''
            $domainInfoTextbox.AppendText("Forest Name: $($Forest.Name)" + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("Domain Name: $($Domain.Name)" + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("Domain NetBIOS Name: $($Domain.NetBIOSName)" + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("Domain Functional Level: $($Domain.DomainMode)" + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("Forest Functional Level: $($Forest.ForestMode)" + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("PDC Emulator: $($Domain.PDCEmulator)" + [System.Environment]::NewLine)
            $domainInfoTextbox.AppendText("Sites:" + [System.Environment]::NewLine + ($Forest.Sites -join [System.Environment]::NewLine))
        }
    }
    $NOSLauncher.Cursor = 'Default'
}

$bindCredentials_Click = {
    $Global:Credentials = Get-Credential -Message 'Enter Username and Password.'
    $Global:UserName = $credentials.UserName
    $credentialStatusLabel.Text = "Credentials: $userName"
}

$unbindCredentials_Click = {
    $Global:Credentials = [System.Management.Automation.PSCredential]::Empty
    $Global:UserName = "$env:USERDOMAIN\$env:USERNAME"
    $credentialStatusLabel.Text = "Credentials: $userName"
}

#region ButtonClicks
$editSVC_Click = {
    $NOSLauncher.Cursor = 'WaitCursor'
    . (Join-Path $editFormsFolder 'EditSVCForm.ps1') -NOSOverride
    $NOSLauncher.Cursor = 'Default'
}

$editAdmin_Click = {
    $NOSLauncher.Cursor = 'WaitCursor'
    . (Join-Path $editFormsFolder 'EditAdminForm.ps1') -NOSOverride   
    $NOSLauncher.Cursor = 'Default'
}

$editUser_Click = {
    $NOSLauncher.Cursor = 'WaitCursor'
    . (Join-Path $editFormsFolder 'EditUserForm.ps1') -NOSOverride
    $NOSLauncher.Cursor = 'Default'
}

$createComputer_Click = {
    $NOSLauncher.Cursor = 'WaitCursor'
    . (Join-Path $createFormsFolder 'CreateComputerForm.ps1') -NOSOverride
    $NOSLauncher.Cursor = 'Default'
}

$createGroup_Click = {
    $NOSLauncher.Cursor = 'WaitCursor'
    . (Join-Path $createFormsFolder 'CreateGroupForm.ps1') -NOSOverride
    $NOSLauncher.Cursor = 'Default'
}

$createAdmin_Click = {
    $NOSLauncher.Cursor = 'WaitCursor'
    . (Join-Path $createFormsFolder 'CreateAdminForm.ps1') -NOSOverride
    $NOSLauncher.Cursor = 'Default'
}

$createSVC_Click = {
    $NOSLauncher.Cursor = 'WaitCursor'
    . (Join-Path $createFormsFolder 'CreateSVCForm.ps1') -NOSOverride
    $NOSLauncher.Cursor = 'Default'
}

$createUser_Click = {
    $NOSLauncher.Cursor = 'WaitCursor'
    . (Join-Path $createFormsFolder 'CreateUserForm.ps1') -NOSOverride
    $NOSLauncher.Cursor = 'Default'
}

$HelpButton_Click = {
    $NOSLauncher.Cursor = 'WaitCursor'
    . (Join-Path $otherFormsFolder 'ReadMeForm.ps1')
    $NOSLauncher.Cursor = 'Default'
}

#Show GUI
. (Join-Path $PSScriptRoot 'NOSLauncher.designer.ps1')
$NOSLauncher.ShowDialog()