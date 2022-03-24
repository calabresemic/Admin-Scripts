#requires -version 5
#requires –Modules ActiveDirectory
<#
.SYNOPSIS
  Form used to create groups compliant with MPTO 00-33D-2001
.DESCRIPTION
  Loads the CreateGroupForm.designer.ps1 script and allows a user to create a group by filling in the required fields.
  Must be originally run from Admin-Scripts.ps1
.PARAMETER NOSOverride
    Launches the form with the TreeView at the root of the domain and with all bases selectable in the combobox.
.INPUTS
  None
.OUTPUTS
  Log file stored in %LocalAppData%\CreateGroupForm.log
  Compliant accounts :)
.NOTES
  Version:        1.0
  Author:         Michael Calabrese
  Creation Date:  1/18/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  If running for a base admin
  .\CreateGroupForm.ps1

.EXAMPLE
  If running for a NOS/COS admin
  .\CreateGroupForm.ps1 -NOSOverride
#>

Param(
    [Switch]$NOSOverride
)

#This event is triggered when the form loads
$form_Load = {
    if ($NOSOverride) {
        $baseNameCombobox.Items.AddRange($basenames) #Add all the bases to the combobox.
        Add-Node -parentNode $pathTreeView -nodeName $Domain.DistinguishedName -nodeText $Domain.DNSRoot -hasChildren #Add the domain root to the treeView
    } else {
        $baseOU = $basenames | Where-Object {$_.Name -eq $userLocation} #Set the baseOU var equal to the base that matches the user's l attrib.
        $baseNameCombobox.Items.AddRange($baseOU) #Add the user's base to the basename combobox
        $baseNameCombobox.SelectedIndex=0 #Select the user's base because there's no other choices anyway.
        Add-Node -parentNode $pathTreeView -nodeName $baseOU.DistinguishedName -nodeText $baseOU.Name -hasChildren #Add the base OU to the treeView

        #If user has FAR Rights show Administrative Groups OU
        if ($formUserMembership -match '^GLS_[A-Z\s]+_FAR_AccountManagement$') {
            #Add the 'Administrative Groups' OU, the Base OU under it, and the Base OU under the 'Bases' OU
            $AdminGroupsNode=Add-Node -parentNode $pathTreeView -nodeName "OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)" -nodeText "Administrative Groups"
            Add-Node -parentNode $AdminGroupsNode -nodeName "OU=$userLocation,OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)" -nodeText $userLocation
            $pathTreeView.Nodes[1].Expand() #Expand the Base OU
        }
    }
    $pathTreeView.Nodes[0].Expand() #Expand the first node of the treeView
    $DcBox.Text = $DC #Set the DC name
}

