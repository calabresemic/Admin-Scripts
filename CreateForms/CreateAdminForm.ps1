#requires -version 5
#requires –Modules ActiveDirectory
<#
.SYNOPSIS
  Form used to create admin accounts compliant with MPTO 00-33D-2001
.DESCRIPTION
  Loads the CreateAdminForm.designer.ps1 script and allows a user to create an account by filling in the required fields.
  Must be originally run from Admin-Scripts.ps1
.PARAMETER NOSOverride
    Launches the form with the TreeView at the root of the domain and with all bases selectable in the combobox.
.INPUTS
  None
.OUTPUTS
  Log file stored in %LocalAppData%\CreateAdminForm.log
  Compliant accounts :)
.NOTES
  Version:        1.0
  Author:         Michael Calabrese
  Creation Date:  1/18/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  If running for a base admin
  .\CreateAdminForm.ps1

.EXAMPLE
  If running for a NOS/COS admin
  .\CreateAdminForm.ps1 -NOSOverride
#>

Param(
    [Switch]$NOSOverride
)

#region Functions

Function Populate-Form ([Microsoft.ActiveDirectory.Management.ADAccount]$Account) {
    $lastNameTextbox.Text = $Account.Surname
    $firstNameTextbox.Text = $Account.GivenName
    $initialTextbox.Text = $Account.Initials
    $edipiTextbox.Text = $Account.EmployeeID
    $suffixCombobox.SelectedItem = $Account.generationQualifier
    $citizenshipTextbox.Text = $Account.extensionAttribute4
    $employeeTypeCombobox.SelectedIndex = $employeeTypeCombobox.Items.PCC.IndexOf($Account.EmployeeType)
    $titleTextbox.Text = $Account.Title
    $payPlanCombobox.SelectedItem = $Account.payPlan
    $payGradeCombobox.SelectedItem = $Account.payGrade
    $branchCombobox.SelectedItem = $Account.company
    $MAJCOMCombobox.SelectedIndex = $MAJCOMCombobox.Items.Acronym.IndexOf($Account.department)
    $baseNameCombobox.SelectedIndex = $baseNameCombobox.Items.Name.IndexOf($Account.l)
    $unitComboBox.Text = $Account.o
    $officeSymbolTextbox.Text = $Account.physicalDeliveryOfficeName
    $phoneTextbox.Text = $Account.OfficePhone

    Invoke-Command $noUserButton_Click #Hide the searcher and show the rest of the form
}

#endregion Functions

#This event is triggered when the form loads
$form_Load = {
	if ($NOSOverride) {
        $noUserButton.Visible = $true #Show the noUserButton to NOS admins, used for creating accounts in domains where we have no user account.
        $script:searchBase = "OU=Bases,$($Domain.DistinguishedName)" #Set the searchbase for the user searcher to the 'Bases' OU.
        $baseNameCombobox.DropDownStyle = 'DropDown' #Allows NOS admins to type in a base name
        $baseNameCombobox.Items.AddRange($basenames) #Add all the bases to the combobox.
        Add-Node -parentNode $pathTreeView -nodeName $Domain.DistinguishedName -nodeText $Domain.DNSRoot -hasChildren #Add the domain root to the treeView
    } else {
        $baseOU = $basenames | Where-Object {$_.Name -eq $userLocation} #Set the baseOU var equal to the base that matches the user's l attrib.
        $script:searchBase = $baseOU.DistinguishedName #Set the searchbase for the user searcher to the user's base
        $baseNameCombobox.Items.AddRange($baseOU) #Add the user's base to the basename combobox
        $baseNameCombobox.SelectedIndex=0 #Select the user's base because there's no other choices anyway.
        $AdminAcctsNode=Add-Node -parentNode $pathTreeView -nodeName "OU=Administrative Accounts,OU=Administration,$($Domain.DistinguishedName)" -nodeText "Administrative Accounts" #Add the 'Administrative Accounts' OU.
        Add-Node -parentNode $AdminAcctsNode -nodeName "OU=$userLocation,OU=Administrative Accounts,OU=Administration,$($Domain.DistinguishedName)" -nodeText $userLocation #Add the user Base OU under the 'Administrative Accounts' OU.
    }
    #Executes code for both base and NOS admins
    $MAJCOMList = Get-MAJCOMList #Pulls list of MAJCOMS from the 'Bases' OU. This is assuming the list is in the same format as NIPR.
    $MAJCOMCombobox.Items.AddRange($MAJCOMList) #Adds the MAJCOMS to the MAJCOMCombobox
    $branchCombobox.Items.AddRange($Branches) #Add the array of Branches to the branchCombobox
    $payPlanCombobox.Items.AddRange($PayPlans) #Add the array of payplans to the payplanCombobox
    $suffixCombobox.Items.AddRange($SuffixList) #Add the array of suffixs to the suffixCombobox
    $employeeTypeCombobox.DataSource = $eTypeArray #Adds the employee types to the employeeTypeCombobox
    $adminLevelCodeCombobox.DataSource = $AdmTypeArray #Add the Admin Types to the combobox
    $pathTreeView.Nodes[0].Expand() #Expand the first Node out of courtesy
    $DcBox.Text = $DC #Set the DC name
}

