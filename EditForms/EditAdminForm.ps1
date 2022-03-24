#requires -version 5
#requires –Modules ActiveDirectory
<#
.SYNOPSIS
  Form used to edit admin accounts to be compliant with MPTO 00-33D-2001
.DESCRIPTION
  Loads the EditAdminForm.designer.ps1 script and allows a user to edit an account by filling in the required fields.
  Must be originally run from Admin-Scripts.ps1
.PARAMETER NOSOverride
    Launches the form with the TreeView at the root of the domain and with all bases selectable in the combobox.
.PARAMETER AdminDistinguishedName
    Allows providing a DN for an admin account and immediately launching to editing.
.INPUTS
  None
.OUTPUTS
  Log file stored in %LocalAppData%\EditAdminForm.log
  Compliant accounts :)
.NOTES
  Version:        1.0
  Author:         Michael Calabrese
  Creation Date:  1/18/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  If running for a base admin
  .\EditAdminForm.ps1

.EXAMPLE
  If running for a NOS/COS admin
  .\EditAdminForm.ps1 -NOSOverride
#>

Param (
    [Switch]$NOSOverride,
    [String]$AdminDistinguishedName
)

#region Functions

Function Populate-Form {
    #Takes information from AD accounts and prefills the form for easy editing

    Param(
        [Parameter(Mandatory)]
        [Microsoft.ActiveDirectory.Management.ADAccount]$adminAccount,
        
        [Microsoft.ActiveDirectory.Management.ADAccount]$userAccount
    )

    if($userAccount){

        if([string]::IsNullOrEmpty($userAccount.Surname)) { $lastNameTextbox.Text = $adminAccount.Surname }
        else { $lastNameTextbox.Text = $userAccount.Surname.Trim() }

        if([string]::IsNullOrEmpty($userAccount.GivenName)) { $firstNameTextbox.Text = $adminAccount.GivenName }
        else { $firstNameTextbox.Text = $userAccount.GivenName.Trim() }

        if([string]::IsNullOrEmpty($userAccount.Initials)) { $initialTextbox.Text = $adminAccount.Initials }
        else { $initialTextbox.Text = $userAccount.Initials.Trim() }

        if([string]::IsNullOrEmpty($userAccount.EmployeeID)) { $edipiTextbox.Text = $adminAccount.EmployeeID }
        else { $edipiTextbox.Text = $userAccount.EmployeeID.Trim() }

        if([string]::IsNullOrEmpty($userAccount.generationQualifier)) { $suffixCombobox.Text = $adminAccount.generationQualifier }
        else { $suffixCombobox.Text = $userAccount.generationQualifier.Trim() }

        if([string]::IsNullOrEmpty($userAccount.extensionAttribute4)) { $citizenshipTextbox.Text = $adminAccount.extensionAttribute4 }
        else { $citizenshipTextbox.Text = $userAccount.extensionAttribute4.Trim() }

        if([string]::IsNullOrEmpty($userAccount.description)) { $descriptionTextBox.Text = $adminAccount.description }
        else { $descriptionTextBox.Text = $userAccount.description.Trim() }

        if([string]::IsNullOrEmpty($userAccount.EmployeeType)) { $employeeTypeCombobox.SelectedIndex = $employeeTypeCombobox.Items.PCC.IndexOf($adminAccount.EmployeeType) }
        else { $employeeTypeCombobox.SelectedIndex = $employeeTypeCombobox.Items.PCC.IndexOf($userAccount.EmployeeType.Trim()) }

        if([string]::IsNullOrEmpty($userAccount.personalTitle)) { $titleTextbox.Text = $adminAccount.personalTitle }
        else { $titleTextbox.Text = $userAccount.personalTitle.Trim() }

        if([string]::IsNullOrEmpty($userAccount.payPlan)) { $payPlanCombobox.SelectedItem = $adminAccount.payPlan }
        else { $payPlanCombobox.SelectedItem = $userAccount.payPlan.Trim() }

        if([string]::IsNullOrEmpty($userAccount.payGrade)) { $payGradeCombobox.SelectedItem = $adminAccount.payGrade }
        else { $payGradeCombobox.SelectedItem = $userAccount.payGrade.Trim() }

        if([string]::IsNullOrEmpty($userAccount.company)) { $branchCombobox.SelectedItem = $adminAccount.company }
        else { $branchCombobox.SelectedItem = $userAccount.company.Trim() }

        if([string]::IsNullOrEmpty($userAccount.department)) { $MAJCOMCombobox.SelectedIndex = $MAJCOMCombobox.Items.Acronym.IndexOf($adminAccount.department) }
        else { $MAJCOMCombobox.SelectedIndex = $MAJCOMCombobox.Items.Acronym.IndexOf($userAccount.department.Trim()) }

        if([string]::IsNullOrEmpty($userAccount.l)) { $baseNameCombobox.SelectedIndex = $baseNameCombobox.Items.Name.IndexOf($adminAccount.l) }
        else { $baseNameCombobox.SelectedIndex = $baseNameCombobox.Items.Name.IndexOf($userAccount.l.Trim()) }

        if([string]::IsNullOrEmpty($userAccount.o)) { $unitComboBox.Text = $adminAccount.o }
        else { $unitComboBox.Text = $userAccount.o.Trim() }

        if([string]::IsNullOrEmpty($userAccount.physicalDeliveryOfficeName)) { $officeSymbolTextbox.Text = $adminAccount.physicalDeliveryOfficeName }
        else { $officeSymbolTextbox.Text = $userAccount.physicalDeliveryOfficeName.Trim() }

        if([string]::IsNullOrEmpty($userAccount.OfficePhone)) { $phoneTextbox.Text = $adminAccount.OfficePhone }
        else { $phoneTextbox.Text = $userAccount.OfficePhone.Trim() }

    } else {

        if(![string]::IsNullOrEmpty($adminAccount.Surname)) { $lastNameTextbox.Text = $adminAccount.Surname.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.GivenName)) { $firstNameTextbox.Text = $adminAccount.GivenName.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.Initials)) { $initialTextbox.Text = $adminAccount.Initials.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.EmployeeID)) { $edipiTextbox.Text = $adminAccount.EmployeeID.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.generationQualifier)) { $suffixCombobox.SelectedItem = $adminAccount.generationQualifier.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.extensionAttribute4)) { $citizenshipTextbox.Text = $adminAccount.extensionAttribute4.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.description)) { $descriptionTextBox.Text = $adminAccount.description.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.EmployeeType)) { $employeeTypeCombobox.SelectedIndex = $employeeTypeCombobox.Items.PCC.IndexOf($adminAccount.EmployeeType.Trim()) }
        if(![string]::IsNullOrEmpty($adminAccount.personalTitle)) { $titleTextbox.Text = $adminAccount.personalTitle.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.payPlan)) { $payPlanCombobox.SelectedItem = $adminAccount.payPlan.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.payGrade)) { $payGradeCombobox.SelectedItem = $adminAccount.payGrade.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.company)) { $branchCombobox.SelectedItem = $adminAccount.company.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.department)) { $MAJCOMCombobox.SelectedIndex = $MAJCOMCombobox.Items.Acronym.IndexOf($adminAccount.department.Trim()) }
        if(![string]::IsNullOrEmpty($adminAccount.l)) { $baseNameCombobox.SelectedIndex = $baseNameCombobox.Items.Name.IndexOf($adminAccount.l.Trim()) }
        if(![string]::IsNullOrEmpty($adminAccount.o)) { $unitComboBox.Text = $adminAccount.o.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.physicalDeliveryOfficeName)) { $officeSymbolTextbox.Text = $adminAccount.physicalDeliveryOfficeName.Trim() }
        if(![string]::IsNullOrEmpty($adminAccount.OfficePhone)) { $phoneTextbox.Text = $adminAccount.OfficePhone.Trim() }
    }

    #Try to capture the Admin Level code and populate the admin level combobox
    if ($adminAccount.CN -match 'AD([A-Z])$') {
        $AdminLevel = $Matches[1]
    } elseif ($adminAccount.DisplayName -match 'AD([A-Z])$') {
        $AdminLevel = $Matches[1]
    } elseif ($adminAccount.samAccountName -match 'AD([A-Z])$') {
        $AdminLevel = $Matches[1]
    } elseif ($adminAccount.UserPrincipalName.split('@')[0] -match 'AD([A-Z])$') {
        $AdminLevel = $Matches[1]
    }

    if ($AdminLevel) {
        $adminLevelCodeCombobox.SelectedIndex = $adminLevelCodeCombobox.Items.adminTypeCode.IndexOf($AdminLevel)
    }

    #If account has expiration date. Check the box and set the date.
    if (![string]::IsNullOrEmpty($adminAccount.AccountExpirationDate)) {
        $accountExpirationCheckbox.Checked = $true
        $expirationDateTimePicker.Value = $adminAccount.AccountExpirationDate
    }

    #Set the enabled and disabled radio buttons according to the account.
    if (!$adminAccount.Enabled) {
        $enabledLabel.Text = 'Enabled: False'
    }

    #If the account is locked, allow the admin to unlock it.
    if ($adminAccount.LockedOut) {
        $lockedLabel.Text = 'Locked: True'
        $unlockLinkLabel.Enabled = $true
    }

    #Check the account validation status
    if (![string]::IsNullOrEmpty($adminAccount.extensionAttribute7)) {
        try {
            $validationDate=[datetime]::ParseExact($adminAccount.extensionAttribute7.Split(' ')[2], 'yyyyMMdd', $null)
            $validationLabel.Text = 'Validated: True' + [System.Environment]::NewLine + $adminAccount.extensionAttribute7
        } catch {
            #No properly formatted validation date
            if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                $adminAccount | Set-ADUser -Clear extensionAttribute7 -Server $DC
            } else {
                $adminAccount | Set-ADUser -Clear extensionAttribute7 -Server $DC -Credential $credentials
            }
            Write-Log -Message ("Removing extensionAttribute7: " + $adminAccount.extensionAttribute7 + " from account: " + $adminAccount.CN) -Type Warning -LogName EditAdminForm
        }
    }

    #Hide search panel and show the other panels
    $SearchGroupBox.Visible = $false
    $savePanel.Visible = $true
    $accountActionGroupbox.Visible = $true
    $accountInfoGroupBox.Visible = $true
    $employmentInfoGroupBox.Visible = $true
    $adminInfoGroupBox.Visible = $true
}

