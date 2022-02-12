#requires -version 5
#requires –Modules ActiveDirectory
<#
.SYNOPSIS
  Form used to edit user accounts to be compliant with MPTO 00-33D-2001
.DESCRIPTION
  Loads the EditUserForm.designer.ps1 script and allows a user to edit an account by filling in the required fields.
  Must be originally run from Admin-Scripts.ps1
.PARAMETER NOSOverride
    Launches the form with the TreeView at the root of the domain and with all bases selectable in the combobox.
.PARAMETER UserDistinguishedName
    Allows providing a DN for a user account and immediately launching to editing.
.INPUTS
  None
.OUTPUTS
  Log file stored in %LocalAppData%\EditUserForm.log
  Compliant accounts :)
.NOTES
  Version:        1.0
  Author:         Michael Calabrese
  Creation Date:  1/18/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  If running for a base admin
  .\EditUserForm.ps1

.EXAMPLE
  If running for a NOS/COS admin
  .\EditUserForm.ps1 -NOSOverride
#>

Param (
	[Switch]$NOSOverride,
	[String]$UserDistinguishedName
)

#region Functions
Function Populate-Form {
    #Takes information from AD accounts and prefills the form for easy editing

    Param(
        [Microsoft.ActiveDirectory.Management.ADAccount]$Account
    )

    if(![string]::IsNullOrEmpty($adminAccount.Surname)) { $lastNameTextbox.Text = $Account.Surname.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.GivenName)) { $firstNameTextbox.Text = $Account.GivenName.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.Initials)) { $initialTextbox.Text = $Account.Initials.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.EmployeeID)) { $edipiTextbox.Text = $Account.EmployeeID.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.generationQualifier)) { $suffixCombobox.SelectedItem = $Account.generationQualifier.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.extensionAttribute4)) { $citizenshipTextbox.Text = $Account.extensionAttribute4.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.description)) { $descriptionTextBox.Text = $Account.description.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.EmployeeType)) { $employeeTypeCombobox.SelectedIndex = $employeeTypeCombobox.Items.PCC.IndexOf($Account.EmployeeType.Trim()) }
    if(![string]::IsNullOrEmpty($adminAccount.Title)) { $titleTextbox.Text = $Account.Title.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.payPlan)) { $payPlanCombobox.SelectedItem = $Account.payPlan.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.payGrade)) { $payGradeCombobox.SelectedItem = $Account.payGrade.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.company)) { $branchCombobox.SelectedItem = $Account.company.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.department)) { $MAJCOMCombobox.SelectedIndex = $MAJCOMCombobox.Items.Acronym.IndexOf($Account.department.Trim()) }
    if(![string]::IsNullOrEmpty($adminAccount.l)) { $baseNameCombobox.SelectedIndex = $baseNameCombobox.Items.Name.IndexOf($Account.l.Trim()) }
    if(![string]::IsNullOrEmpty($adminAccount.o)) { $unitComboBox.Text = $Account.o.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.physicalDeliveryOfficeName)) { $officeSymbolTextbox.Text = $Account.physicalDeliveryOfficeName.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.OfficePhone)) { $phoneTextbox.Text = $Account.OfficePhone.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.mail)) { $emailTextbox.Text = $Account.mail.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.streetAddress)) { $streetTextbox.Text = $Account.streetAddress.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.l)) { $cityTextbox.Text = $Account.l.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.state)) { $stateTextbox.Text = $Account.state.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.postalCode)) { $zipTextbox.Text = $Account.postalCode.Trim() }
    if(![string]::IsNullOrEmpty($adminAccount.country)) { $countryTextbox.Text = $Account.country.Trim() }

    #If account has expiration date. Check the box and set the date.
    if (![string]::IsNullOrEmpty($Account.AccountExpirationDate)) {
        $accountExpirationCheckbox.Checked = $true
        $expirationDateTimePicker.Value = $Account.AccountExpirationDate
    }

    #If account has dormant date. Check the box and set the date.
    if (![string]::IsNullOrEmpty($Account.extensionAttribute6)) {
        try {
            $dormantStatusDate=[datetime]::ParseExact($Account.extensionAttribute6.Split(' ')[2], 'yyyyMMdd', $null)
            $dormantLabel.Text = 'Dormant: True'
            $dormantDate.Visible = $true
            $dormantDate.Text = $Account.extensionAttribute6
            $clearDormantStatusLinkLabel.Visible = $true
        } catch {
            #No properly formatted dormant date, clear it.
            if($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                $Account | Set-ADUser -Clear extensionAttribute6 -Server $DC
            } else {
                $Account | Set-ADUser -Clear extensionAttribute6 -Server $DC -Credential $credentials
            }
            Write-Log -Message ("Removing extensionAttribute6: " + $Account.extensionAttribute6 + " from account: " + $Account.CN) -Type Warning -LogName EditUserForm
        }
    }

    #Defaults to Enabled: True, if account is disabled, set to Enabled: False
    if (!$Account.Enabled) {
        $enabledLabel.Text = 'Enabled: False'
    }

    #If the account is locked, allow the user to unlock it.
    if ($Account.LockedOut) {
        $lockedLabel.Text = 'Locked: True'
        $unlockLinkLabel.Enabled = $true
    }

    #Hide the searchbox and show the rest of the form
    $SearchGroupBox.Visible = $false
    $savePanel.Visible = $true
    $accountActionGroupbox.Visible = $true
    $locationInfoGroupbox.Visible = $true
    $contactInfoGroupbox.Visible = $true
    $employmentInfoGroupBox.Visible = $true
    $userInfoGroupbox.Visible = $true
}