#This event is triggered when a user selects an OU from the treeView on the left. It is meant to guide them to the correct location.
$pathTreeView_AfterSelect = {
    if ($this.SelectedNode.Name -eq $Domain.DistinguishedName) {
        #This is to handle the event on startup of the form. I could do something else but it's going to ride for now.
    } elseif ($this.SelectedNode.Name -notlike "OU=*,OU=Administration,$($Domain.DistinguishedName)") {
        $result = [System.Windows.Forms.MessageBox]::Show('Normally Admin Objects are created under the Base AFB OU under Administrative Accounts.' + [System.Environment]::NewLine +
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

#This event is triggered when the user expands a node in the treeView
$pathTreeView_BeforeExpand = {
    Get-NextLevel -parentNode $_.Node
}

#This event is triggered when the user selects a base in the combobox.
$baseNameCombobox_SelectedIndexChange = {
    #Clear the unitCombobox and add the units attached to the current base.
    $unitCombobox.Items.Clear() 
    [array]$units=$baseNameCombobox.SelectedItem.businessCategory
    $unitCombobox.Items.AddRange($units)

    #Clear the groupTreeView and add new groups for the base
    $groupTreeView.Nodes.Clear()
    Update-TreeViewMembers -TreeView $groupTreeView -SearchBase "OU=$($this.Text),OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)" -Filter '(name=*)' -ObjectType Group
}

#if the user checks the box this shows the dateTimePicker for account expiration
$accountExpirationCheckbox_CheckedChanged = {
    if ($this.Checked){
        $expirationDateTimePicker.Visible = $true
    } else {
        $expirationDateTimePicker.Visible = $false
    }
}

#If the user checks the box this shows the treeView for selecting groups
$addGroupsCheckbox_CheckedChanged = {
    if ($this.Checked) {
        $groupTreeView.Visible = $true
    } else{
        $groupTreeView.Visible = $false
    }
}

#This event is triggered when the user searches for a user account in the User Searcher
$searchButton_Click = {
    $resultDataGridView.Rows.Clear() #Clear the rows in the datagridview

    #Handle the LDAPFilter
    if ($searchStringTextBox.Text -eq '') {
        $filter = '(name=*)'
    } else {
        $filter = "(ANR=$($searchStringTextBox.Text))"
    }

    if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
        Get-ADUser -LDAPFilter $filter -SearchBase $script:searchBase -Server $DC | Select-Object Name,DistinguishedName | ForEach-Object {
            $resultDataGridView.Rows.Add($_.Name, $_.DistinguishedName, 'Select')
        }
    } else {
        Get-ADUser -LDAPFilter $filter -SearchBase $script:searchBase -Server $DC -Credential $credentials | Select-Object Name,DistinguishedName | ForEach-Object{
            $resultDataGridView.Rows.Add($_.Name, $_.DistinguishedName, 'Select')
        }
    }
}

#This block allows NOS Admins to bypass the user searcher for domains where there are no user accounts.
$noUserButton_Click = {
    $SearchGroupBox.Visible = $false
    
    #Make these visible in the opposite order you want them to appear
    $createPanel.Visible = $true
    $addGroupsPanel.Visible = $true
    $accountInfoGroupBox.Visible = $true
    $employmentInfoGroupBox.Visible = $true
    $adminInfoGroupBox.Visible = $true
    $pathPanel.Visible = $true
}

#This even occurs when the user presses enter in the user searcher textbox
$searchStringTextbox_KeyDown = {
    if ($_.KeyCode -eq 'Return') {
        Invoke-Command $searchButton_Click #Trigger the searchButton_Click
        $_.SuppressKeyPress = $true
    }
}

#This block handles when the user selects an account inside the dataGridView.
$resultDataGridView_CellContentClick = {
    if ($_.RowIndex -ge 0 -and $_.ColumnIndex -eq 2) {
		$SelectedUser=$resultDataGridView[1, $_.RowIndex].Value

        if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            $userInfo = Get-ADUser -Identity $SelectedUser -Properties *  -Server $DC
        } else {
            $userInfo = Get-ADUser -Identity $SelectedUser -Properties *  -Server $DC -Credential $credentials
        }
        Populate-Form -Account $userInfo
	}
}

#This autogenerates the admin's UPN based on the input fields and the current 90 Meter constraints.
$logonNameChanged = {
    $logonNameTextbox.Text = $edipiTextbox.Text +
        $employeeTypeCombobox.SelectedItem.PCC +
        '.ADM' +
        $adminLevelCodeCombobox.SelectedItem.adminTypeCode +
        '@smil.mil'
}

#This event is triggered if the radiobuttons for IA Validation change
$IAValidate_CheckedChanged = {
    if ($this.Checked) {
        Switch ($this.Name) {
            'radioButton1' {
                if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                    $IACN = Get-ADUser $env:USERNAME -Properties CN -Server $DC | Select-Object -ExpandProperty CN
                } else {
                    $IACN = Get-ADUser $credentials.UserName -Properties CN -Server $DC -Credential $credentials | Select-Object -ExpandProperty CN
                }
                #Handle the radioButton2 events if changing from that 
                $validatorTextbox.Visible = $false
                $validatorTextbox.Tag = ''
            }
            'radioButton2' {
                $validatorTextbox.Visible = $true
                $validatorTextbox.Tag = 'Mandatory'
                #This relies on the validatorTextbox_TextChanged event to populate the IACN variable
            }
            'radioButton3' {
                $IACN = ''
                #Handle the radioButton2 events if changing from that 
                $validatorTextbox.Visible = $false
                $validatorTextbox.Tag = ''
            }
        }
    }
}

