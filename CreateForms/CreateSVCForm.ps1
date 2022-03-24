#requires -version 5
#requires –Modules ActiveDirectory
<#
.SYNOPSIS
  Form used to create service accounts compliant with MPTO 00-33D-2001
.DESCRIPTION
  Loads the CreateSVCForm.designer.ps1 script and allows a user to create an account by filling in the required fields.
  Must be originally run from Admin-Scripts.ps1
.PARAMETER NOSOverride
    Launches the form with the TreeView at the root of the domain and with all bases selectable in the combobox.
.INPUTS
  None
.OUTPUTS
  Log file stored in %LocalAppData%\CreateSVCForm.log
  Compliant accounts :)
.NOTES
  Version:        1.0
  Author:         Michael Calabrese
  Creation Date:  1/18/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  If running for a base admin
  .\CreateSVCForm.ps1

.EXAMPLE
  If running for a NOS/COS admin
  .\CreateSVCForm.ps1 -NOSOverride
#>

Param(
    [Switch]$NOSOverride
)

#This event is triggered when the form loads
$form_Load = {
    if ($NOSOverride) {
        $baseNameCombobox.Items.AddRange($basenames) #Add all the bases to the combobox.+
        $baseNameCombobox.Items.Add([pscustomobject]@{Name='Enterprise';City='';businessCategory='';DistinguishedName=''}) #Add Enterprise to the combobox, domain level accounts need this.
        Add-Node -parentNode $pathTreeView -nodeName $Domain.DistinguishedName -nodeText $Domain.DNSRoot -hasChildren #Add the domain root to the treeView
    } else {
        $baseOU = $basenames | Where-Object {$_.Name -eq $userLocation} #Set the baseOU var equal to the base that matches the user's l attrib.
        $baseNameCombobox.Items.AddRange($baseOU) #Add the user's base to the basename combobox
        $baseNameCombobox.SelectedIndex=0 #Select the user's base because there's no other choices anyway.
        $SVCAccountNode=Add-Node -parentNode $pathTreeView -nodeName "OU=Service Accounts,OU=Administration,$($Domain.DistinguishedName)" -nodeText "Service Accounts" #Add the Service Account OU to the treeView
        Add-Node -parentNode $SVCAccountNode -nodeName "OU=$userLocation,OU=Service Accounts,OU=Administration,$($Domain.DistinguishedName)" -nodeText $userLocation  #Add the base OU to the treeView
    }
    $pathTreeView.Nodes[0].Expand() #Expand the first node out of courtesy
    $DcBox.Text = $DC #Set the DC name
}

#This event is triggered when a user selects an OU from the treeView on the left. It is meant to guide them to the correct location.
$pathTreeView_AfterSelect = {
    if ($this.SelectedNode.Name -eq $Domain.DistinguishedName) {
        #This is to handle the event on startup of the form. I could do something else but it's going to ride for now.
    } elseif ($this.SelectedNode.Name -notlike "OU=*,OU=Service Accounts,OU=Administration,$($Domain.DistinguishedName)") {
        $result = [System.Windows.Forms.MessageBox]::Show('Normally Service Accounts are created at a Base under the Service Accounts OU.' + [System.Environment]::NewLine +
            'Are you sure you would like to create the account here?','Features Unavailable','YesNo')
        if ($result -eq 'Yes') {
            $pathTextbox.Text = $this.SelectedNode.Name
        } else {
            $this.SelectedNode=$null
            $pathTextbox.Text = ''
        }
    } else {
        $pathTextbox.Text = $this.SelectedNode.Name
    }
}

#This event is triggered when the user expands the treeView on the left
$pathTreeView_BeforeExpand = {
    Get-NextLevel -parentNode $_.Node
}

#This event is triggered when the user selects a base in the combobox.
$baseNameCombobox_SelectedIndexChange = {
    #Clear the unitCombobox and add the units attached to the current base.
    $unitCombobox.Items.Clear()
    [array]$units=$baseNameCombobox.SelectedItem.businessCategory
    $unitCombobox.Items.AddRange($Units)
}

$createButton_Click = {
    if($createSVCForm.ValidateChildren()){
        #Start by generating a splat for the SVC account.
        #Not setting the IA Validation because MPTO 00-33D-2001 says not to?
        $password = Generate-Password

        $SVCObject = @{
            name = $nameTextbox.Text.ToUpper()
            displayName = $nameTextbox.Text.ToUpper()
            samAccountName = $nameTextbox.Text.ToUpper()
            city = $baseNameCombobox.Text
            office = $officeSymbolTextbox.Text.ToUpper()
            organization = $unitComboBox.Text.ToUpper()
            officePhone = $phoneTextbox.Text
            description = $descriptionTextbox.Text
            enabled = $true
            path = $pathTextbox.Text
            smartcardLogonRequired = $false
            accountPassword = $password | ConvertTo-SecureString -AsPlainText -Force
            changePasswordAtLogon = $true
            accountNotDelegated = $true
            otherAttributes = @{
                extensionAttribute3 = 'SVC'
                extensionAttribute8 = $CRQTextbox.Text.ToUpper()
                extensionAttribute13 = $emailTextbox.Text
                employeeType = 'S'
            }
        }
        
        try {
            if($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                New-ADUser @SVCObject -Server $DC
            } else {
                New-ADUser @SVCObject -Server $DC -Credential $credentials
            }
            $password | Set-Clipboard #copy to clipboard

            #If nothing errors then show a success message
            $Message="Successfully created:" +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                $nameTextbox.Text.ToUpper() +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                "Located:" +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                $pathTextbox.Text +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                "Account password is: " + $password +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                "It has been copied to your clipboard, send it to customer in an encrypted email!"
            Show-BetterMessageBox -Message $Message -Title 'Account Created Successfully!' -Buttons OkOnly

            $createSVCForm.Close()
        } catch {
            #Something errored. Let the user know.
            [System.Windows.Forms.MessageBox]::Show("Creating " + $nameTextbox.Text.ToUpper() + " failed with the following error: " + $_.exception.message,"Error Occurred!")
            Write-Log -Message ($_ | Out-String) -Type Error -LogName CreateSVCForm
        }
    }
}

#Show GUI
. (Join-Path $PSScriptRoot 'CreateSVCForm.designer.ps1')
$CreateSVCForm.ShowDialog()