#This event is triggered when a user selects an OU from the treeView on the left. It is meant to guide them to the correct location.
$pathTreeView_AfterSelect = {
    if ($this.SelectedNode.Name -eq $Domain.DistinguishedName -or $this.SelectedNode.Text -eq 'Administrative Groups') {
        #This is to handle the event on startup of the form. I could do something else but it's going to ride for now.
    } elseif (($this.SelectedNode.Name -notlike "OU=*,OU=Bases,$($Domain.DistinguishedName)") -and ($this.SelectedNode.Name -notlike "OU=*,OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)")) {
        $result = [System.Windows.Forms.MessageBox]::Show('Normally Group Objects are created under the Base AFB Security Groups OU or the Base AFB OU under Administrative Groups.' +
            [System.Environment]::NewLine +
            'Are you sure you would like to create the group here?','Features Unavailable','YesNo')
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

#If pressing enter in the searchStringTextbox run the searchButton_Click.
$searchStringTextBox_KeyDown = {
    if ($_.KeyCode -eq 'Return') {
        Invoke-Command $searchButton_Click
        $_.SuppressKeyPress = $true
    }
}

#This event occurs when the unit, officesymbol, or purpose change
$groupNameChanged = {
    $groupNameTextBox.Text = $unitCombobox.Text.Replace(' ','').ToUpper() + '.' + $officeSymbolTextbox.Text.ToUpper() + '_' + $purposeTextBox.Text.ToUpper()
    $groupDisplayNameTextBox.Text = $unitCombobox.Text.ToUpper() + '/' + $officeSymbolTextbox.Text.ToUpper() + ' ' + $purposeTextBox.Text.ToUpper()
}

#Triggered when the search button is clicked inside the joinRightsGroupbox.
$searchButton_Click = {
    $ManagerTreeView.Nodes.Clear() #Clear nodes in the treeView
    #Execute search based on the scope selected in the searchScopeCombobox.
    Switch($searchScopeComboBox.Text) {
        'Admin' {
            if ($searchStringTextBox.Text -eq '') {
                $filter = '(name=*)'
            } else {
                $filter = "(ANR=$($searchStringTextBox.Text))"
            }
            Update-TreeViewMembers -TreeView $ManagerTreeView -SearchBase "OU=$($baseNameCombobox.Text),OU=Administrative Accounts,OU=Administration,$($Domain.DistinguishedName)" -Filter $filter -ObjectType User
        }
        'User' {
            if ($searchStringTextBox.Text -eq '') {
                $filter = '(name=*)'
            } else {
                $filter = "(ANR=$($searchStringTextBox.Text))"
            }
            Update-TreeViewMembers -TreeView $ManagerTreeView -SearchBase "OU=$($baseNameCombobox.Text) Users,OU=$($baseNameCombobox.Text),OU=Bases,$($Domain.DistinguishedName)" -Filter $filter -ObjectType User
        }
        'A-Group' {
            if ($searchStringTextBox.Text -eq '') {
                $filter = '(name=*)'
            } else {
                $filter = "(Name=*$($searchStringTextBox.Text)*)"
            }
            Update-TreeViewMembers -TreeView $ManagerTreeView -SearchBase "OU=$($baseNameCombobox.Text),OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)" -Filter $filter -ObjectType Group
        }
        'U-Group' {
            if ($searchStringTextBox.Text -eq '') {
                $filter = '(name=*)'
            } else {
                $filter = "(Name=*$($searchStringTextBox.Text)*)"
            }
            Update-TreeViewMembers -TreeView $ManagerTreeView -SearchBase "OU=$($baseNameCombobox.Text) Security Groups,OU=$($baseNameCombobox.Text),OU=Bases,$($Domain.DistinguishedName)" -Filter $filter -ObjectType Group
        }
    }
}

$managerTreeView_Validating = {
    $_.Cancel = [string]::IsNullOrEmpty($this.SelectedNode.Name)
    #Must select a node as the manager
    if($_.Cancel) {
        $errorprovider1.SetError($this, "Security Groups must have a manager.")
    }
}

#This event is triggered when the user presses the create group button
$createButton_Click = {
    if($createGroupForm.ValidateChildren()) {
        #Start with creating a splat
        $groupObject = @{
            name = $groupNameTextBox.Text
            DisplayName = $groupDisplayNameTextBox.Text
            Description = $descriptionTextBox.Text
            GroupCategory = 'Security'
            GroupScope = $groupScopeCombobox.Text
            ManagedBy = $ManagerTreeView.SelectedNode.Name
            Path = $pathTextbox.Text
        }

        #Try to create the group
        try {
            if($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                New-ADGroup @groupObject -Server $DC
            } else {
                New-ADGroup @groupObject -Server $DC -Credential $credentials
            }

            #If nothing errors show a success message
            $Message = "Successfully created:" +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                $groupNameTextBox.Text +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                "Located:" +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine + 
                $pathTextbox.Text
            Show-BetterMessageBox -Message $Message -Title 'Group Created Successfully!' -Buttons OkOnly

            $createGroupForm.Close()
        } catch {
            #Something errored. Let the user know.
            [System.Windows.Forms.MessageBox]::Show("Creating group :" + $groupNameTextBox.Text + " failed with the following error: " + $_.exception.message,"Error Occurred!")
            Write-Log -Message ($_ | Out-String) -Type Error -LogName CreateGroupForm
        }
    }
}

#Show GUI
. (Join-Path $PSScriptRoot 'CreateGroupForm.designer.ps1')
$CreateGroupForm.ShowDialog()