[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$EditAdminForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.GroupBox]$SearchGroupBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel1 = $null
[System.Windows.Forms.Button]$searchButton = $null
[System.Windows.Forms.TextBox]$searchStringTextBox = $null
[System.Windows.Forms.DataGridView]$resultDataGridView = $null
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.GroupBox]$adminInfoGroupBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel3 = $null
[System.Windows.Forms.Panel]$panel8 = $null
[System.Windows.Forms.TextBox]$descriptionTextbox = $null
[System.Windows.Forms.Label]$label15 = $null
[System.Windows.Forms.Panel]$panel7 = $null
[System.Windows.Forms.TextBox]$citizenshipTextbox = $null
[System.Windows.Forms.Label]$label2 = $null
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
[System.Windows.Forms.Label]$label11 = $null
[System.Windows.Forms.GroupBox]$employmentInfoGroupBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel2 = $null
[System.Windows.Forms.Panel]$panel24 = $null
[System.Windows.Forms.DateTimePicker]$expirationDateTimePicker = $null
[System.Windows.Forms.CheckBox]$accountExpirationCheckbox = $null
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
[System.Windows.Forms.Panel]$panel21 = $null
[System.Windows.Forms.TextBox]$phoneTextbox = $null
[System.Windows.Forms.Label]$label16 = $null
[System.Windows.Forms.GroupBox]$accountInfoGroupBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel5 = $null
[System.Windows.Forms.Panel]$panel22 = $null
[System.Windows.Forms.TextBox]$logonNameTextbox = $null
[System.Windows.Forms.Label]$label14 = $null
[System.Windows.Forms.Panel]$panel16 = $null
[System.Windows.Forms.ComboBox]$adminLevelCodeCombobox = $null
[System.Windows.Forms.Label]$label13 = $null
[System.Windows.Forms.ErrorProvider]$errorProvider1 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.ToolTip]$toolTip1 = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$NameColumn = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$DistinguishedNameColumn = $null
[System.Windows.Forms.DataGridViewButtonColumn]$SelectColumn = $null
[System.Windows.Forms.Panel]$savePanel = $null
[System.Windows.Forms.Label]$label12 = $null
[System.Windows.Forms.Label]$DcBox = $null
[System.Windows.Forms.Button]$cancelButton = $null
[System.Windows.Forms.Button]$editButton = $null
[System.Windows.Forms.GroupBox]$accountActionGroupbox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel6 = $null
[System.Windows.Forms.LinkLabel]$validateLinkLabel = $null
[System.Windows.Forms.LinkLabel]$enableLinkLabel = $null
[System.Windows.Forms.Label]$validationLabel = $null
[System.Windows.Forms.Label]$lockedLabel = $null
[System.Windows.Forms.LinkLabel]$unlockLinkLabel = $null
[System.Windows.Forms.Label]$enabledLabel = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
[System.Windows.Forms.DataGridViewCellStyle]$dataGridViewCellStyle1 = (New-Object -TypeName System.Windows.Forms.DataGridViewCellStyle)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$SearchGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$searchButton = (New-Object -TypeName System.Windows.Forms.Button)
$searchStringTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$resultDataGridView = (New-Object -TypeName System.Windows.Forms.DataGridView)
$NameColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$DistinguishedNameColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$SelectColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewButtonColumn)
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$adminInfoGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel3 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel8 = (New-Object -TypeName System.Windows.Forms.Panel)
$descriptionTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label15 = (New-Object -TypeName System.Windows.Forms.Label)
$panel7 = (New-Object -TypeName System.Windows.Forms.Panel)
$citizenshipTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
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
$label11 = (New-Object -TypeName System.Windows.Forms.Label)
$employmentInfoGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel2 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel24 = (New-Object -TypeName System.Windows.Forms.Panel)
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
$panel21 = (New-Object -TypeName System.Windows.Forms.Panel)
$phoneTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label16 = (New-Object -TypeName System.Windows.Forms.Label)
$accountInfoGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel5 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel22 = (New-Object -TypeName System.Windows.Forms.Panel)
$logonNameTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label14 = (New-Object -TypeName System.Windows.Forms.Label)
$panel16 = (New-Object -TypeName System.Windows.Forms.Panel)
$adminLevelCodeCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label13 = (New-Object -TypeName System.Windows.Forms.Label)
$errorProvider1 = (New-Object -TypeName System.Windows.Forms.ErrorProvider -ArgumentList @($components))
$toolTip1 = (New-Object -TypeName System.Windows.Forms.ToolTip -ArgumentList @($components))
$savePanel = (New-Object -TypeName System.Windows.Forms.Panel)
$label12 = (New-Object -TypeName System.Windows.Forms.Label)
$DcBox = (New-Object -TypeName System.Windows.Forms.Label)
$cancelButton = (New-Object -TypeName System.Windows.Forms.Button)
$editButton = (New-Object -TypeName System.Windows.Forms.Button)
$accountActionGroupbox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel6 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$validateLinkLabel = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$enableLinkLabel = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$validationLabel = (New-Object -TypeName System.Windows.Forms.Label)
$lockedLabel = (New-Object -TypeName System.Windows.Forms.Label)
$unlockLinkLabel = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$enabledLabel = (New-Object -TypeName System.Windows.Forms.Label)
$SearchGroupBox.SuspendLayout()
$tableLayoutPanel1.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$resultDataGridView).BeginInit()
$adminInfoGroupBox.SuspendLayout()
$tableLayoutPanel3.SuspendLayout()
$panel8.SuspendLayout()
$panel7.SuspendLayout()
$panel6.SuspendLayout()
$panel5.SuspendLayout()
$panel4.SuspendLayout()
$panel3.SuspendLayout()
$panel2.SuspendLayout()
$employmentInfoGroupBox.SuspendLayout()
$tableLayoutPanel2.SuspendLayout()
$panel24.SuspendLayout()
$panel20.SuspendLayout()
$panel19.SuspendLayout()
$panel18.SuspendLayout()
$panel17.SuspendLayout()
$panel15.SuspendLayout()
$panel14.SuspendLayout()
$panel12.SuspendLayout()
$panel10.SuspendLayout()
$panel11.SuspendLayout()
$panel21.SuspendLayout()
$accountInfoGroupBox.SuspendLayout()
$tableLayoutPanel5.SuspendLayout()
$panel22.SuspendLayout()
$panel16.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$errorProvider1).BeginInit()
$savePanel.SuspendLayout()
$accountActionGroupbox.SuspendLayout()
$tableLayoutPanel6.SuspendLayout()
$EditAdminForm.SuspendLayout()
#
#label1
#
$label1.AutoSize = $true
$label1.Dock = [System.Windows.Forms.DockStyle]::Top
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]15.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$label1.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]0,[System.Int32]3,[System.Int32]20))
$label1.Name = [System.String]'label1'
$label1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]20))
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]229,[System.Int32]51))
$label1.TabIndex = [System.Int32]54
$label1.Text = [System.String]'Edit Admin Form'
#
#SearchGroupBox
#
$SearchGroupBox.AutoSize = $true
$SearchGroupBox.Controls.Add($tableLayoutPanel1)
$SearchGroupBox.Dock = [System.Windows.Forms.DockStyle]::Top
$SearchGroupBox.ForeColor = [System.Drawing.SystemColors]::Control
$SearchGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]61))
$SearchGroupBox.Name = [System.String]'SearchGroupBox'
$SearchGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]962,[System.Int32]400))
$SearchGroupBox.TabIndex = [System.Int32]56
$SearchGroupBox.TabStop = $false
$SearchGroupBox.Text = [System.String]'Admin Searcher'
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
$tableLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]956,[System.Int32]371))
$tableLayoutPanel1.TabIndex = [System.Int32]0
#
#searchButton
#
$searchButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$searchButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$searchButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$searchButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$searchButton.ForeColor = [System.Drawing.Color]::Black
$searchButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]720,[System.Int32]3))
$searchButton.Name = [System.String]'searchButton'
$searchButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]233,[System.Int32]35))
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
$searchStringTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]711,[System.Int32]30))
$searchStringTextBox.TabIndex = [System.Int32]0
$searchStringTextBox.add_KeyDown($searchStringTextbox_KeyDown)
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
$resultDataGridView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]44))
$resultDataGridView.Name = [System.String]'resultDataGridView'
$resultDataGridView.ReadOnly = $true
$resultDataGridView.RowHeadersVisible = $false
$resultDataGridView.RowHeadersWidth = [System.Int32]62
$resultDataGridView.RowTemplate.DefaultCellStyle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$resultDataGridView.RowTemplate.DefaultCellStyle.ForeColor = [System.Drawing.Color]::Black
$resultDataGridView.RowTemplate.DefaultCellStyle.SelectionForeColor = [System.Drawing.Color]::Black
$resultDataGridView.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$resultDataGridView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]950,[System.Int32]269))
$resultDataGridView.TabIndex = [System.Int32]7
$resultDataGridView.add_CellContentClick($resultDataGridView_CellContentClick)
#
#NameColumn
#
$NameColumn.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$NameColumn.FillWeight = [System.Single]80
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
$SelectColumn.FillWeight = [System.Single]30
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
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]720,[System.Int32]319))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]233,[System.Int32]49))
$button2.TabIndex = [System.Int32]8
$button2.Text = [System.String]'Cancel'
$button2.UseVisualStyleBackColor = $false
#
#adminInfoGroupBox
#
$adminInfoGroupBox.AutoSize = $true
$adminInfoGroupBox.Controls.Add($tableLayoutPanel3)
$adminInfoGroupBox.Dock = [System.Windows.Forms.DockStyle]::Top
$adminInfoGroupBox.ForeColor = [System.Drawing.SystemColors]::Control
$adminInfoGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]461))
$adminInfoGroupBox.Name = [System.String]'adminInfoGroupBox'
$adminInfoGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]962,[System.Int32]297))
$adminInfoGroupBox.TabIndex = [System.Int32]57
$adminInfoGroupBox.TabStop = $false
$adminInfoGroupBox.Text = [System.String]'Admin Information'
$adminInfoGroupBox.Visible = $false
#
#tableLayoutPanel3
#
$tableLayoutPanel3.AutoSize = $true
$tableLayoutPanel3.ColumnCount = [System.Int32]4
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]16.66667)))
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.22368)))
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel3.Controls.Add($panel8,[System.Int32]0,[System.Int32]3)
$tableLayoutPanel3.Controls.Add($panel7,[System.Int32]3,[System.Int32]2)
$tableLayoutPanel3.Controls.Add($panel6,[System.Int32]2,[System.Int32]2)
$tableLayoutPanel3.Controls.Add($panel5,[System.Int32]1,[System.Int32]2)
$tableLayoutPanel3.Controls.Add($panel4,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel3.Controls.Add($panel3,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel3.Controls.Add($panel2,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel3.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel3.Name = [System.String]'tableLayoutPanel3'
$tableLayoutPanel3.RowCount = [System.Int32]4
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]956,[System.Int32]268))
$tableLayoutPanel3.TabIndex = [System.Int32]36
#
#panel8
#
$tableLayoutPanel3.SetColumnSpan($panel8,[System.Int32]4)
$panel8.Controls.Add($descriptionTextbox)
$panel8.Controls.Add($label15)
$panel8.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]204))
$panel8.Name = [System.String]'panel8'
$panel8.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]950,[System.Int32]61))
$panel8.TabIndex = [System.Int32]6
#
#descriptionTextbox
#
$descriptionTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$descriptionTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$descriptionTextbox.Name = [System.String]'descriptionTextbox'
$descriptionTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]930,[System.Int32]30))
$descriptionTextbox.TabIndex = [System.Int32]7
$descriptionTextbox.Tag = [System.String]'Mandatory'
$descriptionTextbox.add_Validating($validating_NotBlank)
$descriptionTextbox.add_Validated($control_Validated)
#
#label15
#
$label15.AutoSize = $true
$label15.Dock = [System.Windows.Forms.DockStyle]::Top
$label15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label15.Name = [System.String]'label15'
$label15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]117,[System.Int32]25))
$label15.TabIndex = [System.Int32]35
$label15.Text = [System.String]'Description*'
#
#panel7
#
$panel7.Controls.Add($citizenshipTextbox)
$panel7.Controls.Add($label2)
$panel7.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]718,[System.Int32]137))
$panel7.Name = [System.String]'panel7'
$panel7.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]235,[System.Int32]61))
$panel7.TabIndex = [System.Int32]5
#
#citizenshipTextbox
#
$citizenshipTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$citizenshipTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$citizenshipTextbox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]30))
$citizenshipTextbox.MaxLength = [System.Int32]2
$citizenshipTextbox.Name = [System.String]'citizenshipTextbox'
$citizenshipTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]215,[System.Int32]30))
$citizenshipTextbox.TabIndex = [System.Int32]20
$citizenshipTextbox.Tag = [System.String]'Mandatory'
$citizenshipTextbox.add_Validating($citizenshipTextbox_Validating)
$citizenshipTextbox.add_Validated($control_Validated)
#
#label2
#
$label2.AutoSize = $true
$label2.Dock = [System.Windows.Forms.DockStyle]::Top
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]116,[System.Int32]25))
$label2.TabIndex = [System.Int32]21
$label2.Text = [System.String]'Citizenship*'
#
#panel6
#
$panel6.Controls.Add($suffixCombobox)
$panel6.Controls.Add($label5)
$panel6.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]479,[System.Int32]137))
$panel6.Name = [System.String]'panel6'
$panel6.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]233,[System.Int32]61))
$panel6.TabIndex = [System.Int32]4
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
$suffixCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]213,[System.Int32]33))
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
$panel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]162,[System.Int32]137))
$panel5.Name = [System.String]'panel5'
$panel5.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]311,[System.Int32]61))
$panel5.TabIndex = [System.Int32]3
#
#edipiTextbox
#
$edipiTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$edipiTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$edipiTextbox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]30))
$edipiTextbox.MaxLength = [System.Int32]10
$edipiTextbox.Name = [System.String]'edipiTextbox'
$edipiTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]291,[System.Int32]30))
$edipiTextbox.TabIndex = [System.Int32]6
$edipiTextbox.Tag = [System.String]'Mandatory'
$edipiTextbox.add_TextChanged($logonNameChanged)
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
$panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]137))
$panel4.Name = [System.String]'panel4'
$panel4.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]153,[System.Int32]61))
$panel4.TabIndex = [System.Int32]2
#
#initialTextbox
#
$initialTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$initialTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$initialTextbox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]30))
$initialTextbox.MaxLength = [System.Int32]1
$initialTextbox.Name = [System.String]'initialTextbox'
$initialTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]133,[System.Int32]30))
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
$tableLayoutPanel3.SetColumnSpan($panel3,[System.Int32]4)
$panel3.Controls.Add($firstNameTextbox)
$panel3.Controls.Add($label3)
$panel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]70))
$panel3.Name = [System.String]'panel3'
$panel3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]950,[System.Int32]61))
$panel3.TabIndex = [System.Int32]1
#
#firstNameTextbox
#
$firstNameTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$firstNameTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$firstNameTextbox.Name = [System.String]'firstNameTextbox'
$firstNameTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]930,[System.Int32]30))
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
$tableLayoutPanel3.SetColumnSpan($panel2,[System.Int32]4)
$panel2.Controls.Add($lastNameTextbox)
$panel2.Controls.Add($label11)
$panel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel2.Name = [System.String]'panel2'
$panel2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]950,[System.Int32]61))
$panel2.TabIndex = [System.Int32]0
#
#lastNameTextbox
#
$lastNameTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$lastNameTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$lastNameTextbox.Name = [System.String]'lastNameTextbox'
$lastNameTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]930,[System.Int32]30))
$lastNameTextbox.TabIndex = [System.Int32]12
$lastNameTextbox.Tag = [System.String]'Mandatory'
$lastNameTextbox.add_Validating($lastNameTextbox_Validating)
$lastNameTextbox.add_Validated($control_Validated)
#
#label11
#
$label11.AutoSize = $true
$label11.Dock = [System.Windows.Forms.DockStyle]::Top
$label11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label11.Name = [System.String]'label11'
$label11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]114,[System.Int32]25))
$label11.TabIndex = [System.Int32]13
$label11.Text = [System.String]'Last Name*'
#
#employmentInfoGroupBox
#
$employmentInfoGroupBox.AutoSize = $true
$employmentInfoGroupBox.Controls.Add($tableLayoutPanel2)
$employmentInfoGroupBox.Dock = [System.Windows.Forms.DockStyle]::Top
$employmentInfoGroupBox.ForeColor = [System.Drawing.SystemColors]::Control
$employmentInfoGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]758))
$employmentInfoGroupBox.Name = [System.String]'employmentInfoGroupBox'
$employmentInfoGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]962,[System.Int32]384))
$employmentInfoGroupBox.TabIndex = [System.Int32]58
$employmentInfoGroupBox.TabStop = $false
$employmentInfoGroupBox.Text = [System.String]'Employment Information'
$employmentInfoGroupBox.Visible = $false
#
#tableLayoutPanel2
#
$tableLayoutPanel2.AutoSize = $true
$tableLayoutPanel2.ColumnCount = [System.Int32]3
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel2.Controls.Add($panel24,[System.Int32]1,[System.Int32]4)
$tableLayoutPanel2.Controls.Add($panel20,[System.Int32]2,[System.Int32]3)
$tableLayoutPanel2.Controls.Add($panel19,[System.Int32]1,[System.Int32]3)
$tableLayoutPanel2.Controls.Add($panel18,[System.Int32]0,[System.Int32]3)
$tableLayoutPanel2.Controls.Add($panel17,[System.Int32]1,[System.Int32]2)
$tableLayoutPanel2.Controls.Add($panel15,[System.Int32]1,[System.Int32]1)
$tableLayoutPanel2.Controls.Add($panel14,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel2.Controls.Add($panel12,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel2.Controls.Add($panel10,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel2.Controls.Add($panel11,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel2.Controls.Add($panel21,[System.Int32]0,[System.Int32]4)
$tableLayoutPanel2.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel2.Name = [System.String]'tableLayoutPanel2'
$tableLayoutPanel2.RowCount = [System.Int32]5
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]956,[System.Int32]355))
$tableLayoutPanel2.TabIndex = [System.Int32]0
#
#panel24
#
$panel24.Controls.Add($expirationDateTimePicker)
$panel24.Controls.Add($accountExpirationCheckbox)
$panel24.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel24.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]321,[System.Int32]287))
$panel24.Name = [System.String]'panel24'
$panel24.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]0,[System.Int32]0))
$panel24.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]312,[System.Int32]65))
$panel24.TabIndex = [System.Int32]18
#
#expirationDateTimePicker
#
$expirationDateTimePicker.Dock = [System.Windows.Forms.DockStyle]::Top
$expirationDateTimePicker.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]39))
$expirationDateTimePicker.Name = [System.String]'expirationDateTimePicker'
$expirationDateTimePicker.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]312,[System.Int32]30))
$expirationDateTimePicker.TabIndex = [System.Int32]30
$expirationDateTimePicker.Visible = $false
#
#accountExpirationCheckbox
#
$accountExpirationCheckbox.AutoSize = $true
$accountExpirationCheckbox.Dock = [System.Windows.Forms.DockStyle]::Top
$accountExpirationCheckbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$accountExpirationCheckbox.Name = [System.String]'accountExpirationCheckbox'
$accountExpirationCheckbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]312,[System.Int32]29))
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
$panel20.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]639,[System.Int32]216))
$panel20.Name = [System.String]'panel20'
$panel20.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel20.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]314,[System.Int32]65))
$panel20.TabIndex = [System.Int32]14
#
#officeSymbolTextbox
#
$officeSymbolTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$officeSymbolTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$officeSymbolTextbox.Name = [System.String]'officeSymbolTextbox'
$officeSymbolTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]294,[System.Int32]30))
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
$panel19.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]321,[System.Int32]216))
$panel19.Name = [System.String]'panel19'
$panel19.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel19.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]312,[System.Int32]65))
$panel19.TabIndex = [System.Int32]13
#
#unitComboBox
#
$unitComboBox.Dock = [System.Windows.Forms.DockStyle]::Top
$unitComboBox.FormattingEnabled = $true
$unitComboBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$unitComboBox.Name = [System.String]'unitComboBox'
$unitComboBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]292,[System.Int32]33))
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
$panel18.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]216))
$panel18.Name = [System.String]'panel18'
$panel18.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel18.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]312,[System.Int32]65))
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
$baseNameCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]292,[System.Int32]33))
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
$tableLayoutPanel2.SetColumnSpan($panel17,[System.Int32]2)
$panel17.Controls.Add($MAJCOMCombobox)
$panel17.Controls.Add($label10)
$panel17.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel17.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]321,[System.Int32]145))
$panel17.Name = [System.String]'panel17'
$panel17.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel17.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]632,[System.Int32]65))
$panel17.TabIndex = [System.Int32]11
#
#MAJCOMCombobox
#
$MAJCOMCombobox.DisplayMember = [System.String]'LongName'
$MAJCOMCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$MAJCOMCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$MAJCOMCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$MAJCOMCombobox.ForeColor = [System.Drawing.Color]::Black
$MAJCOMCombobox.FormattingEnabled = $true
$MAJCOMCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$MAJCOMCombobox.Name = [System.String]'MAJCOMCombobox'
$MAJCOMCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]612,[System.Int32]33))
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
$panel15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]321,[System.Int32]74))
$panel15.Name = [System.String]'panel15'
$panel15.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]312,[System.Int32]65))
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
$payGradeCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]292,[System.Int32]33))
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
$panel14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]74))
$panel14.Name = [System.String]'panel14'
$panel14.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]312,[System.Int32]65))
$panel14.TabIndex = [System.Int32]8
#
#payPlanCombobox
#
$payPlanCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$payPlanCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDown
$payPlanCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$payPlanCombobox.FormattingEnabled = $true
$payPlanCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$payPlanCombobox.Name = [System.String]'payPlanCombobox'
$payPlanCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]292,[System.Int32]33))
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
$panel12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]321,[System.Int32]3))
$panel12.Name = [System.String]'panel12'
$panel12.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]312,[System.Int32]65))
$panel12.TabIndex = [System.Int32]7
#
#titleTextbox
#
$titleTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$titleTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$titleTextbox.Name = [System.String]'titleTextbox'
$titleTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]292,[System.Int32]30))
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
$panel10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]145))
$panel10.Name = [System.String]'panel10'
$panel10.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]312,[System.Int32]65))
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
$branchCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]292,[System.Int32]33))
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
$panel11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]312,[System.Int32]65))
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
$employeeTypeCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]292,[System.Int32]33))
$employeeTypeCombobox.TabIndex = [System.Int32]8
$employeeTypeCombobox.Tag = [System.String]'Mandatory'
$employeeTypeCombobox.add_SelectedIndexChanged($logonNameChanged)
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
#panel21
#
$panel21.Controls.Add($phoneTextbox)
$panel21.Controls.Add($label16)
$panel21.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel21.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]287))
$panel21.Name = [System.String]'panel21'
$panel21.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel21.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]312,[System.Int32]65))
$panel21.TabIndex = [System.Int32]17
#
#phoneTextbox
#
$phoneTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$phoneTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$phoneTextbox.MaxLength = [System.Int32]12
$phoneTextbox.Name = [System.String]'phoneTextbox'
$phoneTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]292,[System.Int32]30))
$phoneTextbox.TabIndex = [System.Int32]30
$phoneTextbox.Tag = [System.String]'Mandatory'
$phoneTextbox.add_Validating($phoneTextbox_Validating)
$phoneTextbox.add_Validated($control_Validated)
#
#label16
#
$label16.AutoSize = $true
$label16.Dock = [System.Windows.Forms.DockStyle]::Top
$label16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label16.Name = [System.String]'label16'
$label16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]124,[System.Int32]25))
$label16.TabIndex = [System.Int32]31
$label16.Text = [System.String]'DSN Phone*'
#
#accountInfoGroupBox
#
$accountInfoGroupBox.AutoSize = $true
$accountInfoGroupBox.Controls.Add($tableLayoutPanel5)
$accountInfoGroupBox.Dock = [System.Windows.Forms.DockStyle]::Top
$accountInfoGroupBox.ForeColor = [System.Drawing.SystemColors]::Control
$accountInfoGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1142))
$accountInfoGroupBox.Name = [System.String]'accountInfoGroupBox'
$accountInfoGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]962,[System.Int32]101))
$accountInfoGroupBox.TabIndex = [System.Int32]59
$accountInfoGroupBox.TabStop = $false
$accountInfoGroupBox.Text = [System.String]'Account Info'
$accountInfoGroupBox.Visible = $false
#
#tableLayoutPanel5
#
$tableLayoutPanel5.AutoSize = $true
$tableLayoutPanel5.ColumnCount = [System.Int32]4
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel5.Controls.Add($panel22,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel5.Controls.Add($panel16,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel5.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel5.Name = [System.String]'tableLayoutPanel5'
$tableLayoutPanel5.RowCount = [System.Int32]1
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]29.37063)))
$tableLayoutPanel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]956,[System.Int32]72))
$tableLayoutPanel5.TabIndex = [System.Int32]2
#
#panel22
#
$tableLayoutPanel5.SetColumnSpan($panel22,[System.Int32]2)
$panel22.Controls.Add($logonNameTextbox)
$panel22.Controls.Add($label14)
$panel22.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel22.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]481,[System.Int32]3))
$panel22.Name = [System.String]'panel22'
$panel22.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel22.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]472,[System.Int32]66))
$panel22.TabIndex = [System.Int32]2
#
#logonNameTextbox
#
$logonNameTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$logonNameTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$logonNameTextbox.Name = [System.String]'logonNameTextbox'
$logonNameTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]452,[System.Int32]30))
$logonNameTextbox.TabIndex = [System.Int32]1
$logonNameTextbox.Tag = [System.String]'Mandatory'
$logonNameTextbox.add_Validating($validating_NotBlank)
$logonNameTextbox.add_Validated($control_Validated)
#
#label14
#
$label14.AutoSize = $true
$label14.Dock = [System.Windows.Forms.DockStyle]::Top
$label14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label14.Name = [System.String]'label14'
$label14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]132,[System.Int32]25))
$label14.TabIndex = [System.Int32]0
$label14.Text = [System.String]'Logon Name*'
#
#panel16
#
$tableLayoutPanel5.SetColumnSpan($panel16,[System.Int32]2)
$panel16.Controls.Add($adminLevelCodeCombobox)
$panel16.Controls.Add($label13)
$panel16.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel16.Name = [System.String]'panel16'
$panel16.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]472,[System.Int32]66))
$panel16.TabIndex = [System.Int32]1
#
#adminLevelCodeCombobox
#
$adminLevelCodeCombobox.DisplayMember = [System.String]'DisplayName'
$adminLevelCodeCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$adminLevelCodeCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$adminLevelCodeCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$adminLevelCodeCombobox.FormattingEnabled = $true
$adminLevelCodeCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$adminLevelCodeCombobox.Name = [System.String]'adminLevelCodeCombobox'
$adminLevelCodeCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]452,[System.Int32]33))
$adminLevelCodeCombobox.Sorted = $true
$adminLevelCodeCombobox.TabIndex = [System.Int32]1
$adminLevelCodeCombobox.Tag = [System.String]'Mandatory'
$adminLevelCodeCombobox.add_SelectedIndexChanged($logonNameChanged)
$adminLevelCodeCombobox.add_Validating($validating_NotBlank)
$adminLevelCodeCombobox.add_Validated($control_Validated)
#
#label13
#
$label13.AutoSize = $true
$label13.Dock = [System.Windows.Forms.DockStyle]::Top
$label13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label13.Name = [System.String]'label13'
$label13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]181,[System.Int32]25))
$label13.TabIndex = [System.Int32]0
$label13.Text = [System.String]'Admin Level Code*'
#
#errorProvider1
#
$errorProvider1.ContainerControl = $EditAdminForm
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
$savePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1354))
$savePanel.Name = [System.String]'savePanel'
$savePanel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5,[System.Int32]40,[System.Int32]0,[System.Int32]10))
$savePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]962,[System.Int32]110))
$savePanel.TabIndex = [System.Int32]66
$savePanel.Visible = $false
#
#label12
#
$label12.AutoSize = $true
$label12.ForeColor = [System.Drawing.Color]::White
$label12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]526,[System.Int32]45))
$label12.Name = [System.String]'label12'
$label12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]174,[System.Int32]25))
$label12.TabIndex = [System.Int32]13
$label12.Text = [System.String]'Connected to DC: '
#
#DcBox
#
$DcBox.AutoSize = $true
$DcBox.ForeColor = [System.Drawing.Color]::White
$DcBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]526,[System.Int32]75))
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
$cancelButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]260,[System.Int32]40))
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
$editButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]5,[System.Int32]40))
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
$accountActionGroupbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1243))
$accountActionGroupbox.Name = [System.String]'accountActionGroupbox'
$accountActionGroupbox.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]10,[System.Int32]3,[System.Int32]3))
$accountActionGroupbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]962,[System.Int32]111))
$accountActionGroupbox.TabIndex = [System.Int32]67
$accountActionGroupbox.TabStop = $false
$accountActionGroupbox.Text = [System.String]'Account Actions'
$accountActionGroupbox.Visible = $false
#
#tableLayoutPanel6
#
$tableLayoutPanel6.AutoSize = $true
$tableLayoutPanel6.ColumnCount = [System.Int32]2
$tableLayoutPanel6.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle))
$tableLayoutPanel6.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle))
$tableLayoutPanel6.Controls.Add($validateLinkLabel,[System.Int32]1,[System.Int32]2)
$tableLayoutPanel6.Controls.Add($enableLinkLabel,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel6.Controls.Add($validationLabel,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel6.Controls.Add($lockedLabel,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel6.Controls.Add($unlockLinkLabel,[System.Int32]1,[System.Int32]1)
$tableLayoutPanel6.Controls.Add($enabledLabel,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel6.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]33))
$tableLayoutPanel6.Name = [System.String]'tableLayoutPanel6'
$tableLayoutPanel6.RowCount = [System.Int32]3
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]956,[System.Int32]75))
$tableLayoutPanel6.TabIndex = [System.Int32]0
#
#validateLinkLabel
#
$validateLinkLabel.AutoSize = $true
$validateLinkLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$validateLinkLabel.LinkColor = [System.Drawing.Color]::White
$validateLinkLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]162,[System.Int32]48))
$validateLinkLabel.Name = [System.String]'validateLinkLabel'
$validateLinkLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]791,[System.Int32]25))
$validateLinkLabel.TabIndex = [System.Int32]13
$validateLinkLabel.TabStop = $true
$validateLinkLabel.Text = [System.String]'Validate Account'
$validateLinkLabel.add_LinkClicked($validateLinkLabel_LinkClicked)
#
#enableLinkLabel
#
$enableLinkLabel.AutoSize = $true
$enableLinkLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$enableLinkLabel.LinkColor = [System.Drawing.Color]::White
$enableLinkLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]162,[System.Int32]0))
$enableLinkLabel.Name = [System.String]'enableLinkLabel'
$enableLinkLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]791,[System.Int32]24))
$enableLinkLabel.TabIndex = [System.Int32]12
$enableLinkLabel.TabStop = $true
$enableLinkLabel.Text = [System.String]'Enable/Disable Account'
$enableLinkLabel.add_LinkClicked($enableLinkLabel_LinkClicked)
#
#validationLabel
#
$validationLabel.AutoSize = $true
$validationLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$validationLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]48))
$validationLabel.Name = [System.String]'validationLabel'
$validationLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]153,[System.Int32]25))
$validationLabel.TabIndex = [System.Int32]11
$validationLabel.Text = [System.String]'Validated: False'
#
#lockedLabel
#
$lockedLabel.AutoSize = $true
$lockedLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$lockedLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]24))
$lockedLabel.Name = [System.String]'lockedLabel'
$lockedLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]153,[System.Int32]24))
$lockedLabel.TabIndex = [System.Int32]2
$lockedLabel.Text = [System.String]'Locked: False'
#
#unlockLinkLabel
#
$unlockLinkLabel.AutoSize = $true
$unlockLinkLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$unlockLinkLabel.Enabled = $false
$unlockLinkLabel.LinkColor = [System.Drawing.Color]::White
$unlockLinkLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]162,[System.Int32]24))
$unlockLinkLabel.Name = [System.String]'unlockLinkLabel'
$unlockLinkLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]791,[System.Int32]24))
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
$enabledLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]153,[System.Int32]24))
$enabledLabel.TabIndex = [System.Int32]4
$enabledLabel.Text = [System.String]'Enabled: True'
#
#EditAdminForm
#
$EditAdminForm.AutoScroll = $true
$EditAdminForm.AutoValidate = [System.Windows.Forms.AutoValidate]::EnableAllowFocusChange
$EditAdminForm.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]79)),([System.Int32]([System.Byte][System.Byte]93)),([System.Int32]([System.Byte][System.Byte]117)))

$EditAdminForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1003,[System.Int32]861))
$EditAdminForm.Controls.Add($savePanel)
$EditAdminForm.Controls.Add($accountActionGroupbox)
$EditAdminForm.Controls.Add($accountInfoGroupBox)
$EditAdminForm.Controls.Add($employmentInfoGroupBox)
$EditAdminForm.Controls.Add($adminInfoGroupBox)
$EditAdminForm.Controls.Add($SearchGroupBox)
$EditAdminForm.Controls.Add($label1)
$EditAdminForm.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$EditAdminForm.ForeColor = [System.Drawing.Color]::White
$EditAdminForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$EditAdminForm.Name = [System.String]'EditAdminForm'
$EditAdminForm.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
$EditAdminForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$EditAdminForm.Text = [System.String]'Edit Admin Form v1.0'
$EditAdminForm.add_Load($form_Load)
$SearchGroupBox.ResumeLayout($false)
$SearchGroupBox.PerformLayout()
$tableLayoutPanel1.ResumeLayout($false)
$tableLayoutPanel1.PerformLayout()
([System.ComponentModel.ISupportInitialize]$resultDataGridView).EndInit()
$adminInfoGroupBox.ResumeLayout($false)
$adminInfoGroupBox.PerformLayout()
$tableLayoutPanel3.ResumeLayout($false)
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
$employmentInfoGroupBox.ResumeLayout($false)
$employmentInfoGroupBox.PerformLayout()
$tableLayoutPanel2.ResumeLayout($false)
$panel24.ResumeLayout($false)
$panel24.PerformLayout()
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
$panel21.ResumeLayout($false)
$panel21.PerformLayout()
$accountInfoGroupBox.ResumeLayout($false)
$accountInfoGroupBox.PerformLayout()
$tableLayoutPanel5.ResumeLayout($false)
$panel22.ResumeLayout($false)
$panel22.PerformLayout()
$panel16.ResumeLayout($false)
$panel16.PerformLayout()
([System.ComponentModel.ISupportInitialize]$errorProvider1).EndInit()
$savePanel.ResumeLayout($false)
$savePanel.PerformLayout()
$accountActionGroupbox.ResumeLayout($false)
$accountActionGroupbox.PerformLayout()
$tableLayoutPanel6.ResumeLayout($false)
$tableLayoutPanel6.PerformLayout()
$EditAdminForm.ResumeLayout($false)
$EditAdminForm.PerformLayout()
Add-Member -InputObject $EditAdminForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name SearchGroupBox -Value $SearchGroupBox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name tableLayoutPanel1 -Value $tableLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name searchButton -Value $searchButton -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name searchStringTextBox -Value $searchStringTextBox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name resultDataGridView -Value $resultDataGridView -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name adminInfoGroupBox -Value $adminInfoGroupBox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name tableLayoutPanel3 -Value $tableLayoutPanel3 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel8 -Value $panel8 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name descriptionTextbox -Value $descriptionTextbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label15 -Value $label15 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel7 -Value $panel7 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name citizenshipTextbox -Value $citizenshipTextbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel6 -Value $panel6 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name suffixCombobox -Value $suffixCombobox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel5 -Value $panel5 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name edipiTextbox -Value $edipiTextbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name edipiLabel -Value $edipiLabel -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel4 -Value $panel4 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name initialTextbox -Value $initialTextbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel3 -Value $panel3 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name firstNameTextbox -Value $firstNameTextbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel2 -Value $panel2 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name lastNameTextbox -Value $lastNameTextbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label11 -Value $label11 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name employmentInfoGroupBox -Value $employmentInfoGroupBox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name tableLayoutPanel2 -Value $tableLayoutPanel2 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel24 -Value $panel24 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name expirationDateTimePicker -Value $expirationDateTimePicker -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name accountExpirationCheckbox -Value $accountExpirationCheckbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel20 -Value $panel20 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name officeSymbolTextbox -Value $officeSymbolTextbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label23 -Value $label23 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel19 -Value $panel19 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name unitComboBox -Value $unitComboBox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label24 -Value $label24 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel18 -Value $panel18 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name baseNameCombobox -Value $baseNameCombobox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label25 -Value $label25 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel17 -Value $panel17 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name MAJCOMCombobox -Value $MAJCOMCombobox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label10 -Value $label10 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel15 -Value $panel15 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name payGradeCombobox -Value $payGradeCombobox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel14 -Value $panel14 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name payPlanCombobox -Value $payPlanCombobox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel12 -Value $panel12 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name titleTextbox -Value $titleTextbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel10 -Value $panel10 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name branchCombobox -Value $branchCombobox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel11 -Value $panel11 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name employeeTypeCombobox -Value $employeeTypeCombobox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name employeeTypeLabel -Value $employeeTypeLabel -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel21 -Value $panel21 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name phoneTextbox -Value $phoneTextbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label16 -Value $label16 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name accountInfoGroupBox -Value $accountInfoGroupBox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name tableLayoutPanel5 -Value $tableLayoutPanel5 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel22 -Value $panel22 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name logonNameTextbox -Value $logonNameTextbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label14 -Value $label14 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name panel16 -Value $panel16 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name adminLevelCodeCombobox -Value $adminLevelCodeCombobox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label13 -Value $label13 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name errorProvider1 -Value $errorProvider1 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name toolTip1 -Value $toolTip1 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name NameColumn -Value $NameColumn -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name DistinguishedNameColumn -Value $DistinguishedNameColumn -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name SelectColumn -Value $SelectColumn -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name savePanel -Value $savePanel -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name label12 -Value $label12 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name DcBox -Value $DcBox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name editButton -Value $editButton -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name accountActionGroupbox -Value $accountActionGroupbox -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name tableLayoutPanel6 -Value $tableLayoutPanel6 -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name validateLinkLabel -Value $validateLinkLabel -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name enableLinkLabel -Value $enableLinkLabel -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name validationLabel -Value $validationLabel -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name lockedLabel -Value $lockedLabel -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name unlockLinkLabel -Value $unlockLinkLabel -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name enabledLabel -Value $enabledLabel -MemberType NoteProperty
Add-Member -InputObject $EditAdminForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
