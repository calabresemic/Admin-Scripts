#requires -version 5
#requires –Modules ActiveDirectory
<#
.SYNOPSIS
  Form used to create user accounts compliant with MPTO 00-33D-2001
.DESCRIPTION
  Loads the CreateUserForm.designer.ps1 script and allows a user to create an account by filling in the required fields.
  Must be originally run from Admin-Scripts.ps1
.PARAMETER NOSOverride
    Launches the form with the TreeView at the root of the domain and with all bases selectable in the combobox.
.INPUTS
  None
.OUTPUTS
  Log file stored in %LocalAppData%\CreateUserForm.log
  Compliant accounts :)
.NOTES
  Version:        1.0
  Author:         Michael Calabrese
  Creation Date:  1/18/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  If running for a base admin
  .\CreateUserForm.ps1

.EXAMPLE
  If running for a NOS/COS admin
  .\CreateUserForm.ps1 -NOSOverride
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
    }
    $MAJCOMList = Get-MAJCOMList #Pulls list of MAJCOMS from the 'Bases' OU. This is assuming the list is in the same format as NIPR.
    $MAJCOMCombobox.Items.AddRange($MAJCOMList) #Adds the MAJCOMS to the MAJCOMCombobox
    $branchCombobox.Items.AddRange($Branches) #Add the array of Branches to the branchCombobox
    $payPlanCombobox.Items.AddRange($PayPlans) #Add the array of payplans to the payplanCombobox
    $suffixCombobox.Items.AddRange($SuffixList) #Add the array of suffixs to the suffixCombobox
    $employeeTypeCombobox.DataSource = $eTypeArray #Adds the employee types to the employeeTypeCombobox
    $pathTreeView.Nodes[0].Expand() #Expands the first node of the treeView for courtesy.
    $DcBox.Text = $DC #Set the DC name
}

#This event is triggered when a user selects an OU from the treeView on the left. It is meant to guide them to the correct location.
$pathTreeView_AfterSelect = {
    if ($this.SelectedNode.Name -eq $Domain.DistinguishedName) {
        #This is to handle the event on startup of the form. I could do something else but it's going to ride for now.
    } elseif ($this.SelectedNode.Name -notlike "OU=*,OU=Bases,$($Domain.DistinguishedName)") {
        $result = [System.Windows.Forms.MessageBox]::Show('Normally User Accounts are created under the Base AFB Users OU.' + [System.Environment]::NewLine +
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
    $unitCombobox.Items.AddRange($units)
    $cityTextbox.Text = $this.Text

    #Clear the groupTreeView and add new groups for the base
    $groupTreeView.Nodes.Clear()
    Update-TreeViewMembers -TreeView $groupTreeView -SearchBase "OU=$($this.Text) Security Groups,OU=$($this.Text),OU=Bases,$($Domain.DistinguishedName)" -Filter '(name=*)' -ObjectType Group
}

#if the user checks the box this shows the dateTimePicker for account expiration
$accountExpirationCheckbox_CheckedChanged = {
    if ($this.Checked) {
        $expirationDateTimePicker.Visible = $true
    } else {
        $expirationDateTimePicker.Visible = $false
    }
}

#If the user checks the box this shows the treeView for selecting groups
$addGroupsCheckbox_CheckedChanged = {
    if ($this.Checked) {
        $groupTreeView.Visible = $true
    } else {
        $groupTreeView.Visible = $false
    }
}

#Triggered when the user presses the create user button.
$createButton_Click = {
    if($createUserForm.ValidateChildren()) {
        #Start by generating the static list of 'otherAttributes'. These attributes are not native to AD and can't be called in the splat.
        $otherAttributes = @{
            employeeType = $employeeTypeCombobox.SelectedItem.PCC
            gigID = $edipiTextbox.Text + $employeeTypeCombobox.SelectedItem.PCC
            extensionAttribute4 = $citizenshipTextbox.Text.ToUpper()
            payGrade = $payGradeCombobox.Text
            payPlan = $payPlanCombobox.Text
            personalTitle = $titleTextbox.Text.ToUpper()
        }

        #Evaluate suffix to see if it's populated, if it is add to otherAttributes
        if (![string]::IsNullOrEmpty($suffixCombobox.Text)){
            $otherAttributes += @{generationQualifier = $suffixCombobox.Text}
        }

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

        #Create a 'Splat' for the user account
        $userObject = @{
            name = $CN
            displayName = $displayName
            surname = $lastNameTextbox.Text.ToUpper()
            givenName = $firstNameTextbox.Text.ToUpper()
            initials = $initialTextbox.Text.ToUpper()
            employeeID = $edipiTextbox.Text
            userPrincipalName = $edipiTextbox.Text + '.' + $employeeTypeCombobox.SelectedItem.PCC + '@smil.mil'
            samAccountName = $edipiTextbox.Text + '.' + $employeeTypeCombobox.SelectedItem.PCC
            company = $branchCombobox.Text
            department = $MAJCOMCombobox.SelectedItem.Acronym
            city = $baseNameCombobox.Text
            office = $officeSymbolTextbox.Text.ToUpper()
            organization = $unitComboBox.Text.ToUpper()
            officePhone = $phoneTextbox.Text
            emailAddress = $emailTextbox.Text
            streetAddress = $streetTextbox.Text
            state = $stateTextbox.Text.ToUpper()
            postalCode = $zipTextbox.Text
            country = $countryTextbox.Text.ToUpper()
            description = $descriptionTextbox.Text
            path = $pathTextbox.Text
            smartcardLogonRequired = $true
            changePasswordAtLogon = $false
            otherAttributes = $otherAttributes #Add the list of extra attributes that aren't native
        }

        #If expiration date specified, set on the account
        if ($accountExpirationCheckbox.Checked) {
            $userObject += @{AccountExpirationDate = $expirationDateTimePicker.Value}
        }

        #Check the HomeDrive and add to the userObject splat if needed
        if ([string]::IsNullOrEmpty($homeDriveComboBox.Text) -or  $homeDriveComboBox.Text -eq 'none' -or [string]::IsNullOrEmpty($homeDriveTextbox.Text)) {
            #Skip the Home Drive because it's not right
        } else {
            $userObject += @{HomeDrive = $homeDriveComboBox.Text}
            $userObject += @{HomeDirectory = $homeDriveTextbox.Text}
        }

        #Check the logon script and add to the userObject splat if needed
        if (![string]::IsNullOrEmpty($logonScriptTextbox.Text)) {
            $userObject += @{ScriptPath = $logonScriptTextbox.Text}
        }

        try {
            #try to create the user and enable
            if ($credentials -eq [System.Management.Automation.PSCredential]::Empty) {
                $newUser = New-ADUser @userObject -Server $DC -PassThru
                Set-ADUser $userObject.samAccountName -Enabled $true -Server $DC
            } else {
                $newUser = New-ADUser @userObject -Server $DC -PassThru -Credential $credentials
                Set-ADUser $userObject.samAccountName -Enabled $true -Server $DC -Credential $credentials
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
                Add-UserToGroups -selectedgroups $selectedgroups -User $newUser
            }

            $createUserForm.Close()
        } catch {
            #Something errored. Let the user know.
            [System.Windows.Forms.MessageBox]::Show("Creating " + $CN + " failed with the following error: " + $_.exception.message,"Error Occurred!")
            Write-Log -Message ($_ | Out-String) -Type Error -LogName CreateUserForm
        }
    }
}

#Show GUI
. (Join-Path $PSScriptRoot 'CreateUserForm.designer.ps1')
$createUserForm.ShowDialog()