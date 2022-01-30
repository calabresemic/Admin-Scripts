#requires -version 5
#requires –Modules ActiveDirectory
<#
.SYNOPSIS
  Shows user a list of NonCompliant objects at their base
.DESCRIPTION
  Shows user NonCompliant objects and allows editing Admin, Service, and User accounts directly.
  This is really provided as a courtesy and I don't really plan on adding features or logs.
.INPUTS
  None
.OUTPUTS
  Log file stored in %LocalAppData%\ComplianceReportForm.log
.NOTES
  Version:        1.0
  Author:         Michael Calabrese
  Creation Date:  1/18/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  .\ComplianceReportForm.ps1
#>

Function Populate-ComplianceDGV ($DataGridView,[String]$reportType) {
	#Loads the reports individually

	#Basic error logging
	trap {
		Write-Log -Message ($_ | Out-String) -Component $reportType -Type Error -LogName ComplianceReportForm
	}

	if($Script:runReports -notcontains $reportType) {
        $ComplianceReportForm.Cursor = 'WaitCursor'
		Switch($reportType) {
			'Admin' {
				$searchbase = "OU=$userLocation,OU=Administrative Accounts,OU=Administration,$($Domain.DistinguishedName)"
				$groupDN = "CN=$($Domain.Name)_NONCOMPLIANT_ADM,OU=_ESU Groups,OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)"
				Get-ADUser -LDAPFilter "(MemberOf=$groupDN)" -SearchBase $searchbase | % {
					$DataGridView.Rows.Add($_.Name, $_.DistinguishedName, 'Edit')
				}
			}
			'SVC' {
				$searchbase = "OU=$userLocation,OU=Service Accounts,OU=Administration,$($Domain.DistinguishedName)"
				$groupDN = "CN=$($Domain.Name)_NONCOMPLIANT_SVC,OU=_ESU Groups,OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)"
				Get-ADUser -LDAPFilter "(MemberOf=$groupDN)" -SearchBase $searchbase | % {
					$DataGridView.Rows.Add($_.Name, $_.DistinguishedName, 'Edit')
				}
			}
			'User' {
				$searchbase = "OU=$userLocation Users,OU=$userLocation,OU=Bases,$($Domain.DistinguishedName)"
				$groupDN = "CN=$($Domain.Name)_NONCOMPLIANT_USER,OU=_ESU Groups,OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)"
				Get-ADUser -LDAPFilter "(MemberOf=$groupDN)" -SearchBase $searchbase | % {
					$DataGridView.Rows.Add($_.Name, $_.DistinguishedName, 'Edit')
				}
			}
			'Computer' {
				$searchbase = "OU=$userLocation Computers,OU=$userLocation,OU=Bases,$($Domain.DistinguishedName)"
				$groupDN = "CN=$($Domain.Name)_NONCOMPLIANT_COMP,OU=_ESU Groups,OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)"
				Get-ADComputer -LDAPFilter "(MemberOf=$groupDN)" -SearchBase $searchbase | % {
					$DataGridView.Rows.Add($_.Name, $_.DistinguishedName)
				}
			}
			'BaseGroup' {
				$searchbase = "OU=$userLocation Security Groups,OU=$userLocation,OU=Bases,$($Domain.DistinguishedName)"
				$groupDN = "CN=$($Domain.Name)_NONCOMPLIANT_GRP,OU=_ESU Groups,OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)"
				Get-ADGroup -LDAPFilter "(MemberOf=$groupDN)" -SearchBase $searchbase | % {
					$DataGridView.Rows.Add($_.Name, $_.DistinguishedName)
				}
			}
			'AdminGroup' {
				$searchbase = "OU=$userLocation,OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)"
				$groupDN = "CN=$($Domain.Name)_NONCOMPLIANT_GRP,OU=_ESU Groups,OU=Administrative Groups,OU=Administration,$($Domain.DistinguishedName)"
				Get-ADGroup -LDAPFilter "(MemberOf=$groupDN)" -SearchBase $searchbase | % {
					$DataGridView.Rows.Add($_.Name, $_.DistinguishedName)
				}
			}
		}
		$Script:runReports += $reportType
        $ComplianceReportForm.Cursor = 'Default'
	}
}

#Basic error logging
	trap {
		Write-Log -Message ($_ | Out-String) -Type Error -LogName ComplianceReportForm
	}

#Event triggered when form loads
$form_Load = {
    [Array]$Script:runReports=@() #Generate an array to hold the reports that are run so they aren't repeated
	Populate-ComplianceDGV -DataGridView $AdminResultDataGridView -reportType Admin
}

#Event triggered when selecting a different tab
$tabControl_SelectedIndexChanged = {
	#$this.SelectedIndex
	Switch($this.SelectedIndex){
		0 {
			Populate-ComplianceDGV -DataGridView $AdminResultDataGridView -reportType Admin
		}
		1 {
			Populate-ComplianceDGV -DataGridView $svcResultDataGridView -reportType SVC
		}
		2 {
			Populate-ComplianceDGV -DataGridView $userResultDataGridView -reportType User
		}
		3{
			Populate-ComplianceDGV -DataGridView $computerResultDataGridView -reportType Computer
		}
		4 {
			Populate-ComplianceDGV -DataGridView $baseGroupResultDataGridView -reportType BaseGroup
		}
		5 {
			Populate-ComplianceDGV -DataGridView $adminGroupResultDataGridView -reportType AdminGroup
		}
	}
}

#Event triggered when clicking in the userResultDataGridView
$userResultDataGridView_CellContentClick = {
    if ($_.RowIndex -ge 0 -and $_.ColumnIndex -eq 2) {
		$SelectedUser = $userResultDataGridView[1, $_.RowIndex].Value
        . (Join-Path $editFormsFolder 'EditUserForm.ps1') -UserDistinguishedName $SelectedUser
	}
}

#Event triggered when clicking in the svcResultDataGridView
$svcResultDataGridView_CellContentClick = {
    if ($_.RowIndex -ge 0 -and $_.ColumnIndex -eq 2) {
		$SelectedSVC = $svcResultDataGridView[1, $_.RowIndex].Value
        . (Join-Path $editFormsFolder 'EditSVCForm.ps1') -SVCDistinguishedName $SelectedSVC
	}
}

#Event triggered when clicking in the adminResultDataGridView
$AdminResultDataGridView_CellContentClick = {
	if ($_.RowIndex -ge 0 -and $_.ColumnIndex -eq 2) {
		$SelectedAdmin = $adminResultDataGridView[1, $_.RowIndex].Value
        . (Join-Path $editFormsFolder 'EditAdminForm.ps1') -AdminDistinguishedName $SelectedAdmin
	}
}

#Show GUI
. (Join-Path $PSScriptRoot 'ComplianceReportForm.designer.ps1')
$ComplianceReportForm.ShowDialog()