Function Find-User {
    #Try to find user to update admin

    Param(
        [Parameter(Mandatory)]
        [String]$userfilter
    )

    try {
        if($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            [array]$userInfo = Get-ADUser -LDAPFilter $userfilter -Properties * -SearchBase "OU=Bases,$($Domain.DistinguishedName)" -Server $DC
        } else {
            [array]$userInfo = Get-ADUser -LDAPFilter $userfilter -Properties * -SearchBase "OU=Bases,$($Domain.DistinguishedName)" -Server $DC -Credential $credentials
        }

        Switch($userInfo.count) {
            0 {
                #No match found, throw error to handle later
                throw "No User Found"
            }
            1 {
                #Pull the user data into the form, this is the intended case
                $Message = "Found a user's regular account matching the role: " + $userInfo.CN + [System.Environment]::NewLine +
                    [System.Environment]::NewLine + 'Certain attributes from the regular account will be used to update the admin account. These attributes are shown below.' +
                    [System.Environment]::NewLine +
                    [System.Environment]::NewLine + 'First Name: ' + $userInfo.GivenName +
                    [System.Environment]::NewLine + 'Last Name: ' + $userInfo.Surname +
                    [System.Environment]::NewLine + 'Middle Initial: ' + $userInfo.Initials +
                    [System.Environment]::NewLine + 'Generational Qualifier: ' + $userInfo.generationQualifier +
                    [System.Environment]::NewLine + 'DoD Component (Branch): ' + $userInfo.Company +
                    [System.Environment]::NewLine + 'Dod Sub-Component (MAJCOM): ' + $userInfo.Department +
                    [System.Environment]::NewLine + 'Base: ' + $userInfo.l +
                    [System.Environment]::NewLine + 'Organization: ' + $userInfo.o +
                    [System.Environment]::NewLine + 'Office Symbol: ' + $userInfo.physicalDeliveryOfficeName +
                    [System.Environment]::NewLine + 'DSN: ' + $userInfo.officePhone
                Show-BetterMessageBox -Message $Message -Title 'Update Administrator Account Properties' -Buttons OkOnly
                Populate-Form -adminAccount $script:adminInfo -userAccount $userInfo[0]
            }
            Default {
                #Warn user that multiple matches found, populate form with admin account info
                [System.Windows.Forms.MessageBox]::Show('Multiple users found for admin ' + $script:AdminInfo.Name + ': ' + [System.Environment]::NewLine +
                    ($userInfo -join "`n"),"Too many users found!")
                Populate-Form -adminAccount $script:adminInfo -userAccount $userInfo
            }
        }
    } catch {
        if($_.Exception.Message -eq 'No User Found') {
            #Can't find a user to update admin with, warn user and populate with admin info
            [System.Windows.Forms.MessageBox]::Show("Unable to find a user that matches this admin's role.","Failed to Find User!")
            Write-Log -Message ("Unable to find a user with filter: " + $userfilter) -Type Info -LogName EditAdminForm
            Populate-Form -adminAccount $script:adminInfo
        } else {
            #Something else fails while searching for user, try to continue but warn the user
            [System.Windows.Forms.MessageBox]::Show('Searching for user matching ' + $script:AdminInfo.Name + " failed with the following error: " + $_.exception.message,"Error Occurred!")
            Write-Log -Message ($_ | Out-String) -Type Error -LogName EditAdminForm
            Populate-Form -adminAccount $script:adminInfo
        }
    }
}

