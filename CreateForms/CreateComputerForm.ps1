#requires -version 5
#requires –Modules ActiveDirectory
<#
.SYNOPSIS
  Form used to create computer accounts compliant with MPTO 00-33D-2001
.DESCRIPTION
  Loads the CreateComputerForm.designer.ps1 script and allows a user to create an account by filling in the required fields.
  Must be originally run from Admin-Scripts.ps1
.PARAMETER NOSOverride
    Launches the form with the TreeView at the root of the domain and with all bases selectable in the combobox.
.INPUTS
  None
.OUTPUTS
  Log file stored in %LocalAppData%\CreateComputerForm.log
  Compliant accounts :)
.NOTES
  Version:        1.0
  Author:         Michael Calabrese
  Creation Date:  1/18/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  If running for a base admin
  .\CreateComputerForm.ps1

.EXAMPLE
  If running for a NOS/COS admin
  .\CreateComputerForm.ps1 -NOSOverride
#>

Param(
    [Switch]$NOSOverride
)

#region Functions

Function Add-JoinRights ([Parameter(Mandatory)]$cmpDN,[Parameter(Mandatory)]$JoinID) {
    #Generate the variables needed for DSacles
    $joinRstPerms = "`"" + $Domain.NetBIOSName + "\" + $joinID + ":CA;reset password;`""
    $joinDnsPerms = "`"" + $Domain.NetBIOSName + "\" + $joinID + ":WS;Validated write to DNS host name;`""
    $joinSpnPerms = "`"" + $Domain.NetBIOSName + "\" + $joinID + ":WS;Validated write to service principal name;`""
    $joinArPerms = "`"" + $Domain.NetBIOSName + "\" + $joinID + ":WP;account restrictions;`""

    try {
        if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            DSacls.exe $cmpDN /G $joinRstPerms $joinDnsPerms $joinSpnPerms $joinArPerms | Out-Null
        } else {
            Invoke-Command -ComputerName $DC -Credential $credentials -ScriptBlock {
                DSacls.exe $using:cmpDN /G $using:joinRstPerms $using:joinDnsPerms $using:joinSpnPerms $using:joinArPerms | Out-Null
            }
        }

        #If nothing errors then show a success message
        [System.Windows.Forms.MessageBox]::Show("Successfully added join rights to computer :" + $script:computerNameTextBox.Text,"Successfull!")
    } catch {
        #Something errored. Let the user know.
        [System.Windows.Forms.MessageBox]::Show("Adding join rights to computer :" + $script:computerNameTextBox.Text + " failed with the following error: " + $_.exception.message,"Error Occurred!")
        Write-Log -Message ($_ | Out-String) -Type Error -LogName CreateComputerForm
    }
}

#region Functions

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
    }
    $computerTypeComboBox.DataSource = $cTypeArray #Add the computer types to the computerTypeCombobox
    $pathTreeView.Nodes[0].Expand() #Expand the first node of the treeView as a courtesy
    $DcBox.Text = $DC #Set the DC name
}

#This event is triggered when a user selects an OU from the treeView on the left. It is meant to guide them to the correct location.
$pathTreeView_AfterSelect = {
    if ($this.SelectedNode.Name -eq $Domain.DistinguishedName) {
        #This is to handle the event on startup of the form. I could do something else but it's going to ride for now.
    } elseif ($this.SelectedNode.Name -notlike "OU=*,OU=Bases,$($Domain.DistinguishedName)") {
        $result = [System.Windows.Forms.MessageBox]::Show('Normally Computer Objects are created under the Base AFB Computers OU.' + [System.Environment]::NewLine +
        'Are you sure you would like to create the object here?','Features Unavailable','YesNo')
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

#This event is triggered when the baseCombobox, computerTypeCombobox, or systemIdTextbox are updated causing a live update of the name.
$ComputerNameChange = {
    $computerNameTextBox.Text = $baseNameCombobox.SelectedItem.City + $computerTypeComboBox.SelectedItem.computerTypeCode + '-' + $systemIdTextBox.Text.ToUpper()
}

#If the check box is selected, the form shows the joinRightsGroupbox
#remove this and move to autosize
$joinRightCheckBox_CheckedChanged = {
    if ($this.Checked) {
        $JoinRightGroupBox.Visible = $true
        $CreateComputerForm.Height = 865
    } else {
        $JoinRightGroupBox.Visible = $false
        $CreateComputerForm.Height = 490
    }
}

#If pressing enter in the searchStringTextbox run the searchButton_Click.
$searchStringTextBox_KeyDown = {
    if ($_.KeyCode -eq 'Return') {
        Invoke-Command $searchButton_Click
        $_.SuppressKeyPress = $true
    }
}

#Triggered when the search button is clicked inside the joinRightsGroupbox.
$searchButton_Click = {
    $JoinRightsTreeView.Nodes.Clear() #Clear nodes in the treeView
    #Execute search based on the scope selected in the searchScopeCombobox.
    Switch ($searchScopeComboBox.Text) {
        'Admin' {
            if ($searchStringTextBox.Text -eq '') {
                $filter = '(name=*)'
            } else {
                $filter = "(ANR=$($searchStringTextBox.Text))"
            }
            Update-TreeViewMembers -TreeView $JoinRightsTreeView -SearchBase "OU=$($baseNameCombobox.Text),OU=Administrative Accounts,OU=Administration,$($Domain.DistinguishedName)" -filter $filter -ObjectType User
        }
        'Group' {
            if ($searchStringTextBox.Text -eq '') {
                $filter = '(name=*)'
            } else {
                $filter = "(Name=*$($searchStringTextBox.Text)*)"
            }
            Update-TreeViewMembers -TreeView $JoinRightsTreeView -SearchBase "OU=$($baseNameCombobox.Text),OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)" -filter $filter -ObjectType Group
        }
    }
}

#This is triggered when the user clicks the create computer button.
$createButton_Click = {
    if($createComputerForm.ValidateChildren()) {
        #Try to create the computer object
        try {
            if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                New-ADComputer -Name $computerNameTextBox.Text -Description $descriptionTextBox.Text -Path $pathTextbox.Text -Enabled $true -Server $DC
            } else {
                New-ADComputer -Name $computerNameTextBox.Text -Description $descriptionTextBox.Text -Path $pathTextbox.Text -Enabled $true -Server $DC -Credential $credentials
            }

            #If nothing errors then show a success message
            $Message = "Successfully created:" +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                $computerNameTextBox.Text +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                "Located:" +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                $pathTextbox.Text
            Show-BetterMessageBox -Message $Message -Title 'Computer Created Successfully!' -Buttons OkOnly

            #Check for selected join rights then grant them
            if($joinRightCheckBox.Checked) {
                Add-JoinRights -cmpDN ("`"\\$DC\CN=" + $computerNameTextBox.Text + ',' + $pathTextbox.Text + "`"") -JoinID $JoinRightsTreeView.SelectedNode.Name
            }

            $createComputerForm.Close()
        } catch {
            #Something errored. Let the user know.
            [System.Windows.Forms.MessageBox]::Show("Creating computer :" + $computerNameTextBox.Text + " failed with the following error: " + $_.exception.message,"Error Occurred!")
            Write-Log -Message ($_ | Out-String) -Type Error -LogName CreateComputerForm
        } 
    }
}

#Show GUI
. (Join-Path $PSScriptRoot 'CreateComputerForm.designer.ps1')
$CreateComputerForm.ShowDialog()
