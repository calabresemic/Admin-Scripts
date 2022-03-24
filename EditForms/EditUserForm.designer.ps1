[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$EditUserForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$userEditLabel = $null
[System.Windows.Forms.GroupBox]$SearchGroupBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel1 = $null
[System.Windows.Forms.Button]$searchButton = $null
[System.Windows.Forms.TextBox]$searchStringTextBox = $null
[System.Windows.Forms.DataGridView]$resultDataGridView = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$NameColumn = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$DistinguishedNameColumn = $null
[System.Windows.Forms.DataGridViewButtonColumn]$SelectColumn = $null
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel2 = $null
[System.Windows.Forms.Panel]$panel8 = $null
[System.Windows.Forms.TextBox]$descriptionTextbox = $null
[System.Windows.Forms.Label]$label15 = $null
[System.Windows.Forms.Panel]$panel7 = $null
[System.Windows.Forms.TextBox]$citizenshipTextbox = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Panel]$panel6 = $null
[System.Windows.Forms.ComboBox]$suffixCombobox = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.Panel]$panel5 = $null
[System.Windows.Forms.TextBox]$edipiTextbox = $null
[System.Windows.Forms.Label]$edipiLabel = $null
[System.Windows.Forms.Panel]$panel4 = $null
[System.Windows.Forms.TextBox]$initialTextbox = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Panel]$panel3 = $null
[System.Windows.Forms.TextBox]$firstNameTextbox = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Panel]$panel2 = $null
[System.Windows.Forms.TextBox]$lastNameTextbox = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel3 = $null
[System.Windows.Forms.Panel]$panel20 = $null
[System.Windows.Forms.TextBox]$officeSymbolTextbox = $null
[System.Windows.Forms.Label]$label23 = $null
[System.Windows.Forms.Panel]$panel19 = $null
[System.Windows.Forms.ComboBox]$unitComboBox = $null
[System.Windows.Forms.Label]$label24 = $null
[System.Windows.Forms.Panel]$panel18 = $null
[System.Windows.Forms.ComboBox]$baseNameCombobox = $null
[System.Windows.Forms.Label]$label25 = $null
[System.Windows.Forms.Panel]$panel17 = $null
[System.Windows.Forms.ComboBox]$MAJCOMCombobox = $null
[System.Windows.Forms.Label]$label10 = $null
[System.Windows.Forms.Panel]$panel15 = $null
[System.Windows.Forms.ComboBox]$payGradeCombobox = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.Panel]$panel14 = $null
[System.Windows.Forms.ComboBox]$payPlanCombobox = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.Panel]$panel12 = $null
[System.Windows.Forms.TextBox]$titleTextbox = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Panel]$panel10 = $null
[System.Windows.Forms.ComboBox]$branchCombobox = $null
[System.Windows.Forms.Label]$label9 = $null
[System.Windows.Forms.Panel]$panel11 = $null
[System.Windows.Forms.ComboBox]$employeeTypeCombobox = $null
[System.Windows.Forms.Label]$employeeTypeLabel = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel4 = $null
[System.Windows.Forms.Panel]$panel16 = $null
[System.Windows.Forms.TextBox]$emailTextbox = $null
[System.Windows.Forms.Label]$label14 = $null
[System.Windows.Forms.Panel]$panel13 = $null
[System.Windows.Forms.TextBox]$phoneTextbox = $null
[System.Windows.Forms.Label]$label13 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel5 = $null
[System.Windows.Forms.Panel]$panel29 = $null
[System.Windows.Forms.TextBox]$countryTextbox = $null
[System.Windows.Forms.Label]$label20 = $null
[System.Windows.Forms.Panel]$panel28 = $null
[System.Windows.Forms.TextBox]$zipTextbox = $null
[System.Windows.Forms.Label]$label19 = $null
[System.Windows.Forms.Panel]$panel27 = $null
[System.Windows.Forms.TextBox]$stateTextbox = $null
[System.Windows.Forms.Label]$label18 = $null
[System.Windows.Forms.Panel]$panel25 = $null
[System.Windows.Forms.TextBox]$streetTextbox = $null
[System.Windows.Forms.Label]$label16 = $null
[System.Windows.Forms.Panel]$panel26 = $null
[System.Windows.Forms.TextBox]$cityTextbox = $null
[System.Windows.Forms.Label]$label17 = $null
[System.Windows.Forms.GroupBox]$UserInfoGroupbox = $null
[System.Windows.Forms.GroupBox]$employmentInfoGroupbox = $null
[System.Windows.Forms.GroupBox]$contactInfoGroupbox = $null
[System.Windows.Forms.GroupBox]$locationInfoGroupbox = $null
[System.Windows.Forms.Panel]$panel1 = $null
[System.Windows.Forms.Label]$label12 = $null
[System.Windows.Forms.Label]$DcBox = $null
[System.Windows.Forms.Button]$cancelButton = $null
[System.Windows.Forms.Button]$editButton = $null
[System.Windows.Forms.DateTimePicker]$expirationDateTimePicker = $null
[System.Windows.Forms.CheckBox]$accountExpirationCheckbox = $null
[System.Windows.Forms.GroupBox]$accountActionGroupbox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel6 = $null
[System.Windows.Forms.LinkLabel]$unlockLinkLabel = $null
[System.Windows.Forms.Label]$enabledLabel = $null
[System.Windows.Forms.Panel]$panel9 = $null
[System.Windows.Forms.Label]$dormantLabel = $null
[System.Windows.Forms.Panel]$panel22 = $null
[System.Windows.Forms.LinkLabel]$clearDormantStatusLinkLabel = $null
[System.Windows.Forms.LinkLabel]$setDormantStatusLinkLabel = $null
[System.Windows.Forms.Label]$lockedLabel = $null
[System.Windows.Forms.Panel]$savePanel = $null
[System.Windows.Forms.LinkLabel]$enableLinkLabel = $null
[System.Windows.Forms.ErrorProvider]$errorProvider1 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.ToolTip]$toolTip1 = $null
[System.Windows.Forms.Label]$dormantDate = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
[System.Windows.Forms.DataGridViewCellStyle]$dataGridViewCellStyle1 = (New-Object -TypeName System.Windows.Forms.DataGridViewCellStyle)
$userEditLabel = (New-Object -TypeName System.Windows.Forms.Label)
$SearchGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$searchButton = (New-Object -TypeName System.Windows.Forms.Button)
$searchStringTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$resultDataGridView = (New-Object -TypeName System.Windows.Forms.DataGridView)
$NameColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$DistinguishedNameColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$SelectColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewButtonColumn)
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$UserInfoGroupbox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel2 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel8 = (New-Object -TypeName System.Windows.Forms.Panel)
$descriptionTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label15 = (New-Object -TypeName System.Windows.Forms.Label)
$panel7 = (New-Object -TypeName System.Windows.Forms.Panel)
$citizenshipTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$panel6 = (New-Object -TypeName System.Windows.Forms.Panel)
$suffixCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$panel5 = (New-Object -TypeName System.Windows.Forms.Panel)
$edipiTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$edipiLabel = (New-Object -TypeName System.Windows.Forms.Label)
$panel4 = (New-Object -TypeName System.Windows.Forms.Panel)
$initialTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$panel3 = (New-Object -TypeName System.Windows.Forms.Panel)
$firstNameTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$panel2 = (New-Object -TypeName System.Windows.Forms.Panel)
$lastNameTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$employmentInfoGroupbox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel3 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$expirationDateTimePicker = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$accountExpirationCheckbox = (New-Object -TypeName System.Windows.Forms.CheckBox)
$panel20 = (New-Object -TypeName System.Windows.Forms.Panel)
$officeSymbolTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label23 = (New-Object -TypeName System.Windows.Forms.Label)
$panel19 = (New-Object -TypeName System.Windows.Forms.Panel)
$unitComboBox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label24 = (New-Object -TypeName System.Windows.Forms.Label)
$panel18 = (New-Object -TypeName System.Windows.Forms.Panel)
$baseNameCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label25 = (New-Object -TypeName System.Windows.Forms.Label)
$panel17 = (New-Object -TypeName System.Windows.Forms.Panel)
$MAJCOMCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label10 = (New-Object -TypeName System.Windows.Forms.Label)
$panel15 = (New-Object -TypeName System.Windows.Forms.Panel)
$payGradeCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$panel14 = (New-Object -TypeName System.Windows.Forms.Panel)
$payPlanCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label7 = (New-Object -TypeName System.Windows.Forms.Label)
$panel12 = (New-Object -TypeName System.Windows.Forms.Panel)
$titleTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$panel10 = (New-Object -TypeName System.Windows.Forms.Panel)
$branchCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label9 = (New-Object -TypeName System.Windows.Forms.Label)
$panel11 = (New-Object -TypeName System.Windows.Forms.Panel)
$employeeTypeCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$employeeTypeLabel = (New-Object -TypeName System.Windows.Forms.Label)
$contactInfoGroupbox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel4 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel16 = (New-Object -TypeName System.Windows.Forms.Panel)
$emailTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label14 = (New-Object -TypeName System.Windows.Forms.Label)
$panel13 = (New-Object -TypeName System.Windows.Forms.Panel)
$phoneTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label13 = (New-Object -TypeName System.Windows.Forms.Label)
$locationInfoGroupbox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel5 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel29 = (New-Object -TypeName System.Windows.Forms.Panel)
$countryTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label20 = (New-Object -TypeName System.Windows.Forms.Label)
$panel28 = (New-Object -TypeName System.Windows.Forms.Panel)
$zipTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label19 = (New-Object -TypeName System.Windows.Forms.Label)
$panel27 = (New-Object -TypeName System.Windows.Forms.Panel)
$stateTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label18 = (New-Object -TypeName System.Windows.Forms.Label)
$panel25 = (New-Object -TypeName System.Windows.Forms.Panel)
$streetTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label16 = (New-Object -TypeName System.Windows.Forms.Label)
$panel26 = (New-Object -TypeName System.Windows.Forms.Panel)
$cityTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label17 = (New-Object -TypeName System.Windows.Forms.Label)
$savePanel = (New-Object -TypeName System.Windows.Forms.Panel)
$label12 = (New-Object -TypeName System.Windows.Forms.Label)
$DcBox = (New-Object -TypeName System.Windows.Forms.Label)
$cancelButton = (New-Object -TypeName System.Windows.Forms.Button)
$editButton = (New-Object -TypeName System.Windows.Forms.Button)
$accountActionGroupbox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel6 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$enableLinkLabel = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$lockedLabel = (New-Object -TypeName System.Windows.Forms.Label)
$unlockLinkLabel = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$enabledLabel = (New-Object -TypeName System.Windows.Forms.Label)
$panel9 = (New-Object -TypeName System.Windows.Forms.Panel)
$dormantDate = (New-Object -TypeName System.Windows.Forms.Label)
$dormantLabel = (New-Object -TypeName System.Windows.Forms.Label)
$panel22 = (New-Object -TypeName System.Windows.Forms.Panel)
$clearDormantStatusLinkLabel = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$setDormantStatusLinkLabel = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$errorProvider1 = (New-Object -TypeName System.Windows.Forms.ErrorProvider -ArgumentList @($components))
$toolTip1 = (New-Object -TypeName System.Windows.Forms.ToolTip -ArgumentList @($components))
$SearchGroupBox.SuspendLayout()
$tableLayoutPanel1.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$resultDataGridView).BeginInit()
$UserInfoGroupbox.SuspendLayout()
$tableLayoutPanel2.SuspendLayout()
$panel8.SuspendLayout()
$panel7.SuspendLayout()
$panel6.SuspendLayout()
$panel5.SuspendLayout()
$panel4.SuspendLayout()
$panel3.SuspendLayout()
$panel2.SuspendLayout()
$employmentInfoGroupbox.SuspendLayout()
$tableLayoutPanel3.SuspendLayout()
$panel1.SuspendLayout()
$panel20.SuspendLayout()
$panel19.SuspendLayout()
$panel18.SuspendLayout()
$panel17.SuspendLayout()
$panel15.SuspendLayout()
$panel14.SuspendLayout()
$panel12.SuspendLayout()
$panel10.SuspendLayout()
$panel11.SuspendLayout()
$contactInfoGroupbox.SuspendLayout()
$tableLayoutPanel4.SuspendLayout()
$panel16.SuspendLayout()
$panel13.SuspendLayout()
$locationInfoGroupbox.SuspendLayout()
$tableLayoutPanel5.SuspendLayout()
$panel29.SuspendLayout()
$panel28.SuspendLayout()
$panel27.SuspendLayout()
$panel25.SuspendLayout()
$panel26.SuspendLayout()
$savePanel.SuspendLayout()
$accountActionGroupbox.SuspendLayout()
$tableLayoutPanel6.SuspendLayout()
$panel9.SuspendLayout()
$panel22.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$errorProvider1).BeginInit()
$EditUserForm.SuspendLayout()
#
#userEditLabel
#
$userEditLabel.AutoSize = $true
$userEditLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$userEditLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]16.125,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$userEditLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$userEditLabel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$userEditLabel.Name = [System.String]'userEditLabel'
$userEditLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]20))
$userEditLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]210,[System.Int32]51))
$userEditLabel.TabIndex = [System.Int32]1
$userEditLabel.Text = [System.String]'Edit User Form'
#
#SearchGroupBox
#
$SearchGroupBox.AutoSize = $true
$SearchGroupBox.Controls.Add($tableLayoutPanel1)
$SearchGroupBox.Dock = [System.Windows.Forms.DockStyle]::Top
$SearchGroupBox.ForeColor = [System.Drawing.SystemColors]::Control
$SearchGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]61))
$SearchGroupBox.Name = [System.String]'SearchGroupBox'
$SearchGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1320,[System.Int32]395))
$SearchGroupBox.TabIndex = [System.Int32]56
$SearchGroupBox.TabStop = $false
$SearchGroupBox.Text = [System.String]'User Searcher'
#
#tableLayoutPanel1
#
$tableLayoutPanel1.AutoSize = $true
$tableLayoutPanel1.ColumnCount = [System.Int32]3
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.Controls.Add($searchButton,[System.Int32]2,[System.Int32]0)
$tableLayoutPanel1.Controls.Add($searchStringTextBox,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel1.Controls.Add($resultDataGridView,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel1.Controls.Add($button2,[System.Int32]2,[System.Int32]2)
$tableLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel1.Name = [System.String]'tableLayoutPanel1'
$tableLayoutPanel1.RowCount = [System.Int32]3
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]83.33334)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]16.66667)))
$tableLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1314,[System.Int32]366))
$tableLayoutPanel1.TabIndex = [System.Int32]0
#
#searchButton
#
$searchButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$searchButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$searchButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$searchButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$searchButton.ForeColor = [System.Drawing.Color]::Black
$searchButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]988,[System.Int32]3))
$searchButton.Name = [System.String]'searchButton'
$searchButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]323,[System.Int32]30))
$searchButton.TabIndex = [System.Int32]6
$searchButton.Text = [System.String]'Search'
$searchButton.UseVisualStyleBackColor = $false
$searchButton.add_Click($searchButton_Click)
#
#searchStringTextBox
#
$tableLayoutPanel1.SetColumnSpan($searchStringTextBox,[System.Int32]2)
$searchStringTextBox.Dock = [System.Windows.Forms.DockStyle]::Top
$searchStringTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$searchStringTextBox.Name = [System.String]'searchStringTextBox'
$searchStringTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]979,[System.Int32]30))
$searchStringTextBox.TabIndex = [System.Int32]0
$searchStringTextBox.add_PreviewKeyDown($searchStringTextbox_KeyDown)
#
#resultDataGridView
#
$resultDataGridView.AllowUserToAddRows = $false
$resultDataGridView.AllowUserToDeleteRows = $false
$resultDataGridView.AllowUserToResizeRows = $false
$resultDataGridView.AutoSizeColumnsMode = [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]::Fill
$resultDataGridView.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$resultDataGridView.Columns.AddRange($NameColumn,$DistinguishedNameColumn,$SelectColumn)
$tableLayoutPanel1.SetColumnSpan($resultDataGridView,[System.Int32]3)
$resultDataGridView.Dock = [System.Windows.Forms.DockStyle]::Fill
$resultDataGridView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]39))
$resultDataGridView.Name = [System.String]'resultDataGridView'
$resultDataGridView.ReadOnly = $true
$resultDataGridView.RowHeadersVisible = $false
$resultDataGridView.RowHeadersWidth = [System.Int32]62
$resultDataGridView.RowTemplate.DefaultCellStyle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$resultDataGridView.RowTemplate.DefaultCellStyle.ForeColor = [System.Drawing.Color]::Black
$resultDataGridView.RowTemplate.DefaultCellStyle.SelectionForeColor = [System.Drawing.Color]::Black
$resultDataGridView.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$resultDataGridView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1308,[System.Int32]269))
$resultDataGridView.TabIndex = [System.Int32]7
$resultDataGridView.add_CellContentClick($resultDataGridView_CellContentClick)
#
#NameColumn
#
$NameColumn.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$NameColumn.HeaderText = [System.String]'Name'
$NameColumn.MinimumWidth = [System.Int32]8
$NameColumn.Name = [System.String]'NameColumn'
$NameColumn.ReadOnly = $true
$NameColumn.Width = [System.Int32]93
#
#DistinguishedNameColumn
#
$DistinguishedNameColumn.HeaderText = [System.String]'DistinguishedName'
$DistinguishedNameColumn.MinimumWidth = [System.Int32]8
$DistinguishedNameColumn.Name = [System.String]'DistinguishedNameColumn'
$DistinguishedNameColumn.ReadOnly = $true
#
#SelectColumn
#
$SelectColumn.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCellsExceptHeader
$dataGridViewCellStyle1.Alignment = [System.Windows.Forms.DataGridViewContentAlignment]::MiddleCenter
$dataGridViewCellStyle1.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$dataGridViewCellStyle1.SelectionBackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$dataGridViewCellStyle1.SelectionForeColor = [System.Drawing.Color]::Black
$SelectColumn.DefaultCellStyle = $dataGridViewCellStyle1
$SelectColumn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$SelectColumn.HeaderText = [System.String]''
$SelectColumn.MinimumWidth = [System.Int32]8
$SelectColumn.Name = [System.String]'SelectColumn'
$SelectColumn.ReadOnly = $true
$SelectColumn.Width = [System.Int32]8
#
#button2
#
$button2.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$button2.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$button2.Dock = [System.Windows.Forms.DockStyle]::Fill
$button2.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$button2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold))
$button2.ForeColor = [System.Drawing.Color]::Black
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]988,[System.Int32]314))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]323,[System.Int32]49))
$button2.TabIndex = [System.Int32]8
$button2.Text = [System.String]'Cancel'
$button2.UseVisualStyleBackColor = $false
#
#UserInfoGroupbox
#
$UserInfoGroupbox.AutoSize = $true
$UserInfoGroupbox.Controls.Add($tableLayoutPanel2)
$UserInfoGroupbox.Dock = [System.Windows.Forms.DockStyle]::Top
$UserInfoGroupbox.ForeColor = [System.Drawing.SystemColors]::Control
$UserInfoGroupbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]456))
$UserInfoGroupbox.Name = [System.String]'UserInfoGroupbox'
$UserInfoGroupbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1320,[System.Int32]330))
$UserInfoGroupbox.TabIndex = [System.Int32]57
$UserInfoGroupbox.TabStop = $false
$UserInfoGroupbox.Text = [System.String]'User Information'
$UserInfoGroupbox.Visible = $false
#
#tableLayoutPanel2
#
$tableLayoutPanel2.ColumnCount = [System.Int32]4
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]16.66667)))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.22368)))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel2.Controls.Add($panel8,[System.Int32]0,[System.Int32]3)
$tableLayoutPanel2.Controls.Add($panel7,[System.Int32]3,[System.Int32]2)
$tableLayoutPanel2.Controls.Add($panel5,[System.Int32]2,[System.Int32]2)
$tableLayoutPanel2.Controls.Add($panel6,[System.Int32]1,[System.Int32]2)
$tableLayoutPanel2.Controls.Add($panel4,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel2.Controls.Add($panel3,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel2.Controls.Add($panel2,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel2.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel2.Name = [System.String]'tableLayoutPanel2'
$tableLayoutPanel2.RowCount = [System.Int32]4
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1314,[System.Int32]301))
$tableLayoutPanel2.TabIndex = [System.Int32]36
#
#panel8
#
$tableLayoutPanel2.SetColumnSpan($panel8,[System.Int32]4)
$panel8.Controls.Add($descriptionTextbox)
$panel8.Controls.Add($label15)
$panel8.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]228))
$panel8.Name = [System.String]'panel8'
$panel8.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1308,[System.Int32]70))
$panel8.TabIndex = [System.Int32]6
#
#descriptionTextbox
#
$descriptionTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$descriptionTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$descriptionTextbox.Name = [System.String]'descriptionTextbox'
$descriptionTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1288,[System.Int32]30))
$descriptionTextbox.TabIndex = [System.Int32]7
$descriptionTextbox.Tag = [System.String]''
#
#label15
#
$label15.AutoSize = $true
$label15.Dock = [System.Windows.Forms.DockStyle]::Top
$label15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label15.Name = [System.String]'label15'
$label15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]109,[System.Int32]25))
$label15.TabIndex = [System.Int32]35
$label15.Text = [System.String]'Description'
#
#panel7
#
$panel7.Controls.Add($citizenshipTextbox)
$panel7.Controls.Add($label1)
$panel7.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]987,[System.Int32]153))
$panel7.Name = [System.String]'panel7'
$panel7.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]324,[System.Int32]69))
$panel7.TabIndex = [System.Int32]5
#
#citizenshipTextbox
#
$citizenshipTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$citizenshipTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$citizenshipTextbox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]30))
$citizenshipTextbox.MaxLength = [System.Int32]2
$citizenshipTextbox.Name = [System.String]'citizenshipTextbox'
$citizenshipTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]304,[System.Int32]30))
$citizenshipTextbox.TabIndex = [System.Int32]20
$citizenshipTextbox.Tag = [System.String]'Mandatory'
$citizenshipTextbox.add_Validating($citizenshipTextbox_Validating)
$citizenshipTextbox.add_Validated($control_Validated)
#
#label1
#
$label1.AutoSize = $true
$label1.Dock = [System.Windows.Forms.DockStyle]::Top
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]116,[System.Int32]25))
$label1.TabIndex = [System.Int32]21
$label1.Text = [System.String]'Citizenship*'
#
#panel6
#
$panel6.Controls.Add($suffixCombobox)
$panel6.Controls.Add($label5)
$panel6.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]659,[System.Int32]153))
$panel6.Name = [System.String]'panel6'
$panel6.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]322,[System.Int32]69))
$panel6.TabIndex = [System.Int32]3
#
#suffixCombobox
#
$suffixCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$suffixCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$suffixCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$suffixCombobox.FormattingEnabled = $true
$suffixCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$suffixCombobox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]30))
$suffixCombobox.Name = [System.String]'suffixCombobox'
$suffixCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]302,[System.Int32]33))
$suffixCombobox.TabIndex = [System.Int32]18
#
#label5
#
$label5.AutoSize = $true
$label5.Dock = [System.Windows.Forms.DockStyle]::Top
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]61,[System.Int32]25))
$label5.TabIndex = [System.Int32]19
$label5.Text = [System.String]'Suffix'
#
#panel5
#
$panel5.Controls.Add($edipiTextbox)
$panel5.Controls.Add($edipiLabel)
$panel5.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]222,[System.Int32]153))
$panel5.Name = [System.String]'panel5'
$panel5.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]431,[System.Int32]69))
$panel5.TabIndex = [System.Int32]4
#
#edipiTextbox
#
$edipiTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$edipiTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$edipiTextbox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]30))
$edipiTextbox.MaxLength = [System.Int32]10
$edipiTextbox.Name = [System.String]'edipiTextbox'
$edipiTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]411,[System.Int32]30))
$edipiTextbox.TabIndex = [System.Int32]6
$edipiTextbox.Tag = [System.String]'Mandatory'
$edipiTextbox.add_Validating($edipiTextbox_Validating)
$edipiTextbox.add_Validated($control_Validated)
#
#edipiLabel
#
$edipiLabel.AutoSize = $true
$edipiLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$edipiLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$edipiLabel.Name = [System.String]'edipiLabel'
$edipiLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]70,[System.Int32]25))
$edipiLabel.TabIndex = [System.Int32]5
$edipiLabel.Text = [System.String]'EDIPI*'
#
#panel4
#
$panel4.Controls.Add($initialTextbox)
$panel4.Controls.Add($label4)
$panel4.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]153))
$panel4.Name = [System.String]'panel4'
$panel4.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]213,[System.Int32]69))
$panel4.TabIndex = [System.Int32]2
#
#initialTextbox
#
$initialTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$initialTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$initialTextbox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]30))
$initialTextbox.MaxLength = [System.Int32]1
$initialTextbox.Name = [System.String]'initialTextbox'
$initialTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]193,[System.Int32]30))
$initialTextbox.TabIndex = [System.Int32]16
$initialTextbox.add_Validating($initialTextbox_Validating)
$initialTextbox.add_Validated($control_Validated)
#
#label4
#
$label4.AutoSize = $true
$label4.Dock = [System.Windows.Forms.DockStyle]::Top
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]25))
$label4.TabIndex = [System.Int32]17
$label4.Text = [System.String]'MI*'
#
#panel3
#
$tableLayoutPanel2.SetColumnSpan($panel3,[System.Int32]4)
$panel3.Controls.Add($firstNameTextbox)
$panel3.Controls.Add($label3)
$panel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]78))
$panel3.Name = [System.String]'panel3'
$panel3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1308,[System.Int32]69))
$panel3.TabIndex = [System.Int32]1
#
#firstNameTextbox
#
$firstNameTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$firstNameTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$firstNameTextbox.Name = [System.String]'firstNameTextbox'
$firstNameTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1288,[System.Int32]30))
$firstNameTextbox.TabIndex = [System.Int32]2
$firstNameTextbox.Tag = [System.String]'Mandatory'
$firstNameTextbox.add_Validating($firstNameTextbox_Validating)
$firstNameTextbox.add_Validated($control_Validated)
#
#label3
#
$label3.AutoSize = $true
$label3.Dock = [System.Windows.Forms.DockStyle]::Top
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]114,[System.Int32]25))
$label3.TabIndex = [System.Int32]13
$label3.Text = [System.String]'First Name*'
#
#panel2
#
$tableLayoutPanel2.SetColumnSpan($panel2,[System.Int32]4)
$panel2.Controls.Add($lastNameTextbox)
$panel2.Controls.Add($label2)
$panel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel2.Name = [System.String]'panel2'
$panel2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1308,[System.Int32]69))
$panel2.TabIndex = [System.Int32]0
#
#lastNameTextbox
#
$lastNameTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$lastNameTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$lastNameTextbox.Name = [System.String]'lastNameTextbox'
$lastNameTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1288,[System.Int32]30))
$lastNameTextbox.TabIndex = [System.Int32]12
$lastNameTextbox.Tag = [System.String]'Mandatory'
$lastNameTextbox.add_Validating($lastNameTextbox_Validating)
$lastNameTextbox.add_Validated($control_Validated)
#
#label2
#
$label2.AutoSize = $true
$label2.Dock = [System.Windows.Forms.DockStyle]::Top
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]114,[System.Int32]25))
$label2.TabIndex = [System.Int32]13
$label2.Text = [System.String]'Last Name*'
#
#employmentInfoGroupbox
#
$employmentInfoGroupbox.AutoSize = $true
$employmentInfoGroupbox.Controls.Add($tableLayoutPanel3)
$employmentInfoGroupbox.Dock = [System.Windows.Forms.DockStyle]::Top
$employmentInfoGroupbox.ForeColor = [System.Drawing.SystemColors]::Control
$employmentInfoGroupbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]786))
$employmentInfoGroupbox.Name = [System.String]'employmentInfoGroupbox'
$employmentInfoGroupbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1320,[System.Int32]380))
$employmentInfoGroupbox.TabIndex = [System.Int32]58
$employmentInfoGroupbox.TabStop = $false
$employmentInfoGroupbox.Text = [System.String]'Employment Information'
$employmentInfoGroupbox.Visible = $false
#
#tableLayoutPanel3
#
$tableLayoutPanel3.AutoSize = $true
$tableLayoutPanel3.ColumnCount = [System.Int32]3
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel3.Controls.Add($panel1,[System.Int32]0,[System.Int32]4)
$tableLayoutPanel3.Controls.Add($panel20,[System.Int32]2,[System.Int32]3)
$tableLayoutPanel3.Controls.Add($panel19,[System.Int32]1,[System.Int32]3)
$tableLayoutPanel3.Controls.Add($panel18,[System.Int32]0,[System.Int32]3)
$tableLayoutPanel3.Controls.Add($panel17,[System.Int32]1,[System.Int32]2)
$tableLayoutPanel3.Controls.Add($panel15,[System.Int32]1,[System.Int32]1)
$tableLayoutPanel3.Controls.Add($panel14,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel3.Controls.Add($panel12,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel3.Controls.Add($panel10,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel3.Controls.Add($panel11,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel3.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel3.Name = [System.String]'tableLayoutPanel3'
$tableLayoutPanel3.RowCount = [System.Int32]5
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle))
$tableLayoutPanel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1314,[System.Int32]351))
$tableLayoutPanel3.TabIndex = [System.Int32]0
#
#panel1
#
$panel1.AutoSize = $true
$panel1.Controls.Add($expirationDateTimePicker)
$panel1.Controls.Add($accountExpirationCheckbox)
$panel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]279))
$panel1.Name = [System.String]'panel1'
$panel1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]0,[System.Int32]0))
$panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]69))
$panel1.TabIndex = [System.Int32]16
#
#expirationDateTimePicker
#
$expirationDateTimePicker.Dock = [System.Windows.Forms.DockStyle]::Top
$expirationDateTimePicker.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]39))
$expirationDateTimePicker.Name = [System.String]'expirationDateTimePicker'
$expirationDateTimePicker.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]30))
$expirationDateTimePicker.TabIndex = [System.Int32]30
$expirationDateTimePicker.Visible = $false
#
#accountExpirationCheckbox
#
$accountExpirationCheckbox.AutoSize = $true
$accountExpirationCheckbox.Dock = [System.Windows.Forms.DockStyle]::Top
$accountExpirationCheckbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$accountExpirationCheckbox.Name = [System.String]'accountExpirationCheckbox'
$accountExpirationCheckbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]29))
$accountExpirationCheckbox.TabIndex = [System.Int32]29
$accountExpirationCheckbox.Text = [System.String]'Set account expiration date'
$accountExpirationCheckbox.UseVisualStyleBackColor = $true
$accountExpirationCheckbox.add_CheckedChanged($accountExpirationCheckbox_CheckedChanged)
#
#panel20
#
$panel20.Controls.Add($officeSymbolTextbox)
$panel20.Controls.Add($label23)
$panel20.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel20.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]879,[System.Int32]210))
$panel20.Name = [System.String]'panel20'
$panel20.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel20.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]63))
$panel20.TabIndex = [System.Int32]14
#
#officeSymbolTextbox
#
$officeSymbolTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$officeSymbolTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$officeSymbolTextbox.Name = [System.String]'officeSymbolTextbox'
$officeSymbolTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]30))
$officeSymbolTextbox.TabIndex = [System.Int32]49
$officeSymbolTextbox.Tag = [System.String]'Mandatory'
$officeSymbolTextbox.add_Validating($validating_NotBlank)
$officeSymbolTextbox.add_Validated($control_Validated)
#
#label23
#
$label23.AutoSize = $true
$label23.Dock = [System.Windows.Forms.DockStyle]::Top
$label23.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label23.Name = [System.String]'label23'
$label23.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]142,[System.Int32]25))
$label23.TabIndex = [System.Int32]50
$label23.Text = [System.String]'Office Symbol*'
#
#panel19
#
$panel19.Controls.Add($unitComboBox)
$panel19.Controls.Add($label24)
$panel19.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel19.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]441,[System.Int32]210))
$panel19.Name = [System.String]'panel19'
$panel19.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel19.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]63))
$panel19.TabIndex = [System.Int32]13
#
#unitComboBox
#
$unitComboBox.Dock = [System.Windows.Forms.DockStyle]::Top
$unitComboBox.FormattingEnabled = $true
$unitComboBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$unitComboBox.Name = [System.String]'unitComboBox'
$unitComboBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]33))
$unitComboBox.TabIndex = [System.Int32]48
$unitComboBox.Tag = [System.String]'Mandatory'
$unitComboBox.add_Validating($validating_NotBlank)
$unitComboBox.add_Validated($control_Validated)
#
#label24
#
$label24.AutoSize = $true
$label24.Dock = [System.Windows.Forms.DockStyle]::Top
$label24.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label24.Name = [System.String]'label24'
$label24.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]54,[System.Int32]25))
$label24.TabIndex = [System.Int32]49
$label24.Text = [System.String]'Unit*'
#
#panel18
#
$panel18.Controls.Add($baseNameCombobox)
$panel18.Controls.Add($label25)
$panel18.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel18.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]210))
$panel18.Name = [System.String]'panel18'
$panel18.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel18.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]63))
$panel18.TabIndex = [System.Int32]12
#
#baseNameCombobox
#
$baseNameCombobox.DisplayMember = [System.String]'Name'
$baseNameCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$baseNameCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$baseNameCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$baseNameCombobox.FormattingEnabled = $true
$baseNameCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$baseNameCombobox.Name = [System.String]'baseNameCombobox'
$baseNameCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]33))
$baseNameCombobox.TabIndex = [System.Int32]53
$baseNameCombobox.Tag = [System.String]'Mandatory'
$baseNameCombobox.add_SelectedIndexChanged($baseNameCombobox_SelectedIndexChange)
$baseNameCombobox.add_Validating($validating_NotBlank)
$baseNameCombobox.add_Validated($control_Validated)
#
#label25
#
$label25.AutoSize = $true
$label25.Dock = [System.Windows.Forms.DockStyle]::Top
$label25.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label25.Name = [System.String]'label25'
$label25.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]122,[System.Int32]25))
$label25.TabIndex = [System.Int32]52
$label25.Text = [System.String]'Base Name*'
#
#panel17
#
$tableLayoutPanel3.SetColumnSpan($panel17,[System.Int32]2)
$panel17.Controls.Add($MAJCOMCombobox)
$panel17.Controls.Add($label10)
$panel17.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel17.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]441,[System.Int32]141))
$panel17.Name = [System.String]'panel17'
$panel17.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel17.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]870,[System.Int32]63))
$panel17.TabIndex = [System.Int32]11
#
#MAJCOMCombobox
#
$MAJCOMCombobox.DisplayMember = [System.String]'LongName'
$MAJCOMCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$MAJCOMCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$MAJCOMCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$MAJCOMCombobox.FormattingEnabled = $true
$MAJCOMCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$MAJCOMCombobox.Name = [System.String]'MAJCOMCombobox'
$MAJCOMCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]850,[System.Int32]33))
$MAJCOMCombobox.Sorted = $true
$MAJCOMCombobox.TabIndex = [System.Int32]13
$MAJCOMCombobox.Tag = [System.String]'Mandatory'
$MAJCOMCombobox.add_Validating($validating_NotBlank)
$MAJCOMCombobox.add_Validated($control_Validated)
#
#label10
#
$label10.AutoSize = $true
$label10.Dock = [System.Windows.Forms.DockStyle]::Top
$label10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label10.Name = [System.String]'label10'
$label10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]110,[System.Int32]25))
$label10.TabIndex = [System.Int32]21
$label10.Text = [System.String]'MAJCOM*'
#
#panel15
#
$panel15.Controls.Add($payGradeCombobox)
$panel15.Controls.Add($label8)
$panel15.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]441,[System.Int32]72))
$panel15.Name = [System.String]'panel15'
$panel15.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]63))
$panel15.TabIndex = [System.Int32]9
#
#payGradeCombobox
#
$payGradeCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$payGradeCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$payGradeCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$payGradeCombobox.FormattingEnabled = $true
$payGradeCombobox.Items.AddRange([System.Object[]]@([System.String]'0',[System.String]'1',[System.String]'2',[System.String]'3',[System.String]'4',[System.String]'5',[System.String]'6',[System.String]'7',[System.String]'8',[System.String]'9',[System.String]'10',[System.String]'11',[System.String]'12',[System.String]'13',[System.String]'14',[System.String]'15'))
$payGradeCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$payGradeCombobox.Name = [System.String]'payGradeCombobox'
$payGradeCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]33))
$payGradeCombobox.TabIndex = [System.Int32]11
$payGradeCombobox.Tag = [System.String]'Mandatory'
$payGradeCombobox.add_Validating($validating_NotBlank)
$payGradeCombobox.add_Validated($control_Validated)
#
#label8
#
$label8.AutoSize = $true
$label8.Dock = [System.Windows.Forms.DockStyle]::Top
$label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label8.Name = [System.String]'label8'
$label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]113,[System.Int32]25))
$label8.TabIndex = [System.Int32]19
$label8.Text = [System.String]'Pay Grade*'
#
#panel14
#
$panel14.Controls.Add($payPlanCombobox)
$panel14.Controls.Add($label7)
$panel14.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]72))
$panel14.Name = [System.String]'panel14'
$panel14.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]63))
$panel14.TabIndex = [System.Int32]8
#
#payPlanCombobox
#
$payPlanCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$payPlanCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$payPlanCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$payPlanCombobox.FormattingEnabled = $true
$payPlanCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$payPlanCombobox.Name = [System.String]'payPlanCombobox'
$payPlanCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]33))
$payPlanCombobox.TabIndex = [System.Int32]10
$payPlanCombobox.Tag = [System.String]'Mandatory'
$payPlanCombobox.add_Validating($validating_NotBlank)
$payPlanCombobox.add_Validated($control_Validated)
#
#label7
#
$label7.AutoSize = $true
$label7.Dock = [System.Windows.Forms.DockStyle]::Top
$label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label7.Name = [System.String]'label7'
$label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]98,[System.Int32]25))
$label7.TabIndex = [System.Int32]18
$label7.Text = [System.String]'Pay Plan*'
#
#panel12
#
$panel12.Controls.Add($titleTextbox)
$panel12.Controls.Add($label6)
$panel12.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]441,[System.Int32]3))
$panel12.Name = [System.String]'panel12'
$panel12.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]63))
$panel12.TabIndex = [System.Int32]7
#
#titleTextbox
#
$titleTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$titleTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$titleTextbox.Name = [System.String]'titleTextbox'
$titleTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]30))
$titleTextbox.TabIndex = [System.Int32]9
$titleTextbox.Tag = [System.String]'Mandatory'
$titleTextbox.add_Validating($validating_NotBlank)
$titleTextbox.add_Validated($control_Validated)
#
#label6
#
$label6.AutoSize = $true
$label6.Dock = [System.Windows.Forms.DockStyle]::Top
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label6.Name = [System.String]'label6'
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]108,[System.Int32]25))
$label6.TabIndex = [System.Int32]17
$label6.Text = [System.String]'Title/Rank*'
#
#panel10
#
$panel10.Controls.Add($branchCombobox)
$panel10.Controls.Add($label9)
$panel10.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]141))
$panel10.Name = [System.String]'panel10'
$panel10.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]63))
$panel10.TabIndex = [System.Int32]10
#
#branchCombobox
#
$branchCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$branchCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$branchCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$branchCombobox.FormattingEnabled = $true
$branchCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$branchCombobox.Name = [System.String]'branchCombobox'
$branchCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]33))
$branchCombobox.TabIndex = [System.Int32]21
$branchCombobox.Tag = [System.String]'Mandatory'
$branchCombobox.add_Validating($validating_NotBlank)
$branchCombobox.add_Validated($control_Validated)
#
#label9
#
$label9.AutoSize = $true
$label9.Dock = [System.Windows.Forms.DockStyle]::Top
$label9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label9.Name = [System.String]'label9'
$label9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]82,[System.Int32]25))
$label9.TabIndex = [System.Int32]22
$label9.Text = [System.String]'Branch*'
#
#panel11
#
$panel11.Controls.Add($employeeTypeCombobox)
$panel11.Controls.Add($employeeTypeLabel)
$panel11.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel11.Name = [System.String]'panel11'
$panel11.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]63))
$panel11.TabIndex = [System.Int32]6
#
#employeeTypeCombobox
#
$employeeTypeCombobox.DisplayMember = [System.String]'DisplayName'
$employeeTypeCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$employeeTypeCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$employeeTypeCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$employeeTypeCombobox.FormattingEnabled = $true
$employeeTypeCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$employeeTypeCombobox.Name = [System.String]'employeeTypeCombobox'
$employeeTypeCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]33))
$employeeTypeCombobox.TabIndex = [System.Int32]8
$employeeTypeCombobox.Tag = [System.String]'Mandatory'
$employeeTypeCombobox.add_Validating($validating_NotBlank)
$employeeTypeCombobox.add_Validated($control_Validated)
#
#employeeTypeLabel
#
$employeeTypeLabel.AutoSize = $true
$employeeTypeLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$employeeTypeLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$employeeTypeLabel.Name = [System.String]'employeeTypeLabel'
$employeeTypeLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]157,[System.Int32]25))
$employeeTypeLabel.TabIndex = [System.Int32]5
$employeeTypeLabel.Text = [System.String]'Employee Type*'
#
#contactInfoGroupbox
#
$contactInfoGroupbox.AutoSize = $true
$contactInfoGroupbox.Controls.Add($tableLayoutPanel4)
$contactInfoGroupbox.Dock = [System.Windows.Forms.DockStyle]::Top
$contactInfoGroupbox.ForeColor = [System.Drawing.SystemColors]::Control
$contactInfoGroupbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1166))
$contactInfoGroupbox.Name = [System.String]'contactInfoGroupbox'
$contactInfoGroupbox.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]10))
$contactInfoGroupbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1320,[System.Int32]106))
$contactInfoGroupbox.TabIndex = [System.Int32]59
$contactInfoGroupbox.TabStop = $false
$contactInfoGroupbox.Text = [System.String]'Contact Information'
$contactInfoGroupbox.Visible = $false
#
#tableLayoutPanel4
#
$tableLayoutPanel4.ColumnCount = [System.Int32]2
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]66.66666)))
$tableLayoutPanel4.Controls.Add($panel16,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel4.Controls.Add($panel13,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel4.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel4.Name = [System.String]'tableLayoutPanel4'
$tableLayoutPanel4.RowCount = [System.Int32]1
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1314,[System.Int32]70))
$tableLayoutPanel4.TabIndex = [System.Int32]0
#
#panel16
#
$panel16.Controls.Add($emailTextbox)
$panel16.Controls.Add($label14)
$panel16.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]441,[System.Int32]3))
$panel16.Name = [System.String]'panel16'
$panel16.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]870,[System.Int32]64))
$panel16.TabIndex = [System.Int32]17
#
#emailTextbox
#
$emailTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$emailTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$emailTextbox.Name = [System.String]'emailTextbox'
$emailTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]850,[System.Int32]30))
$emailTextbox.TabIndex = [System.Int32]30
$emailTextbox.Tag = [System.String]'Mandatory'
$emailTextbox.add_Validating($emailTextbox_Validating)
$emailTextbox.add_Validated($control_Validated)
#
#label14
#
$label14.AutoSize = $true
$label14.Dock = [System.Windows.Forms.DockStyle]::Top
$label14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label14.Name = [System.String]'label14'
$label14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]68,[System.Int32]25))
$label14.TabIndex = [System.Int32]31
$label14.Text = [System.String]'Email*'
#
#panel13
#
$panel13.Controls.Add($phoneTextbox)
$panel13.Controls.Add($label13)
$panel13.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel13.Name = [System.String]'panel13'
$panel13.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]432,[System.Int32]64))
$panel13.TabIndex = [System.Int32]16
#
#phoneTextbox
#
$phoneTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$phoneTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$phoneTextbox.MaxLength = [System.Int32]12
$phoneTextbox.Name = [System.String]'phoneTextbox'
$phoneTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]30))
$phoneTextbox.TabIndex = [System.Int32]28
$phoneTextbox.Tag = [System.String]'Mandatory'
$phoneTextbox.add_Validating($phoneTextbox_Validating)
$phoneTextbox.add_Validated($control_Validated)
#
#label13
#
$label13.AutoSize = $true
$label13.Dock = [System.Windows.Forms.DockStyle]::Top
$label13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label13.Name = [System.String]'label13'
$label13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]124,[System.Int32]25))
$label13.TabIndex = [System.Int32]29
$label13.Text = [System.String]'DSN Phone*'
#
#locationInfoGroupbox
#
$locationInfoGroupbox.Controls.Add($tableLayoutPanel5)
$locationInfoGroupbox.Dock = [System.Windows.Forms.DockStyle]::Top
$locationInfoGroupbox.ForeColor = [System.Drawing.SystemColors]::Control
$locationInfoGroupbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1272))
$locationInfoGroupbox.Name = [System.String]'locationInfoGroupbox'
$locationInfoGroupbox.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]10))
$locationInfoGroupbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1320,[System.Int32]159))
$locationInfoGroupbox.TabIndex = [System.Int32]5
$locationInfoGroupbox.TabStop = $false
$locationInfoGroupbox.Text = [System.String]'Location Information'
$locationInfoGroupbox.Visible = $false
#
#tableLayoutPanel5
#
$tableLayoutPanel5.ColumnCount = [System.Int32]4
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]31.51863)))
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]24.54632)))
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]18.81566)))
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel5.Controls.Add($panel29,[System.Int32]3,[System.Int32]1)
$tableLayoutPanel5.Controls.Add($panel28,[System.Int32]2,[System.Int32]1)
$tableLayoutPanel5.Controls.Add($panel27,[System.Int32]1,[System.Int32]1)
$tableLayoutPanel5.Controls.Add($panel25,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel5.Controls.Add($panel26,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel5.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel5.Name = [System.String]'tableLayoutPanel5'
$tableLayoutPanel5.RowCount = [System.Int32]2
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]49.62406)))
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50.37594)))
$tableLayoutPanel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1314,[System.Int32]127))
$tableLayoutPanel5.TabIndex = [System.Int32]0
#
#panel29
#
$panel29.Controls.Add($countryTextbox)
$panel29.Controls.Add($label20)
$panel29.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel29.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]986,[System.Int32]66))
$panel29.Name = [System.String]'panel29'
$panel29.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel29.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]325,[System.Int32]58))
$panel29.TabIndex = [System.Int32]25
#
#countryTextbox
#
$countryTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$countryTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$countryTextbox.MaxLength = [System.Int32]2
$countryTextbox.Name = [System.String]'countryTextbox'
$countryTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]305,[System.Int32]30))
$countryTextbox.TabIndex = [System.Int32]22
$countryTextbox.Tag = [System.String]'Mandatory'
$countryTextbox.add_Validating($countryTextbox_Validating)
$countryTextbox.add_Validated($control_Validated)
#
#label20
#
$label20.AutoSize = $true
$label20.Dock = [System.Windows.Forms.DockStyle]::Top
$label20.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label20.Name = [System.String]'label20'
$label20.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]89,[System.Int32]25))
$label20.TabIndex = [System.Int32]41
$label20.Text = [System.String]'Country*'
#
#panel28
#
$panel28.Controls.Add($zipTextbox)
$panel28.Controls.Add($label19)
$panel28.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel28.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]739,[System.Int32]66))
$panel28.Name = [System.String]'panel28'
$panel28.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel28.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]58))
$panel28.TabIndex = [System.Int32]24
#
#zipTextbox
#
$zipTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$zipTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$zipTextbox.MaxLength = [System.Int32]5
$zipTextbox.Name = [System.String]'zipTextbox'
$zipTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]221,[System.Int32]30))
$zipTextbox.TabIndex = [System.Int32]21
$zipTextbox.Tag = [System.String]'Mandatory'
$zipTextbox.add_Validating($zipTextbox_Validating)
$zipTextbox.add_Validated($control_Validated)
#
#label19
#
$label19.AutoSize = $true
$label19.Dock = [System.Windows.Forms.DockStyle]::Top
$label19.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label19.Name = [System.String]'label19'
$label19.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]25))
$label19.TabIndex = [System.Int32]39
$label19.Text = [System.String]'Zipcode*'
#
#panel27
#
$panel27.Controls.Add($stateTextbox)
$panel27.Controls.Add($label18)
$panel27.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel27.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]417,[System.Int32]66))
$panel27.Name = [System.String]'panel27'
$panel27.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel27.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]316,[System.Int32]58))
$panel27.TabIndex = [System.Int32]23
#
#stateTextbox
#
$stateTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$stateTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$stateTextbox.MaxLength = [System.Int32]2
$stateTextbox.Name = [System.String]'stateTextbox'
$stateTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]296,[System.Int32]30))
$stateTextbox.TabIndex = [System.Int32]20
$stateTextbox.Tag = [System.String]'Mandatory'
$stateTextbox.add_Validating($stateTextbox_Validating)
$stateTextbox.add_Validated($control_Validated)
#
#label18
#
$label18.AutoSize = $true
$label18.Dock = [System.Windows.Forms.DockStyle]::Top
$label18.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label18.Name = [System.String]'label18'
$label18.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]66,[System.Int32]25))
$label18.TabIndex = [System.Int32]37
$label18.Text = [System.String]'State*'
#
#panel25
#
$tableLayoutPanel5.SetColumnSpan($panel25,[System.Int32]4)
$panel25.Controls.Add($streetTextbox)
$panel25.Controls.Add($label16)
$panel25.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel25.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel25.Name = [System.String]'panel25'
$panel25.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel25.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1308,[System.Int32]57))
$panel25.TabIndex = [System.Int32]21
#
#streetTextbox
#
$streetTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$streetTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$streetTextbox.Name = [System.String]'streetTextbox'
$streetTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1288,[System.Int32]30))
$streetTextbox.TabIndex = [System.Int32]18
#
#label16
#
$label16.AutoSize = $true
$label16.Dock = [System.Windows.Forms.DockStyle]::Top
$label16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label16.Name = [System.String]'label16'
$label16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]142,[System.Int32]25))
$label16.TabIndex = [System.Int32]33
$label16.Text = [System.String]'Street Address'
#
#panel26
#
$panel26.Controls.Add($cityTextbox)
$panel26.Controls.Add($label17)
$panel26.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel26.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]66))
$panel26.Name = [System.String]'panel26'
$panel26.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel26.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]408,[System.Int32]58))
$panel26.TabIndex = [System.Int32]22
#
#cityTextbox
#
$cityTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$cityTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$cityTextbox.Name = [System.String]'cityTextbox'
$cityTextbox.ReadOnly = $true
$cityTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]30))
$cityTextbox.TabIndex = [System.Int32]42
$cityTextbox.Tag = [System.String]'Mandatory'
#
#label17
#
$label17.AutoSize = $true
$label17.Dock = [System.Windows.Forms.DockStyle]::Top
$label17.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label17.Name = [System.String]'label17'
$label17.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]54,[System.Int32]25))
$label17.TabIndex = [System.Int32]35
$label17.Text = [System.String]'City*'
#
#savePanel
#
$savePanel.AutoSize = $true
$savePanel.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$savePanel.Controls.Add($label12)
$savePanel.Controls.Add($DcBox)
$savePanel.Controls.Add($cancelButton)
$savePanel.Controls.Add($editButton)
$savePanel.Dock = [System.Windows.Forms.DockStyle]::Top
$savePanel.ForeColor = [System.Drawing.Color]::Black
$savePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1573))
$savePanel.Name = [System.String]'savePanel'
$savePanel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5,[System.Int32]15,[System.Int32]0,[System.Int32]10))
$savePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1320,[System.Int32]85))
$savePanel.TabIndex = [System.Int32]64
$savePanel.Visible = $false
#
#label12
#
$label12.AutoSize = $true
$label12.ForeColor = [System.Drawing.Color]::White
$label12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]526,[System.Int32]20))
$label12.Name = [System.String]'label12'
$label12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]174,[System.Int32]25))
$label12.TabIndex = [System.Int32]13
$label12.Text = [System.String]'Connected to DC: '
#
#DcBox
#
$DcBox.AutoSize = $true
$DcBox.ForeColor = [System.Drawing.Color]::White
$DcBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]526,[System.Int32]50))
$DcBox.Name = [System.String]'DcBox'
$DcBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]93,[System.Int32]25))
$DcBox.TabIndex = [System.Int32]12
$DcBox.Text = [System.String]'DCName'
#
#cancelButton
#
$cancelButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$cancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$cancelButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$cancelButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$cancelButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]260,[System.Int32]20))
$cancelButton.Name = [System.String]'cancelButton'
$cancelButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]50))
$cancelButton.TabIndex = [System.Int32]1
$cancelButton.Text = [System.String]'Cancel'
$cancelButton.UseVisualStyleBackColor = $false
#
#editButton
#
$editButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$editButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$editButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$editButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]5,[System.Int32]20))
$editButton.Name = [System.String]'editButton'
$editButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]50))
$editButton.TabIndex = [System.Int32]0
$editButton.Text = [System.String]'Save Edits'
$editButton.UseVisualStyleBackColor = $false
$editButton.add_Click($editButton_Click)
#
#accountActionGroupbox
#
$accountActionGroupbox.AutoSize = $true
$accountActionGroupbox.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$accountActionGroupbox.Controls.Add($tableLayoutPanel6)
$accountActionGroupbox.Dock = [System.Windows.Forms.DockStyle]::Top
$accountActionGroupbox.ForeColor = [System.Drawing.SystemColors]::Control
$accountActionGroupbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1431))
$accountActionGroupbox.Name = [System.String]'accountActionGroupbox'
$accountActionGroupbox.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]10,[System.Int32]3,[System.Int32]3))
$accountActionGroupbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1320,[System.Int32]142))
$accountActionGroupbox.TabIndex = [System.Int32]65
$accountActionGroupbox.TabStop = $false
$accountActionGroupbox.Text = [System.String]'Account Actions'
$accountActionGroupbox.Visible = $false
#
#tableLayoutPanel6
#
$tableLayoutPanel6.AutoSize = $true
$tableLayoutPanel6.ColumnCount = [System.Int32]2
$tableLayoutPanel6.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle))
$tableLayoutPanel6.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel6.Controls.Add($enableLinkLabel,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel6.Controls.Add($lockedLabel,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel6.Controls.Add($unlockLinkLabel,[System.Int32]1,[System.Int32]1)
$tableLayoutPanel6.Controls.Add($enabledLabel,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel6.Controls.Add($panel9,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel6.Controls.Add($panel22,[System.Int32]1,[System.Int32]2)
$tableLayoutPanel6.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]33))
$tableLayoutPanel6.Name = [System.String]'tableLayoutPanel6'
$tableLayoutPanel6.RowCount = [System.Int32]3
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle))
$tableLayoutPanel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1314,[System.Int32]106))
$tableLayoutPanel6.TabIndex = [System.Int32]0
#
#enableLinkLabel
#
$enableLinkLabel.AutoSize = $true
$enableLinkLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$enableLinkLabel.LinkColor = [System.Drawing.Color]::White
$enableLinkLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]154,[System.Int32]0))
$enableLinkLabel.Name = [System.String]'enableLinkLabel'
$enableLinkLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1157,[System.Int32]25))
$enableLinkLabel.TabIndex = [System.Int32]11
$enableLinkLabel.TabStop = $true
$enableLinkLabel.Text = [System.String]'Enable/Disable Account'
$enableLinkLabel.add_LinkClicked($enableLinkLabel_LinkClicked)
#
#lockedLabel
#
$lockedLabel.AutoSize = $true
$lockedLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$lockedLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]25))
$lockedLabel.Name = [System.String]'lockedLabel'
$lockedLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]145,[System.Int32]25))
$lockedLabel.TabIndex = [System.Int32]2
$lockedLabel.Text = [System.String]'Locked: False'
#
#unlockLinkLabel
#
$unlockLinkLabel.AutoSize = $true
$unlockLinkLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$unlockLinkLabel.Enabled = $false
$unlockLinkLabel.LinkColor = [System.Drawing.Color]::White
$unlockLinkLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]154,[System.Int32]25))
$unlockLinkLabel.Name = [System.String]'unlockLinkLabel'
$unlockLinkLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1157,[System.Int32]25))
$unlockLinkLabel.TabIndex = [System.Int32]5
$unlockLinkLabel.TabStop = $true
$unlockLinkLabel.Text = [System.String]'Unlock Account'
$unlockLinkLabel.add_LinkClicked($unlockLinkLabel_LinkClicked)
#
#enabledLabel
#
$enabledLabel.AutoSize = $true
$enabledLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$enabledLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]0))
$enabledLabel.Name = [System.String]'enabledLabel'
$enabledLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]145,[System.Int32]25))
$enabledLabel.TabIndex = [System.Int32]4
$enabledLabel.Text = [System.String]'Enabled: True'
#
#panel9
#
$panel9.AutoSize = $true
$panel9.Controls.Add($dormantDate)
$panel9.Controls.Add($dormantLabel)
$panel9.Dock = [System.Windows.Forms.DockStyle]::Top
$panel9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]53))
$panel9.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]145,[System.Int32]50))
$panel9.Name = [System.String]'panel9'
$panel9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]145,[System.Int32]50))
$panel9.TabIndex = [System.Int32]9
$panel9.add_Paint($panel9_Paint)
#
#dormantDate
#
$dormantDate.AutoSize = $true
$dormantDate.Dock = [System.Windows.Forms.DockStyle]::Top
$dormantDate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]25))
$dormantDate.Name = [System.String]'dormantDate'
$dormantDate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]0,[System.Int32]25))
$dormantDate.TabIndex = [System.Int32]5
$dormantDate.Visible = $false
#
#dormantLabel
#
$dormantLabel.AutoSize = $true
$dormantLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$dormantLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$dormantLabel.Name = [System.String]'dormantLabel'
$dormantLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]145,[System.Int32]25))
$dormantLabel.TabIndex = [System.Int32]4
$dormantLabel.Text = [System.String]'Dormant: False'
#
#panel22
#
$panel22.AutoSize = $true
$panel22.Controls.Add($clearDormantStatusLinkLabel)
$panel22.Controls.Add($setDormantStatusLinkLabel)
$panel22.Dock = [System.Windows.Forms.DockStyle]::Top
$panel22.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]154,[System.Int32]53))
$panel22.Name = [System.String]'panel22'
$panel22.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1157,[System.Int32]50))
$panel22.TabIndex = [System.Int32]10
#
#clearDormantStatusLinkLabel
#
$clearDormantStatusLinkLabel.AutoSize = $true
$clearDormantStatusLinkLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$clearDormantStatusLinkLabel.LinkColor = [System.Drawing.Color]::White
$clearDormantStatusLinkLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]25))
$clearDormantStatusLinkLabel.Name = [System.String]'clearDormantStatusLinkLabel'
$clearDormantStatusLinkLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]199,[System.Int32]25))
$clearDormantStatusLinkLabel.TabIndex = [System.Int32]1
$clearDormantStatusLinkLabel.TabStop = $true
$clearDormantStatusLinkLabel.Text = [System.String]'Clear Dormant Status'
$clearDormantStatusLinkLabel.Visible = $false
$clearDormantStatusLinkLabel.add_LinkClicked($clearDormantStatusLinkLabel_LinkClicked)
#
#setDormantStatusLinkLabel
#
$setDormantStatusLinkLabel.AutoSize = $true
$setDormantStatusLinkLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$setDormantStatusLinkLabel.LinkColor = [System.Drawing.Color]::White
$setDormantStatusLinkLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$setDormantStatusLinkLabel.Name = [System.String]'setDormantStatusLinkLabel'
$setDormantStatusLinkLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]182,[System.Int32]25))
$setDormantStatusLinkLabel.TabIndex = [System.Int32]0
$setDormantStatusLinkLabel.TabStop = $true
$setDormantStatusLinkLabel.Text = [System.String]'Set Dormant Status'
$setDormantStatusLinkLabel.add_LinkClicked($setDormantStatusLinkLabel_LinkClicked)
#
#errorProvider1
#
$errorProvider1.ContainerControl = $EditUserForm
#
#EditUserForm
#
$EditUserForm.AutoScroll = $true
$EditUserForm.AutoValidate = [System.Windows.Forms.AutoValidate]::EnableAllowFocusChange
$EditUserForm.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]79)),([System.Int32]([System.Byte][System.Byte]93)),([System.Int32]([System.Byte][System.Byte]117)))

$EditUserForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1361,[System.Int32]853))
$EditUserForm.Controls.Add($savePanel)
$EditUserForm.Controls.Add($accountActionGroupbox)
$EditUserForm.Controls.Add($locationInfoGroupbox)
$EditUserForm.Controls.Add($contactInfoGroupbox)
$EditUserForm.Controls.Add($employmentInfoGroupbox)
$EditUserForm.Controls.Add($UserInfoGroupbox)
$EditUserForm.Controls.Add($SearchGroupBox)
$EditUserForm.Controls.Add($userEditLabel)
$EditUserForm.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12))
$EditUserForm.ForeColor = [System.Drawing.Color]::White
$EditUserForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$EditUserForm.Name = [System.String]'EditUserForm'
$EditUserForm.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
$EditUserForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$EditUserForm.Text = [System.String]'Edit User Form v1.0'
$EditUserForm.add_Load($form_Load)
$SearchGroupBox.ResumeLayout($false)
$SearchGroupBox.PerformLayout()
$tableLayoutPanel1.ResumeLayout($false)
$tableLayoutPanel1.PerformLayout()
([System.ComponentModel.ISupportInitialize]$resultDataGridView).EndInit()
$UserInfoGroupbox.ResumeLayout($false)
$tableLayoutPanel2.ResumeLayout($false)
$panel8.ResumeLayout($false)
$panel8.PerformLayout()
$panel7.ResumeLayout($false)
$panel7.PerformLayout()
$panel6.ResumeLayout($false)
$panel6.PerformLayout()
$panel5.ResumeLayout($false)
$panel5.PerformLayout()
$panel4.ResumeLayout($false)
$panel4.PerformLayout()
$panel3.ResumeLayout($false)
$panel3.PerformLayout()
$panel2.ResumeLayout($false)
$panel2.PerformLayout()
$employmentInfoGroupbox.ResumeLayout($false)
$employmentInfoGroupbox.PerformLayout()
$tableLayoutPanel3.ResumeLayout($false)
$tableLayoutPanel3.PerformLayout()
$panel1.ResumeLayout($false)
$panel1.PerformLayout()
$panel20.ResumeLayout($false)
$panel20.PerformLayout()
$panel19.ResumeLayout($false)
$panel19.PerformLayout()
$panel18.ResumeLayout($false)
$panel18.PerformLayout()
$panel17.ResumeLayout($false)
$panel17.PerformLayout()
$panel15.ResumeLayout($false)
$panel15.PerformLayout()
$panel14.ResumeLayout($false)
$panel14.PerformLayout()
$panel12.ResumeLayout($false)
$panel12.PerformLayout()
$panel10.ResumeLayout($false)
$panel10.PerformLayout()
$panel11.ResumeLayout($false)
$panel11.PerformLayout()
$contactInfoGroupbox.ResumeLayout($false)
$tableLayoutPanel4.ResumeLayout($false)
$panel16.ResumeLayout($false)
$panel16.PerformLayout()
$panel13.ResumeLayout($false)
$panel13.PerformLayout()
$locationInfoGroupbox.ResumeLayout($false)
$tableLayoutPanel5.ResumeLayout($false)
$panel29.ResumeLayout($false)
$panel29.PerformLayout()
$panel28.ResumeLayout($false)
$panel28.PerformLayout()
$panel27.ResumeLayout($false)
$panel27.PerformLayout()
$panel25.ResumeLayout($false)
$panel25.PerformLayout()
$panel26.ResumeLayout($false)
$panel26.PerformLayout()
$savePanel.ResumeLayout($false)
$savePanel.PerformLayout()
$accountActionGroupbox.ResumeLayout($false)
$accountActionGroupbox.PerformLayout()
$tableLayoutPanel6.ResumeLayout($false)
$tableLayoutPanel6.PerformLayout()
$panel9.ResumeLayout($false)
$panel9.PerformLayout()
$panel22.ResumeLayout($false)
$panel22.PerformLayout()
([System.ComponentModel.ISupportInitialize]$errorProvider1).EndInit()
$EditUserForm.ResumeLayout($false)
$EditUserForm.PerformLayout()
Add-Member -InputObject $EditUserForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name userEditLabel -Value $userEditLabel -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name SearchGroupBox -Value $SearchGroupBox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name tableLayoutPanel1 -Value $tableLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name searchButton -Value $searchButton -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name searchStringTextBox -Value $searchStringTextBox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name resultDataGridView -Value $resultDataGridView -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name NameColumn -Value $NameColumn -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name DistinguishedNameColumn -Value $DistinguishedNameColumn -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name SelectColumn -Value $SelectColumn -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name tableLayoutPanel2 -Value $tableLayoutPanel2 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel8 -Value $panel8 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name descriptionTextbox -Value $descriptionTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label15 -Value $label15 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel7 -Value $panel7 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name citizenshipTextbox -Value $citizenshipTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel6 -Value $panel6 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name suffixCombobox -Value $suffixCombobox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel5 -Value $panel5 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name edipiTextbox -Value $edipiTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name edipiLabel -Value $edipiLabel -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel4 -Value $panel4 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name initialTextbox -Value $initialTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel3 -Value $panel3 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name firstNameTextbox -Value $firstNameTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel2 -Value $panel2 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name lastNameTextbox -Value $lastNameTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name tableLayoutPanel3 -Value $tableLayoutPanel3 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel20 -Value $panel20 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name officeSymbolTextbox -Value $officeSymbolTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label23 -Value $label23 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel19 -Value $panel19 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name unitComboBox -Value $unitComboBox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label24 -Value $label24 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel18 -Value $panel18 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name baseNameCombobox -Value $baseNameCombobox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label25 -Value $label25 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel17 -Value $panel17 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name MAJCOMCombobox -Value $MAJCOMCombobox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label10 -Value $label10 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel15 -Value $panel15 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name payGradeCombobox -Value $payGradeCombobox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel14 -Value $panel14 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name payPlanCombobox -Value $payPlanCombobox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel12 -Value $panel12 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name titleTextbox -Value $titleTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel10 -Value $panel10 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name branchCombobox -Value $branchCombobox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel11 -Value $panel11 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name employeeTypeCombobox -Value $employeeTypeCombobox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name employeeTypeLabel -Value $employeeTypeLabel -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name tableLayoutPanel4 -Value $tableLayoutPanel4 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel16 -Value $panel16 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name emailTextbox -Value $emailTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label14 -Value $label14 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel13 -Value $panel13 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name phoneTextbox -Value $phoneTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label13 -Value $label13 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name tableLayoutPanel5 -Value $tableLayoutPanel5 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel29 -Value $panel29 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name countryTextbox -Value $countryTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label20 -Value $label20 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel28 -Value $panel28 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name zipTextbox -Value $zipTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label19 -Value $label19 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel27 -Value $panel27 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name stateTextbox -Value $stateTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label18 -Value $label18 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel25 -Value $panel25 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name streetTextbox -Value $streetTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label16 -Value $label16 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel26 -Value $panel26 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name cityTextbox -Value $cityTextbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label17 -Value $label17 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name UserInfoGroupbox -Value $UserInfoGroupbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name employmentInfoGroupbox -Value $employmentInfoGroupbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name contactInfoGroupbox -Value $contactInfoGroupbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name locationInfoGroupbox -Value $locationInfoGroupbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel1 -Value $panel1 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name label12 -Value $label12 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name DcBox -Value $DcBox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name cancelButton -Value $cancelButton -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name editButton -Value $editButton -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name expirationDateTimePicker -Value $expirationDateTimePicker -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name accountExpirationCheckbox -Value $accountExpirationCheckbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name accountActionGroupbox -Value $accountActionGroupbox -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name tableLayoutPanel6 -Value $tableLayoutPanel6 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name unlockLinkLabel -Value $unlockLinkLabel -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name enabledLabel -Value $enabledLabel -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel9 -Value $panel9 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name dormantLabel -Value $dormantLabel -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name panel22 -Value $panel22 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name clearDormantStatusLinkLabel -Value $clearDormantStatusLinkLabel -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name setDormantStatusLinkLabel -Value $setDormantStatusLinkLabel -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name lockedLabel -Value $lockedLabel -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name savePanel -Value $savePanel -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name enableLinkLabel -Value $enableLinkLabel -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name errorProvider1 -Value $errorProvider1 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name toolTip1 -Value $toolTip1 -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name dormantDate -Value $dormantDate -MemberType NoteProperty
Add-Member -InputObject $EditUserForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