#This is triggered when the validatorTextbox is set to visible by radioButton2
$validatorTextbox_TextChanged = {
    $IACN = $this.Text
}

$createButton_Click = {
    if($createAdminForm.ValidateChildren()) {
        #Start by generating the static list of 'otherAttributes'. These attributes are not native to AD and can't be called in the splat.
        $otherAttributes = @{
            employeeType = 'Z'
            extensionAttribute4 = $citizenshipTextbox.Text.ToUpper()
            payGrade = $payGradeCombobox.Text
            payPlan = $payPlanCombobox.Text
        }

        #Evaluate suffix to see if it's populated, if it is add to otherAttributes
        if (![string]::IsNullOrEmpty($suffixCombobox.Text)) {
            $otherAttributes += @{generationQualifier = $suffixCombobox.Text}
        }

        #Concatenate the CN and DisplayName for the user, probably works fine, not really sure about FNs.      
        $CNArray = @(
            $lastNameTextbox.Text.ToUpper()
            $firstNameTextbox.Text.ToUpper()
            $initialTextbox.Text.ToUpper()
            $edipiTextbox.Text
            $employeeTypeCombobox.SelectedItem.PCC
            'AD' + $adminLevelCodeCombobox.SelectedItem.adminTypeCode
        )
        $CN = ($CNArray | Where-Object {![string]::IsNullOrEmpty($_)}) -join '.'

        $displayNameArray = @(
            $lastNameTextbox.Text.ToUpper() + ','
            $firstNameTextbox.Text.ToUpper()
            $initialTextbox.Text.ToUpper()
            $suffixCombobox.Text
            if($citizenshipTextbox.Text -ne 'US') {$citizenshipTextbox.Text.ToUpper()}
            $titleTextbox.Text.ToUpper()
            $branchCombobox.Text
            $MAJCOMCombobox.SelectedItem.Acronym
            $unitComboBox.Text.ToUpper() + '/' + $officeSymbolTextbox.Text.ToUpper()
            'AD' + $adminLevelCodeCombobox.SelectedItem.adminTypeCode
        )
        $displayName = ($displayNameArray | Where-Object {![string]::IsNullOrEmpty($_)}) -join ' '

        #Create a 'Splat' for the user account
        $adminObject = @{
            name = $CN
            givenName = $firstNameTextbox.Text.ToUpper()
            surname = $lastNameTextbox.Text.ToUpper()
            initials = $initialTextbox.Text.ToUpper()
            employeeID = $edipiTextbox.Text
            displayName = $displayName
            userPrincipalName = $logonNameTextbox.Text
            samAccountName = $edipiTextbox.Text + $employeeTypeCombobox.SelectedItem.PCC  + '.AD' + $adminLevelCodeCombobox.SelectedItem.adminTypeCode
            company = $branchCombobox.Text
            department = $MAJCOMCombobox.SelectedItem.Acronym
            title = $titleTextbox.Text.ToUpper()
            city = $baseNameCombobox.Text
            office = $officeSymbolTextbox.Text.ToUpper()
            organization = $unitComboBox.Text.ToUpper()
            officePhone = $phoneTextbox.Text
            description = $descriptionTextbox.Text
            path = $pathTextbox.Text
            smartcardLogonRequired = $true
            changePasswordAtLogon = $false
            accountNotDelegated = $true
            otherAttributes = $otherAttributes #Add the list of extra attributes that aren't native
        }

        try {
            #try to create the admin and enable
            if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                New-ADUser @adminObject -Server $DC
                Set-ADUser $adminObject.samAccountName -Enabled $true -Server $DC
            } else {
                New-ADUser @adminObject -Server $DC -Credential $credentials
                Set-ADUser $adminObject.samAccountName -Enabled $true -Server $DC -Credential $credentials
            }

            #If expiration date specified, set on the account
            if ($accountExpirationCheckbox.Checked) {
                if($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                    Set-ADUser -Identity $adminObject.samAccountName -AccountExpirationDate $expirationDateTimePicker.Value -Server $DC
                } else {
                    Set-ADUser -Identity $adminObject.samAccountName -AccountExpirationDate $expirationDateTimePicker.Value -Server $DC -Credential $credentials
                }
            }

            #If nothing errors then show a success message
            $Message = "Successfully created:" +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                $displayName +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                "Located:" +
                [System.Environment]::NewLine +
                [System.Environment]::NewLine +
                $pathTextbox.Text
            Show-BetterMessageBox -Message $Message -Title 'Account Created Successfully!' -Buttons OkOnly

            #If groups are requested, try to add the user to the groups
            if ($addGroupsCheckbox.Checked) {
                [Array]$selectedgroups = $groupTreeView.Nodes | Where-Object {$_.Checked -eq $true}
                Add-UserToGroups -selectedgroups $selectedgroups -User $adminObject
            }

            $createAdminForm.Close()
        } catch {
            #Something errored. Let the user know.
            [System.Windows.Forms.MessageBox]::Show("Creating " + $CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
            Write-Log -Message ($_ | Out-String) -Type Error -LogName CreateAdminForm
        }
    }
}

#Show GUI
. (Join-Path $PSScriptRoot 'CreateAdminForm.designer.ps1')
$CreateAdminForm.ShowDialog() 