#endregion Functions

#This event is triggered when the form loads
$form_Load = {
	if ($NOSOverride) {
        $script:searchBase = "OU=Administrative Accounts,OU=Administration,$($Domain.DistinguishedName)" #Set the searchbase for the admin searcher to the 'Administration' OU.
        $baseNameCombobox.Items.AddRange($basenames) #Add all the bases to the combobox.
        $baseNameCombobox.DropDownStyle = 'DropDown' #Allows NOS admins to type in a base name
    } else {
        $baseOU = $basenames | Where-Object {$_.Name -eq $userLocation} #Set the baseOU var equal to the base that matches the user's l attrib.
        $baseNameCombobox.Items.AddRange($baseOU) #Add the user's base to the basename combobox
        $baseNameCombobox.SelectedIndex=0 #Select the user's base because there's no other choices anyway.
        $script:searchBase = "OU=$userLocation,OU=Administrative Accounts,OU=Administration,$($Domain.DistinguishedName)" #Set the searchbase for the admin searcher to the user's base
    }
    #Executes code for both base and NOS admins
    $MAJCOMList = Get-MAJCOMList #Pulls list of MAJCOMS from the 'Bases' OU. This is assuming the list is in the same format as NIPR.
    $MAJCOMCombobox.Items.AddRange($MAJCOMList) #Adds the MAJCOMS to the MAJCOMCombobox
    $branchCombobox.Items.AddRange($Branches) #Add the array of Branches to the branchCombobox
    $payPlanCombobox.Items.AddRange($PayPlans) #Add the array of payplans to the payplanCombobox
    $suffixCombobox.Items.AddRange($SuffixList) #Add the array of suffixs to the suffixCombobox
    $employeeTypeCombobox.DataSource = $eTypeArray #Adds the employee types to the employeeTypeCombobox
    $adminLevelCodeCombobox.DataSource = $AdmTypeArray #Add the Admin Types to the combobox
    $DcBox.Text = $DC #Set the DC name

    #If a DN is passed as a param, try to find an account and populate form.
    #Not 100% tested.
    if ($AdminDistinguishedName) {
        try {
            if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                [array]$script:AdminInfo = Get-ADUser -Identity $AdminDistinguishedName -Properties *  -Server $DC
            } else {
                [array]$script:AdminInfo = Get-ADUser -Identity $AdminDistinguishedName -Properties *  -Server $DC -Credential $credentials
            }
            
            if($AdminInfo.count -ne 1) {
                throw "No Account Found"
            } else {
                Populate-Form -adminAccount $AdminInfo
            }
            
        } catch {
            if($_.Exception.Message -eq "No Account Found") {
                #Failed to find account associated with the passed DN
                [System.Windows.Forms.MessageBox]::Show($AdminDistinguishedName + " was passed to the script but failed to map to an account.","Failed to Find Account!")
            } else {
                #If something else failed log it
                Write-Log -Message ($_ | Out-String) -Type Error -LogName EditAdminForm
                Exit
            }
        }
    }
}