Function Show-DormantStatusDialog {
    #Show a popup to allow user to select dormant status options

    [void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
    [void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
    $dormantStatusDialog = New-Object -TypeName System.Windows.Forms.Form
    [System.Windows.Forms.Label]$label1 = $null
    [System.Windows.Forms.Label]$dormantTilLabel = $null
    [System.Windows.Forms.ComboBox]$dormantReasonCombobox = $null
    [System.Windows.Forms.DateTimePicker]$dormantDateTimePicker = $null
    [System.Windows.Forms.Button]$submitButton = $null
    [System.Windows.Forms.Button]$cancelButton = $null
    [System.Windows.Forms.Button]$button1 = $null
    function InitializeComponent
    {
        $label1 = (New-Object -TypeName System.Windows.Forms.Label)
        $dormantTilLabel = (New-Object -TypeName System.Windows.Forms.Label)
        $dormantReasonCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
        $dormantDateTimePicker = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
        $submitButton = (New-Object -TypeName System.Windows.Forms.Button)
        $cancelButton = (New-Object -TypeName System.Windows.Forms.Button)
        $dormantStatusDialog.SuspendLayout()
        #
        #label1
        #
        $label1.AutoSize = $true
        $label1.Dock = [System.Windows.Forms.DockStyle]::Top
        $label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
        $label1.Name = [System.String]'label1'
        $label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]376,[System.Int32]20))
        $label1.TabIndex = [System.Int32]0
        $label1.Text = [System.String]'Select reason for dormant status and date of return.'
        #
        #dormantTilLabel
        #
        $dormantTilLabel.AutoSize = $true
        $dormantTilLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]100,[System.Int32]47))
        $dormantTilLabel.Name = [System.String]'dormantTilLabel'
        $dormantTilLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]20,[System.Int32]20))
        $dormantTilLabel.TabIndex = [System.Int32]13
        $dormantTilLabel.Text = [System.String]'til'
        #
        #dormantReasonCombobox
        #
        $dormantReasonCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
        $dormantReasonCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
        $dormantReasonCombobox.FormattingEnabled = $true
        $dormantReasonCombobox.Items.AddRange([System.Object[]]@([System.String]'TDY',[System.String]'LVE'))
        $dormantReasonCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]40))
        $dormantReasonCombobox.Name = [System.String]'dormantReasonCombobox'
        $dormantReasonCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]80,[System.Int32]28))
        $dormantReasonCombobox.TabIndex = [System.Int32]12
        #
        #dormantDateTimePicker
        #
        $dormantDateTimePicker.MaxDate = (Get-Date).AddYears(1)
        $dormantDateTimePicker.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]130,[System.Int32]40))
        $dormantDateTimePicker.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]300,[System.Int32]26))
        $dormantDateTimePicker.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]300,[System.Int32]26))
        $dormantDateTimePicker.Name = [System.String]'dormantDateTimePicker'
        $dormantDateTimePicker.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]300,[System.Int32]26))
        $dormantDateTimePicker.TabIndex = [System.Int32]11
        #
        #submitButton
        #
        $submitButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

        $submitButton.DialogResult = [System.Windows.Forms.DialogResult]::Yes
        $submitButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
        $submitButton.ForeColor = [System.Drawing.Color]::Black
        $submitButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]80))
        $submitButton.Name = [System.String]'submitButton'
        $submitButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]33))
        $submitButton.TabIndex = [System.Int32]14
        $submitButton.Text = [System.String]'Submit'
        $submitButton.UseVisualStyleBackColor = $false
        #
        #cancelButton
        #
        $cancelButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

        $cancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
        $cancelButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
        $cancelButton.ForeColor = [System.Drawing.Color]::Black
        $cancelButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]110,[System.Int32]80))
        $cancelButton.Name = [System.String]'cancelButton'
        $cancelButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]33))
        $cancelButton.TabIndex = [System.Int32]15
        $cancelButton.Text = [System.String]'Cancel'
        $cancelButton.UseVisualStyleBackColor = $false
        #
        #dormantStatus
        #
        $dormantStatusDialog.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]79)),([System.Int32]([System.Byte][System.Byte]93)),([System.Int32]([System.Byte][System.Byte]117)))

        $dormantStatusDialog.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]439,[System.Int32]121))
        $dormantStatusDialog.Controls.Add($cancelButton)
        $dormantStatusDialog.Controls.Add($submitButton)
        $dormantStatusDialog.Controls.Add($dormantTilLabel)
        $dormantStatusDialog.Controls.Add($dormantReasonCombobox)
        $dormantStatusDialog.Controls.Add($dormantDateTimePicker)
        $dormantStatusDialog.Controls.Add($label1)
        $dormantStatusDialog.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12))
        $dormantStatusDialog.ForeColor = [System.Drawing.Color]::White
        $dormantStatusDialog.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
        $dormantStatusDialog.Name = [System.String]'dormantStatus'
        $dormantStatusDialog.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
        $dormantStatusDialog.ShowIcon = $false
        $dormantStatusDialog.ResumeLayout($false)
        $dormantStatusDialog.PerformLayout()
        Add-Member -InputObject $dormantStatusDialog -Name base -Value $base -MemberType NoteProperty
        Add-Member -InputObject $dormantStatusDialog -Name label1 -Value $label1 -MemberType NoteProperty
        Add-Member -InputObject $dormantStatusDialog -Name dormantTilLabel -Value $dormantTilLabel -MemberType NoteProperty
        Add-Member -InputObject $dormantStatusDialog -Name dormantReasonCombobox -Value $dormantReasonCombobox -MemberType NoteProperty
        Add-Member -InputObject $dormantStatusDialog -Name dormantDateTimePicker -Value $dormantDateTimePicker -MemberType NoteProperty
        Add-Member -InputObject $dormantStatusDialog -Name submitButton -Value $submitButton -MemberType NoteProperty
        Add-Member -InputObject $dormantStatusDialog -Name cancelButton -Value $cancelButton -MemberType NoteProperty
        Add-Member -InputObject $dormantStatusDialog -Name button1 -Value $button1 -MemberType NoteProperty
    }
    . InitializeComponent

    $result = $dormantStatusDialog.ShowDialog()

    if($result -eq 'Yes') {
        $dormantStatement = $dormantReasonCombobox.Text + ' til ' + $dormantDateTimePicker.Value.ToString('yyyyMMdd')
        Return $dormantStatement
    } else {
        Return 'Cancel'
    }
}
#endregion Functions

