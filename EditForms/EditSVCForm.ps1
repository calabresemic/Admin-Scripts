#requires -version 5
#requires –Modules ActiveDirectory
<#
.SYNOPSIS
  Form used to edit service accounts to be compliant with MPTO 00-33D-2001
.DESCRIPTION
  Loads the EditSVCForm.designer.ps1 script and allows a user to edit an account by filling in the required fields.
  Must be originally run from Admin-Scripts.ps1
.PARAMETER NOSOverride
    Launches the form with the TreeView at the root of the domain and with all bases selectable in the combobox.
.PARAMETER SVCDistinguishedName
    Allows providing a DN for a service account and immediately launching to editing.
.INPUTS
  None
.OUTPUTS
  Log file stored in %LocalAppData%\EditSVCForm.log
  Compliant accounts :)
.NOTES
  Version:        1.0
  Author:         Michael Calabrese
  Creation Date:  1/18/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  If running for a base admin
  .\EditSVCForm.ps1

.EXAMPLE
  If running for a NOS/COS admin
  .\EditSVCForm.ps1 -NOSOverride
#>

Param (
    [Switch]$NOSOverride,
    [String]$SVCDistinguishedName
)

#region Functions

Function Populate-Form {
    #Takes information from AD accounts and prefills the form for easy editing

    Param(
        [Microsoft.ActiveDirectory.Management.ADAccount]$Account
    )

    if(![string]::IsNullOrEmpty($Account.Name)) { $nameTextbox.Text = $Account.Name.Trim() }
    if(![string]::IsNullOrEmpty($Account.extensionAttribute8)) { $CRQTextbox.Text = $Account.extensionAttribute8.Trim() }
    if(![string]::IsNullOrEmpty($Account.description)) { $descriptionTextbox.Text = $Account.description.Trim() }
    if(![string]::IsNullOrEmpty($Account.l)) { $baseNameCombobox.SelectedIndex = $baseNameCombobox.Items.Name.IndexOf($Account.l.Trim()) }
    if(![string]::IsNullOrEmpty($Account.o)) { $unitComboBox.Text = $Account.o.Trim() }
    if(![string]::IsNullOrEmpty($Account.physicalDeliveryOfficeName)) { $officeSymbolTextbox.Text = $Account.physicalDeliveryOfficeName.Trim() }
    if(![string]::IsNullOrEmpty($Account.OfficePhone)) { $phoneTextbox.Text = $Account.OfficePhone.Trim() }
    if(![string]::IsNullOrEmpty($Account.extensionAttribute13)) { $emailTextbox.Text = $Account.extensionAttribute13.Trim() }

    #If account has expiration date. Check the box and set the date.
    if (![string]::IsNullOrEmpty($Account.AccountExpirationDate)) {
        $accountExpirationCheckbox.Checked = $true
        $expirationDateTimePicker.Value = $Account.AccountExpirationDate
    }

    #Defaults to Enabled: True, if account is disabled, set to Enabled: False
    if (!$Account.Enabled) {
        $enabledLabel.Text = 'Enabled: False'
    }

    #If the account is locked, allow the admin to unlock it.
    if ($Account.LockedOut) {
        $lockedLabel.Text = 'Locked: True'
        $unlockLinkLabel.Enabled = $true
    }

    #Check the account validation status
    if (![string]::IsNullOrEmpty($Account.extensionAttribute7)) {
        try {
            $validationDate=[datetime]::ParseExact($Account.extensionAttribute7.Split(' ')[2], 'yyyyMMdd', $null)
            $validationLabel.Text = 'Validated: True' + [System.Environment]::NewLine + $Account.extensionAttribute7
        } catch {
            #No properly formatted validation date
            if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                $Account | Set-ADUser -Clear extensionAttribute7 -Server $DC
            } else {
                $Account | Set-ADUser -Clear extensionAttribute7 -Server $DC -Credential $credentials
            }
            Write-Log -Message ("Removing extensionAttribute7: " + $Account.extensionAttribute7 + " from account: " + $Account.CN) -Type Warning -LogName EditSVCForm
        }
    }

    #Hide search panel and show the other panels
    $SearchGroupBox.Visible = $false
    $savePanel.Visible = $true
    $accountActionGroupbox.Visible = $true
    $ownerInfoGroupbox.Visible = $true
    $accountInfoGroupbox.Visible = $true
}

#endregion Functions