#This event is triggered when the user selects a base in the combobox.
$baseNameCombobox_SelectedIndexChange = {
    #Clear the unitCombobox and add the units attached to the current base.
    $unitCombobox.Items.Clear() 
    [array]$units=$baseNameCombobox.SelectedItem.businessCategory
    $unitCombobox.Items.AddRange($units)
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
        Get-ADUser -LDAPFilter $filter -SearchBase $searchBase -Server $DC | Select-Object Name,DistinguishedName | % {
            $resultDataGridView.Rows.Add($_.Name, $_.DistinguishedName, 'Select')
        }
    } else {
        Get-ADUser -LDAPFilter $filter -SearchBase $searchBase -Server $DC -Credential $credentials | Select-Object Name,DistinguishedName | % {
            $resultDataGridView.Rows.Add($_.Name, $_.DistinguishedName, 'Select')
        }
    }
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
		$SelectedAdmin = $resultDataGridView[1, $_.RowIndex].Value

        #Find the admin account based on the selection in the dataGridView
        if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            $script:AdminInfo = Get-ADUser -Identity $SelectedAdmin -Properties *  -Server $DC
        } else {
            $script:AdminInfo = Get-ADUser -Identity $SelectedAdmin -Properties *  -Server $DC -Credential $credentials
        }

        if ($adminInfo.CN -match '(1\d{9}\.[a-z])\.AD[a-z]$') {
            $gigID=$matches[1].Replace('.','')
            Find-User -userfilter "(gigID=$gigID)"
        } else {
            #Improperly formatted CN. Unable to search user.
            [System.Windows.Forms.MessageBox]::Show("Admin's CN is not properly formatted. Unable to search for matching user.","Failed to Find User!")
            Populate-Form -adminAccount $adminInfo
        }
	}
}