$form_Load = {
	if ($NOSOverride) {
        $script:searchBase = "OU=Bases,$($Domain.DistinguishedName)" #Set the searchbase for the admin searcher to the 'Administration' OU.
        $baseNameCombobox.Items.AddRange($basenames) #Add all the bases to the combobox.
        $baseNameCombobox.DropDownStyle = 'DropDown' #Allows NOS admins to type in a base name
    } else {
        $baseOU = $basenames | Where-Object {$_.Name -eq $userLocation} #Set the baseOU var equal to the base that matches the user's l attrib.
        $baseNameCombobox.Items.AddRange($baseOU) #Add the user's base to the basename combobox
        $baseNameCombobox.SelectedIndex=0 #Select the user's base because there's no other choices anyway.
        $script:searchBase = "OU=$userLocation,OU=Bases,$($Domain.DistinguishedName)" #Set the searchbase for the admin searcher to the user's base
    }
    #Executes code for both base and NOS admins
    $MAJCOMList = Get-MAJCOMList #Pulls list of MAJCOMS from the 'Bases' OU. This is assuming the list is in the same format as NIPR.
    $MAJCOMCombobox.Items.AddRange($MAJCOMList) #Adds the MAJCOMS to the MAJCOMCombobox
    $branchCombobox.Items.AddRange($Branches) #Add the array of Branches to the branchCombobox
    $payPlanCombobox.Items.AddRange($PayPlans) #Add the array of payplans to the payplanCombobox
    $suffixCombobox.Items.AddRange($SuffixList) #Add the array of suffixs to the suffixCombobox
    $employeeTypeCombobox.DataSource = $eTypeArray #Adds the employee types to the employeeTypeCombobox
    $DcBox.Text = $DC #Set the DC name

    #If a DN is passed as a param, try to find an account and populate form.
    #Not 100% tested.
    if ($UserDistinguishedName) {
        try {
            if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                [array]$script:userInfo = Get-ADUser -Identity $UserDistinguishedName -Properties *  -Server $DC
            } else {
                [array]$script:userInfo = Get-ADUser -Identity $UserDistinguishedName -Properties *  -Server $DC -Credential $credentials
            }

            if($userInfo.count -ne 1) {
                throw "No Account Found"
            } else {
                Populate-Form $userInfo
            }

        } catch {
            if($_.Exception.Message -eq "No Account Found") {
                #Failed to find account associated with the passed DN
                [System.Windows.Forms.MessageBox]::Show($UserDistinguishedName + " was passed to the script but failed to map to an account.","Failed to Find Account!")
            } else {
                #If something else failed log it
                Write-Log -Message ($_ | Out-String) -Type Error -LogName EditUserForm
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
        Get-ADUser -LDAPFilter $filter -SearchBase $searchBase -Server $DC | Select-Object Name,DistinguishedName | ForEach-Object {
            $resultDataGridView.Rows.Add($_.Name, $_.DistinguishedName, 'Select')
        }
    } else {
        Get-ADUser -LDAPFilter $filter -SearchBase $searchBase -Server $DC -Credential $credentials | Select-Object Name,DistinguishedName | ForEach-Object {
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

#Event triggered when the searchbox results are selected
$resultDataGridView_CellContentClick = {
    if ($_.RowIndex -ge 0 -and $_.ColumnIndex -eq 2) {
		$SelectedUser = $resultDataGridView[1, $_.RowIndex].Value

        #Find the admin account based on the selection in the dataGridView
        if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            $script:userInfo = Get-ADUser -Identity $SelectedUser -Properties * -Server $DC
        } else {
            $script:userInfo = Get-ADUser -Identity $SelectedUser -Properties * -Server $DC -Credential $credentials
        }

        #Pull the user data into the form
        Populate-Form -Account $userInfo
	}
}

#Event triggered when the accountExpirationCheckbox changes
$accountExpirationCheckbox_CheckedChanged = {
    if ($this.Checked){
        $expirationDateTimePicker.Visible = $true
    } else {
        $expirationDateTimePicker.Visible = $false
    }
}

#Event triggered when the user clicks 'Enable/Disable Account'
$enableLinkLabel_LinkClicked = {
    Switch($enabledLabel.Text) {
        'Enabled: True' {
            try {
                if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                    $script:userInfo | Disable-ADAccount -Server $DC
                } else {
                    $script:userInfo | Disable-ADAccount -Server $DC -Credential $credentials
                }
                $enabledLabel.Text = 'Enabled: False'
                #If nothing errors then show a success message
                [System.Windows.Forms.MessageBox]::Show('Successfully Disabled account: ' + $script:userInfo.CN, 'Disable Success!')
            } catch {
                #Something errored. Let the user know.
                [System.Windows.Forms.MessageBox]::Show('Disabling account: ' + $script:userInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
                Write-Log -Message ($_ | Out-String) -Type Error -LogName EditUserForm
            }
        }

        'Enabled: False' {
            try {
                if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                    $script:userInfo | Enable-ADAccount -Server $DC
                } else {
                    $script:userInfo | Enable-ADAccount -Server $DC -Credential $credentials
                }
                $enabledLabel.Text = 'Enabled: True'
                #If nothing errors then show a success message
                [System.Windows.Forms.MessageBox]::Show('Successfully Enabled account: ' + $script:userInfo.CN, 'Enable Success!')
            } catch {
                #Something errored. Let the user know.
                [System.Windows.Forms.MessageBox]::Show('Enabling account: ' + $script:userInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
                Write-Log -Message ($_ | Out-String) -Type Error -LogName EditUserForm
            }
        }
    }
}

#Event triggered when the user clicks 'Unlock Account'
$unlockLinkLabel_LinkClicked = {
     try {
        if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            $script:UserInfo | Unlock-ADAccount -Server $DC
        } else {
            $script:UserInfo | Unlock-ADAccount -Server $DC -Credential $credentials
        }
        $lockedLabel.Text = 'Locked: False'
        $unlockLinkLabel.Enabled = $false
        #If nothing errors then show a success message
        [System.Windows.Forms.MessageBox]::Show('Successfully unlocked account: ' + $script:UserInfo.CN, 'Unlock Success!')
    } catch {
        #Something errored. Let the user know.
        [System.Windows.Forms.MessageBox]::Show('Unlocking account: ' + $script:UserInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
        Write-Log -Message ($_ | Out-String) -Type Error -LogName EditUserForm
    }
}

#Event triggered when the user clicks 'Set Dormant Status'
$setDormantStatusLinkLabel_LinkClicked = {
    $clearDormantStatusLinkLabel.Visible = $true
    $dormantDialogResult = Show-DormantStatusDialog

    if($dormantDialogResult -ne 'Cancel') {
        try {
            if($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                $script:UserInfo | Set-ADUser -Add @{extensionAttribute6 = $dormantDialogResult} -Replace @{extensionAttribute6 = $dormantDialogResult} -Server $DC
            } else {
                $script:UserInfo | Set-ADUser -Add @{extensionAttribute6 = $dormantDialogResult} -Replace @{extensionAttribute6 = $dormantDialogResult} -Server $DC -Credential $credentials
            }
            $dormantLabel.Text = 'Dormant: True'
            $dormantDate.Visible = $true
            $dormantDate.Text = $dormantDialogResult
            #If nothing errors then show a success message
            [System.Windows.Forms.MessageBox]::Show('Successfully set dormant status on account: ' + $script:UserInfo.CN, 'Dormant Status Set Success!')
        } catch {
            #Something errored. Let the user know.
            [System.Windows.Forms.MessageBox]::Show('Setting dormant status on account: ' + $script:UserInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
            Write-Log -Message ($_ | Out-String) -Type Error -LogName EditUserForm
        }
    }
}

#Event triggered when the user clicks 'Clear Dormant Status' 
$clearDormantStatusLinkLabel_LinkClicked = {
    try {
        if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            $script:UserInfo | Set-ADUser -Clear extensionAttribute6 -Server $DC
        } else {
            $script:UserInfo | Set-ADUser -Clear extensionAttribute6 -Server $DC -Credential $credentials
        }
        $dormantLabel.Text = 'Dormant: False'
        $dormantDate.Visible = $false
        $clearDormantStatusLinkLabel.Visible = $false
        #If nothing errors then show a success message
        [System.Windows.Forms.MessageBox]::Show('Successfully cleared dormant status on account: ' + $script:UserInfo.CN, 'Dormant Status Clear Success!')
    } catch {
        #Something errored. Let the user know.
        [System.Windows.Forms.MessageBox]::Show('Clearing dormant status on account: ' + $script:UserInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
        Write-Log -Message ($_ | Out-String) -Type Error -LogName EditUserForm
    }
}

$editButton_Click = {
    if($EditUserForm.ValidateChildren()) {

        #Concatenate the CN and DisplayName for the user, probably works fine, not really sure about FNs.      
        $CNArray = @(
            $lastNameTextbox.Text.ToUpper()
            $firstNameTextbox.Text.ToUpper()
            $initialTextbox.Text.ToUpper()
            $edipiTextbox.Text
            $employeeTypeCombobox.SelectedItem.PCC
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
        )
        $displayName = ($displayNameArray | Where-Object {![string]::IsNullOrEmpty($_)}) -join ' '
        
        #Hash Table of mandatory Attributes
        $updatedAttributes = @{
            c = $countryTextbox.Text.ToUpper()
            company = $branchCombobox.Text
            department = $MAJCOMCombobox.SelectedItem.Acronym
            displayName = $displayName
            employeeID = $edipiTextbox.Text
            employeeType = $employeeTypeCombobox.SelectedItem.PCC
            extensionAttribute4 = $citizenshipTextbox.Text.ToUpper()
            gigID = $edipiTextbox.Text + $employeeTypeCombobox.SelectedItem.PCC
            givenName = $firstNameTextbox.Text.ToUpper()
            l = $baseNameCombobox.Text
            mail = $emailTextbox.Text
            o = $unitComboBox.Text.ToUpper()
            physicalDeliveryOfficeName = $officeSymbolTextbox.Text.ToUpper()
            payGrade = $payGradeCombobox.Text
            payPlan = $payPlanCombobox.Text
            personalTitle = $titleTextbox.Text.ToUpper()
            postalCode = $zipTextbox.Text
            samAccountName = $edipiTextbox.Text + '.' + $employeeTypeCombobox.SelectedItem.PCC
            SmartcardLogonRequired = $true
            sn = $lastNameTextbox.Text.ToUpper()
            telephoneNumber = $phoneTextbox.Text
        }

        #Evaluate suffix to see if it's populated, if it is, add to updatedAttributes
        if (![string]::IsNullOrEmpty($suffixCombobox.Text)){
            $updatedAttributes += @{generationQualifier = $suffixCombobox.Text}
        }

        #Evaluate initials to see if it's populated, if it is, add to updatedAttributes
        if (![string]::IsNullOrEmpty($initialTextbox.Text)){
            $updatedAttributes += @{initials = $initialTextbox.Text.ToUpper()}
        }

        #Evaluate state to see if it's populated, if it is, add to updatedAttributes
        if (![string]::IsNullOrEmpty($stateTextbox.Text)){
            $updatedAttributes += @{st = $stateTextbox.Text.ToUpper()}
        }

        #Evaluate street to see if it's populated, if it is, add to updatedAttributes
        if (![string]::IsNullOrEmpty($streetTextbox.Text)){
            $updatedAttributes += @{StreetAddress = $streetTextbox.Text}
        }

        #Evaluate description to see if it's populated, if it is, add to updatedAttributes
        if (![string]::IsNullOrEmpty($descriptionTextbox.Text)){
            $updatedAttributes += @{description = $descriptionTextbox.Text}
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
                $newUserInfo = Set-ADUser -Identity $script:userInfo.SamAccountName `
                    -AccountExpirationDate $accountExpirationSetter `
                    -Add $updatedAttributes `
                    -Replace $updatedAttributes `
                    -Server $DC `
                    -PassThru
            } else {
                $newUserInfo = Set-ADUser -Identity $script:userInfo.SamAccountName `
                    -AccountExpirationDate $accountExpirationSetter `
                    -Add $updatedAttributes `
                    -Replace $updatedAttributes `
                    -Server $DC `
                    -PassThru `
                    -Credential $credentials
            }

            #This portion renames the account if the names don't match
            if ($CN -ne $script:userInfo.CN) {
                if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                    $newUserInfo | Rename-ADObject -NewName $CN -Server $DC
                } else {
                    $newUserInfo | Rename-ADObject -NewName $CN -Server $DC -Credential $credentials
                }
            }

            #If nothing errors then show a success message
            [System.Windows.Forms.MessageBox]::Show("Successfully edited:" + $newUserInfo.displayName,'Account Edited Successfully!')
            $EditUserForm.Close()
        } catch {
            #Something errored. Let the user know.
            [System.Windows.Forms.MessageBox]::Show("Editing " + $script:userInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
            Write-Log -Message ($_ | Out-String) -Type Error -LogName EditUserForm
            Write-Log -Message ($updatedAttributes | Out-String) -Component updatedAttributes -Type Error -LogName EditUserForm
        }
    }
}

#Show GUI
. (Join-Path $PSScriptRoot 'EditUserForm.designer.ps1')
$EditUserForm.ShowDialog()
