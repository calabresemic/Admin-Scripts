#requires -version 5
<#
.SYNOPSIS
  Form used to allow base admins to launch other forms.
.DESCRIPTION
  Form will load group membership and display appropriate menu items.
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
  .\BaseLauncher.ps1
#>

#Event triggered when form loads
$form_Load = {
	$basePermNames=@() #Generate an array to hold results of regex matching
    #Loop through the group membership and find all the bases user has permissions over
    $formUserMembership | % {
        if($_ -match '^GLS_([a-zA-Z0-9_ ]+)_CFP-CSA$') {
            $basePermNames+=$Matches[1]
        }
        if($_ -match '^GLS_([a-zA-Z0-9_ ]+)_FAR_AccountManagement$') {
            $basePermNames+=$Matches[1]
        }
        if($_ -match '^GLS_([a-zA-Z0-9_ ]+)_FAR_ServiceAccountsManage$') {
            $basePermNames+=$Matches[1]
        }
    }

	#Grab only the unique names, accounts for multiple groups from the same base
	[array]$basePerms = foreach($name in ($basePermNames | Select-Object -Unique)) {
		$baseNames.Name | Where-Object {$_ -like "$name*"}
	}

    #Show base selector when member of multiple base groups
	if($basePerms.count -gt 1) {
		$baseSelectorCombobox.Items.AddRange($basePerms)
        $baseSelectorCombobox.SelectedIndex=0
		$baseSelectorCombobox.Visible = $true
	} else {
		$Global:userLocation = [String]$basePerms
	}
    
    #Show Admin Create and Admin Edit buttons when member of FAR_AccountManagement
	if ($formUserMembership -match '^GLS_[A-Z\s]+_FAR_AccountManagement$') {
		$AdminCreateButton.Visible = $true
		$AdminEditButton.Visible = $true
	}
    
    #Show SVC Edit button when member of FAR_ServiceAccountsManage
	if ($formUserMembership -match '^GLS_[A-Z\s]+_FAR_ServiceAccountsManage$') {
		$SVCEditButton.Visible = $true
	}
}

#Event triggered, if combobox is displayed (member of multiple base groups), when different base is selected
$baseSelectorCombobox_SelectedIndexChanged = {
	$Global:userLocation = $baseSelectorCombobox.Text
}

$editSVC_Click = {
	. (Join-Path $editFormsFolder 'EditSVCForm.ps1')
}

$editAdmin_Click = {
	. (Join-Path $editFormsFolder 'EditAdminForm.ps1')
}

$editUser_Click = {
	. (Join-Path $editFormsFolder 'EditUserForm.ps1')
}

$createComputer_Click = {
	. (Join-Path $createFormsFolder 'CreateComputerForm.ps1')
}

$createGroup_Click = {
	. (Join-Path $createFormsFolder 'CreateGroupForm.ps1')
}

$createAdmin_Click = {
	. (Join-Path $createFormsFolder 'CreateAdminForm.ps1')
}

$createUser_Click = {
	. (Join-Path $createFormsFolder 'CreateUserForm.ps1')
}

$reportButton_Click = {
	. (Join-Path $otherFormsFolder 'ComplianceReportForm.ps1')
}

$helpButton_Click = {
	. (Join-Path $otherFormsFolder 'ReadMeForm.ps1')
}

#Show GUI
. (Join-Path $PSScriptRoot 'BaseLauncher.designer.ps1')
$BaseLauncher.ShowDialog()