#if the user checks the box this shows the dateTimePicker for account expiration
$accountExpirationCheckbox_CheckedChanged = {
    if ($this.Checked){
        $expirationDateTimePicker.Visible = $true
    } else {
        $expirationDateTimePicker.Visible = $false
    }
}

#Triggered when the user clicks enable/disable account
$enableLinkLabel_LinkClicked = {
    Switch($enabledLabel.Text) {
        'Enabled: True' {
            try {
                if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                    $script:adminInfo | Disable-ADAccount -Server $DC
                } else {
                    $script:adminInfo | Disable-ADAccount -Server $DC -Credential $credentials
                }
                $enabledLabel.Text = 'Enabled: False'
                #If nothing errors then show a success message
                [System.Windows.Forms.MessageBox]::Show('Successfully Disabled account: ' + $script:adminInfo.CN, 'Disable Success!')
            } catch {
                #Something errored. Let the user know.
                [System.Windows.Forms.MessageBox]::Show('Disabling account: ' + $script:adminInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
                Write-Log -Message ($_ | Out-String) -Type Error -LogName EditAdminForm
            }
        }

        'Enabled: False' {
            try {
                if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                    $script:adminInfo | Enable-ADAccount -Server $DC
                } else {
                    $script:adminInfo | Enable-ADAccount -Server $DC -Credential $credentials
                }
                $enabledLabel.Text = 'Enabled: True'
                #If nothing errors then show a success message
                [System.Windows.Forms.MessageBox]::Show('Successfully Enabled account: ' + $script:adminInfo.CN, 'Enable Success!')
            } catch {
                #Something errored. Let the user know.
                [System.Windows.Forms.MessageBox]::Show('Enabling account: ' + $script:adminInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
                Write-Log -Message ($_ | Out-String) -Type Error -LogName EditAdminForm
            }
        }
    }
}

#Triggered when the user clicks unlock account
$unlockLinkLabel_LinkClicked = {
     try {
        if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            $script:AdminInfo | Unlock-ADAccount -Server $DC
        } else {
            $script:AdminInfo | Unlock-ADAccount -Server $DC -Credential $credentials
        }
        $lockedLabel.Text = 'Locked: False'
        $unlockLinkLabel.Enabled = $false
        #If nothing errors then show a success message
        [System.Windows.Forms.MessageBox]::Show('Successfully unlocked account: ' + $script:AdminInfo.CN, 'Unlock Success!')
    } catch {
        #Something errored. Let the user know.
        [System.Windows.Forms.MessageBox]::Show('Unlocking account: ' + $script:AdminInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
        Write-Log -Message ($_ | Out-String) -Type Error -LogName EditAdminForm
    }
}