#This event is triggered when the form loads
$form_Load = {
    if ($NOSOverride) {
        $script:searchBase = "OU=Service Accounts,OU=Administration,$($Domain.DistinguishedName)" #Set the searchbase for the admin searcher to the 'Service Accounts' OU.
        $baseNameCombobox.Items.AddRange($basenames) #Add all the bases to the combobox.
        $baseNameCombobox.Items.Add([pscustomobject]@{Name='Enterprise';City='';businessCategory='';DistinguishedName=''}) #Add Enterprise to the combobox, domain level accounts need this.
    } else {
        $baseOU = $basenames | Where-Object {$_.Name -eq $userLocation} #Set the baseOU var equal to the base that matches the user's l attrib.
        $baseNameCombobox.Items.AddRange($baseOU) #Add the user's base to the basename combobox
        $baseNameCombobox.SelectedIndex=0 #Select the user's base because there's no other choices anyway.
        $script:searchBase = "OU=$userLocation,OU=Service Accounts,OU=Administration,$($Domain.DistinguishedName)"#Set the searchbase for the admin searcher to the base's 'Service Accounts' OU.
    }
    $DcBox.Text = $DC #Set the DC name

    #If a DN is passed as a param, try to find an account and populate form.
    #Not 100% tested.
    if ($SVCDistinguishedName) {
        try {
            if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                [array]$script:SVCInfo = Get-ADUser -Identity $SVCDistinguishedName -Properties * -Server $DC
            } else {
                [array]$script:SVCInfo = Get-ADUser -Identity $SVCDistinguishedName -Properties * -Server $DC -Credential $credentials
            }

            if($SVCInfo.count -ne 1) {
                throw "No Account Found"
            } else {
                Populate-Form $SVCInfo
            }

        } catch {
            if($_.Exception.Message -eq "No Account Found") {
                #Failed to find account associated with the passed DN
                [System.Windows.Forms.MessageBox]::Show($SVCDistinguishedName + " was passed to the script but failed to map to an account.","Failed to Find Account!")
            } else {
                #If something else failed log it
                Write-Log -Message ($_ | Out-String) -Type Error -LogName EditSVCForm
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

#This event is triggered when the user searches for a service account
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

#This block handles when the user selects an account inside the dataGridView.
$resultDataGridView_CellContentClick = {
    if ($_.RowIndex -ge 0 -and $_.ColumnIndex -eq 2) {
		$SelectedSVC = $resultDataGridView[1, $_.RowIndex].Value

        if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            $script:SVCInfo = Get-ADUser -Identity $SelectedSVC -Properties * -Server $DC
        } else {
            $script:SVCInfo = Get-ADUser -Identity $SelectedSVC -Properties * -Server $DC -Credential $credentials
        }

        #Pulls the SVC info into the form
        Populate-Form $SVCInfo
	}
}

#Triggered when the user clicks enable/disable account
$enableLinkLabel_LinkClicked = {
    Switch($enabledLabel.Text) {
        'Enabled: True' {
            try {
                if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                    $script:SVCInfo | Disable-ADAccount -Server $DC
                } else {
                    $script:SVCInfo | Disable-ADAccount -Server $DC -Credential $credentials
                }
                $enabledLabel.Text = 'Enabled: False'
                #If nothing errors then show a success message
                [System.Windows.Forms.MessageBox]::Show('Successfully Disabled account: ' + $script:SVCInfo.CN, 'Disable Success!')
            } catch {
                #Something errored. Let the user know.
                [System.Windows.Forms.MessageBox]::Show('Disabling account: ' + $script:SVCInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
                Write-Log -Message ($_ | Out-String) -Type Error -LogName EditSVCForm
            }
        }

        'Enabled: False' {
            try {
                if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                    $script:SVCInfo | Enable-ADAccount -Server $DC
                } else {
                    $script:SVCInfo | Enable-ADAccount -Server $DC -Credential $credentials
                }
                $enabledLabel.Text = 'Enabled: True'
                #If nothing errors then show a success message
                [System.Windows.Forms.MessageBox]::Show('Successfully Enabled account: ' + $script:SVCInfo.CN, 'Enable Success!')
            } catch {
                #Something errored. Let the user know.
                [System.Windows.Forms.MessageBox]::Show('Enabling account: ' + $script:SVCInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
                Write-Log -Message ($_ | Out-String) -Type Error -LogName EditSVCForm
            }
        }
    }
}

#Triggered when the user clicks unlock account
$unlockLinkLabel_LinkClicked = {
     try {
        if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            $script:SVCInfo | Unlock-ADAccount -Server $DC
        } else {
            $script:SVCInfo | Unlock-ADAccount -Server $DC -Credential $credentials
        }
        $lockedLabel.Text = 'Locked: False'
        $unlockLinkLabel.Enabled = $false
        #If nothing errors then show a success message
        [System.Windows.Forms.MessageBox]::Show('Successfully unlocked account: ' + $script:SVCInfo.CN, 'Unlock Success!')
    } catch {
        #Something errored. Let the user know.
        [System.Windows.Forms.MessageBox]::Show('Unlocking account: ' + $script:SVCInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
        Write-Log -Message ($_ | Out-String) -Type Error -LogName EditSVCForm
    }
}

#Triggered when the user clicks validate account
$validateLinkLabel_LinkClicked = {
    try {
        if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
            $IACN = Get-ADUser $env:USERNAME -Properties CN -Server $DC | Select-Object -ExpandProperty CN
            $validationStatement = "Acct Validated " + (Get-Date -Format 'yyyyMMdd') + " by " + $IACN
            $script:SVCInfo | Set-ADUser -Add @{extensionAttribute7 = $validationStatement} -Replace @{extensionAttribute7 = $validationStatement} -Server $DC
        } else {
            $IACN = Get-ADUser $credentials.UserName -Properties CN -Server $DC -Credential $credentials | Select-Object -ExpandProperty CN
            $validationStatement = "Acct Validated " + (Get-Date -Format 'yyyyMMdd') + " by " + $IACN
            $script:SVCInfo | Set-ADUser -Add @{extensionAttribute7 = $validationStatement} -Replace @{extensionAttribute7 = $validationStatement} -Server $DC -Credential $credentials
        }
        $validationLabel.Text = 'Validated: True' + [System.Environment]::NewLine + $validationStatement
        #If nothing errors then show a success message
        [System.Windows.Forms.MessageBox]::Show('Successfully validated account: ' + $script:SVCInfo.CN, 'Validation Success!')
    } catch {
        #Something errored. Let the user know.
        [System.Windows.Forms.MessageBox]::Show('Validating account: ' + $script:SVCInfo.CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
        Write-Log -Message ($_ | Out-String) -Type Error -LogName EditSVCForm
    }
}

#Event triggered when the user clicks Save Edits
$editButton_Click = {
    if($EditSVCForm.ValidateChildren()) {

        #Hash Table of mandatory Attributes
        $updatedAttributes = @{
            description = $descriptionTextbox.Text
            displayName = $nameTextbox.Text.ToUpper()
            employeeType = 'S'
            extensionAttribute3 = 'SVC'
            extensionAttribute8 = $CRQTextbox.Text.ToUpper()
            extensionAttribute13 = $emailTextbox.Text
            l = $baseNameCombobox.Text
            o = $unitComboBox.Text.ToUpper()
            physicalDeliveryOfficeName = $officeSymbolTextbox.Text.ToUpper()
            samAccountName = $nameTextbox.Text.ToUpper()
            telephoneNumber = $phoneTextbox.Text
        }

        try {
            #Attempt to edit the account
            if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                $newSVCInfo = Set-ADUser -Identity $script:SVCInfo.SamAccountName `
                    -AccountNotDelegated $true `
                    -Add $updatedAttributes `
                    -Replace $updatedAttributes `
                    -Server $DC `
                    -PassThru
            } else {
                $newSVCInfo = Set-ADUser -Identity $script:SVCInfo.SamAccountName `
                    -AccountNotDelegated $true `
                    -Add $updatedAttributes `
                    -Replace $updatedAttributes `
                    -Server $DC `
                    -PassThru `
                    -Credential $credentials
            }

            #If nothing errors then show a success message
            [System.Windows.Forms.MessageBox]::Show("Successfully edited account: " + $newSVCInfo.Name,"Edit Successful")
            $EditSVCForm.Close()
        } catch {
            #Something errored. Let the user know.
            [System.Windows.Forms.MessageBox]::Show('Editing account: ' + $script:SVCInfo.Name + " failed with the following error: " + $_.exception.message,"Error Occurred!")
            Write-Log -Message ($_ | Out-String) -Type Error -LogName EditSVCForm
            Write-Log -Message ($updatedAttributes | Out-String) -Component updatedAttributes -Type Error -LogName EditSVCForm
        }
    }
}

#Show GUI
. (Join-Path $PSScriptRoot 'EditSVCForm.designer.ps1')
$EditSVCForm.ShowDialog()