#Triggered when the user clicks validate account
$validateLinkLabel_LinkClicked = {
    try{
        if($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            $IACN = Get-ADUser $env:USERNAME -Properties CN -Server $DC | Select-Object -ExpandProperty CN
            $validationStatement = "Acct Validated " + (Get-Date -Format 'yyyyMMdd') + " by " + $IACN
            $script:AdminInfo | Set-ADUser -Add @{extensionAttribute7 = $validationStatement} -Replace @{extensionAttribute7 = $validationStatement} -Server $DC
        } else {
            $IACN = Get-ADUser $credentials.UserName -Properties CN -Server $DC -Credential $credentials | Select-Object -ExpandProperty CN
            $validationStatement = "Acct Validated " + (Get-Date -Format 'yyyyMMdd') + " by " + $IACN
            $script:AdminInfo | Set-ADUser -Add @{extensionAttribute7 = $validationStatement} -Replace @{extensionAttribute7 = $validationStatement} -Server $DC -Credential $credentials
        }
        $validationLabel.Text = 'Validated: True' + [System.Environment]::NewLine + $validationStatement
        #If nothing errors then show a success message
        [System.Windows.Forms.MessageBox]::Show('Successfully validated account: ' + $script:AdminInfo.CN, 'Validation Success!')
    } catch {
        #Something errored. Let the user know.
        [System.Windows.Forms.MessageBox]::Show('Validating account: ' + $script:AdminInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
        Write-Log -Message ($_ | Out-String) -Type Error -LogName EditAdminForm
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

$editButton_Click = {
    if($EditAdminForm.ValidateChildren()) {

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
        
        #Hash Table of mandatory Attributes
        $updatedAttributes = @{
            company = $branchCombobox.Text
            department = $MAJCOMCombobox.SelectedItem.Acronym
            description = $descriptionTextbox.Text
            displayName = $displayName
            employeeID = $edipiTextbox.Text
            employeeType = 'Z'
            extensionAttribute4 = $citizenshipTextbox.Text.ToUpper()
            givenName = $firstNameTextbox.Text.ToUpper()
            l = $baseNameCombobox.Text
            o = $unitComboBox.Text.ToUpper()
            physicalDeliveryOfficeName = $officeSymbolTextbox.Text.ToUpper()
            payGrade = $payGradeCombobox.Text
            payPlan = $payPlanCombobox.Text
            personalTitle = $titleTextbox.Text.ToUpper()
            samAccountName = $edipiTextbox.Text + '.AD' + $adminLevelCodeCombobox.SelectedItem.adminTypeCode
            sn = $lastNameTextbox.Text.ToUpper()
            telephoneNumber = $phoneTextbox.Text
        }

        #Initiate Array of attributes to clear
        $clearAttributes=@()

         #Evaluate suffix to see if it's populated, if it is, add to updatedAttributes
        if ([string]::IsNullOrEmpty($suffixCombobox.Text)){
            $clearAttributes += 'generationQualifier'
        } else {
            $updatedAttributes += @{generationQualifier = $suffixCombobox.Text}
        }

        #Evaluate initials to see if it's populated, if it is, add to updatedAttributes
        if ([string]::IsNullOrEmpty($initialTextbox.Text)){
            $clearAttributes += 'initials'
        } else {
            $updatedAttributes += @{initials = $initialTextbox.Text.ToUpper()}
        }
       
        #Evaluate account expiration
        if ($accountExpirationCheckbox.Checked) {
            $accountExpirationSetter = $expirationDateTimePicker.Value
        } else {
            $accountExpirationSetter = $null
        }

        try {
            #Attempt to edit the account, AccountExpirationDate is set on it's own because 
            #it's a nullable attribute and it's the easiest way to clear it
            if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                $newAdminInfo = Set-ADUser -Identity $script:adminInfo.SamAccountName `
                    -AccountExpirationDate $accountExpirationSetter `
                    -AccountNotDelegated $true `
                    -Add $updatedAttributes `
                    -Clear $clearAttributes `
                    -Replace $updatedAttributes `
                    -Server $DC `
                    -PassThru
            } else {
                $newAdminInfo = Set-ADUser -Identity $script:adminInfo.SamAccountName `
                    -AccountExpirationDate $accountExpirationSetter `
                    -AccountNotDelegated $true `
                    -Add $updatedAttributes `
                    -Clear $clearAttributes `
                    -Replace $updatedAttributes `
                    -Server $DC `
                    -PassThru `
                    -Credential $credentials
            }

            #This portion renames the account if the names don't match
            if ($CN -ne $script:adminInfo.CN) {
                if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                    $newAdminInfo | Rename-ADObject -NewName $CN -Server $DC
                } else {
                    $newAdminInfo | Rename-ADObject -NewName $CN -Server $DC -Credential $credentials
                }
            }

            #If nothing errors then show a success message
            [System.Windows.Forms.MessageBox]::Show("Successfully edited: " + $newAdminInfo.Name,'Account Edited Successfully!')
            $EditAdminForm.Close()
        } catch {
            #Something errored. Let the user know.
            [System.Windows.Forms.MessageBox]::Show("Editing " + $script:adminInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
            Write-Log -Message ($_ | Out-String) -Type Error -LogName EditAdminForm
            Write-Log -Message ($updatedAttributes | Out-String) -Component updatedAttributes -Type Error -LogName EditAdminForm
        }
    }
}

#Show GUI
. (Join-Path $PSScriptRoot 'EditAdminForm.designer.ps1')
$EditAdminForm.ShowDialog()