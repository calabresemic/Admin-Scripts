[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$CreateAdminForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.SplitContainer]$splitContainer1 = $null
[System.Windows.Forms.TreeView]$pathTreeView = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.ImageList]$imageList1 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.TextBox]$pathTextbox = $null
[System.Windows.Forms.Label]$pathLabel = $null
[System.Windows.Forms.GroupBox]$SearchGroupBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel1 = $null
[System.Windows.Forms.Button]$searchButton = $null
[System.Windows.Forms.TextBox]$searchStringTextBox = $null
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.Button]$noUserButton = $null
[System.Windows.Forms.Panel]$panel1 = $null
[System.Windows.Forms.Panel]$pathPanel = $null
[System.Windows.Forms.DataGridView]$resultDataGridView = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel2 = $null
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
[System.Windows.Forms.Panel]$panel12 = $null
[System.Windows.Forms.TextBox]$titleTextbox = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Panel]$panel10 = $null
[System.Windows.Forms.ComboBox]$branchCombobox = $null
[System.Windows.Forms.Label]$label9 = $null
[System.Windows.Forms.Panel]$panel11 = $null
[System.Windows.Forms.ComboBox]$employeeTypeCombobox = $null
[System.Windows.Forms.Label]$employeeTypeLabel = $null
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
[System.Windows.Forms.GroupBox]$adminInfoGroupBox = $null
[System.Windows.Forms.Panel]$panel14 = $null
[System.Windows.Forms.ComboBox]$payPlanCombobox = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.GroupBox]$accountInfoGroupBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel4 = $null
[System.Windows.Forms.Panel]$panel16 = $null
[System.Windows.Forms.Panel]$panel23 = $null
[System.Windows.Forms.Panel]$panel22 = $null
[System.Windows.Forms.Label]$label13 = $null
[System.Windows.Forms.Label]$label14 = $null
[System.Windows.Forms.TextBox]$logonNameTextbox = $null
[System.Windows.Forms.ComboBox]$adminLevelCodeCombobox = $null
[System.Windows.Forms.RadioButton]$radioButton3 = $null
[System.Windows.Forms.RadioButton]$radioButton2 = $null
[System.Windows.Forms.RadioButton]$radioButton1 = $null
[System.Windows.Forms.TextBox]$validatorTextbox = $null
[System.Windows.Forms.Label]$label12 = $null
[System.Windows.Forms.Label]$DcBox = $null
[System.Windows.Forms.Button]$cancelButton = $null
[System.Windows.Forms.Button]$createButton = $null
[System.Windows.Forms.Panel]$createPanel = $null
[System.Windows.Forms.CheckBox]$addGroupsCheckbox = $null
[System.Windows.Forms.TreeView]$groupTreeView = $null
[System.Windows.Forms.Panel]$addGroupsPanel = $null
[System.Windows.Forms.ErrorProvider]$errorProvider1 = $null
[System.Windows.Forms.ToolTip]$toolTip1 = $null
[System.Windows.Forms.Panel]$panel24 = $null
[System.Windows.Forms.DateTimePicker]$expirationDateTimePicker = $null
[System.Windows.Forms.CheckBox]$accountExpirationCheckbox = $null
[System.Windows.Forms.Panel]$panel21 = $null
[System.Windows.Forms.TextBox]$phoneTextbox = $null
[System.Windows.Forms.Label]$label16 = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$NameColumn = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$DistinguishedNameColumn = $null
[System.Windows.Forms.DataGridViewButtonColumn]$SelectColumn = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
[System.Windows.Forms.DataGridViewCellStyle]$dataGridViewCellStyle1 = (New-Object -TypeName System.Windows.Forms.DataGridViewCellStyle)
$splitContainer1 = (New-Object -TypeName System.Windows.Forms.SplitContainer)
$pathTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$imageList1 = (New-Object -TypeName System.Windows.Forms.ImageList -ArgumentList @($components))
$createPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$label12 = (New-Object -TypeName System.Windows.Forms.Label)
$DcBox = (New-Object -TypeName System.Windows.Forms.Label)
$cancelButton = (New-Object -TypeName System.Windows.Forms.Button)
$createButton = (New-Object -TypeName System.Windows.Forms.Button)
$addGroupsPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$groupTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$addGroupsCheckbox = (New-Object -TypeName System.Windows.Forms.CheckBox)
$accountInfoGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel4 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel23 = (New-Object -TypeName System.Windows.Forms.Panel)
$validatorTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$radioButton3 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$radioButton2 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$radioButton1 = (New-Object -TypeName System.Windows.Forms.RadioButton)
$panel22 = (New-Object -TypeName System.Windows.Forms.Panel)
$logonNameTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label14 = (New-Object -TypeName System.Windows.Forms.Label)
$panel16 = (New-Object -TypeName System.Windows.Forms.Panel)
$adminLevelCodeCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label13 = (New-Object -TypeName System.Windows.Forms.Label)
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
$pathPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$pathTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$pathLabel = (New-Object -TypeName System.Windows.Forms.Label)
$SearchGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$noUserButton = (New-Object -TypeName System.Windows.Forms.Button)
$searchButton = (New-Object -TypeName System.Windows.Forms.Button)
$searchStringTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$resultDataGridView = (New-Object -TypeName System.Windows.Forms.DataGridView)
$NameColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$DistinguishedNameColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$SelectColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewButtonColumn)
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$errorProvider1 = (New-Object -TypeName System.Windows.Forms.ErrorProvider -ArgumentList @($components))
$toolTip1 = (New-Object -TypeName System.Windows.Forms.ToolTip -ArgumentList @($components))
([System.ComponentModel.ISupportInitialize]$splitContainer1).BeginInit()
$splitContainer1.Panel1.SuspendLayout()
$splitContainer1.Panel2.SuspendLayout()
$splitContainer1.SuspendLayout()
$createPanel.SuspendLayout()
$addGroupsPanel.SuspendLayout()
$accountInfoGroupBox.SuspendLayout()
$tableLayoutPanel4.SuspendLayout()
$panel23.SuspendLayout()
$panel22.SuspendLayout()
$panel16.SuspendLayout()
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
$adminInfoGroupBox.SuspendLayout()
$tableLayoutPanel3.SuspendLayout()
$panel8.SuspendLayout()
$panel7.SuspendLayout()
$panel6.SuspendLayout()
$panel5.SuspendLayout()
$panel4.SuspendLayout()
$panel3.SuspendLayout()
$panel2.SuspendLayout()
$pathPanel.SuspendLayout()
$SearchGroupBox.SuspendLayout()
$tableLayoutPanel1.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$resultDataGridView).BeginInit()
([System.ComponentModel.ISupportInitialize]$errorProvider1).BeginInit()
$CreateAdminForm.SuspendLayout()
#
#splitContainer1
#
$splitContainer1.Dock = [System.Windows.Forms.DockStyle]::Fill
$splitContainer1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$splitContainer1.Name = [System.String]'splitContainer1'
#
#splitContainer1.Panel1
#
$splitContainer1.Panel1.Controls.Add($pathTreeView)
#
#splitContainer1.Panel2
#
$splitContainer1.Panel2.AutoScroll = $true
$splitContainer1.Panel2.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]79)),([System.Int32]([System.Byte][System.Byte]93)),([System.Int32]([System.Byte][System.Byte]117)))

$splitContainer1.Panel2.Controls.Add($createPanel)
$splitContainer1.Panel2.Controls.Add($addGroupsPanel)
$splitContainer1.Panel2.Controls.Add($accountInfoGroupBox)
$splitContainer1.Panel2.Controls.Add($employmentInfoGroupBox)
$splitContainer1.Panel2.Controls.Add($adminInfoGroupBox)
$splitContainer1.Panel2.Controls.Add($pathPanel)
$splitContainer1.Panel2.Controls.Add($SearchGroupBox)
$splitContainer1.Panel2.Controls.Add($label1)
$splitContainer1.Panel2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$splitContainer1.Panel2.ForeColor = [System.Drawing.Color]::White
$splitContainer1.Panel2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
$splitContainer1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1184,[System.Int32]861))
$splitContainer1.SplitterDistance = [System.Int32]300
$splitContainer1.TabIndex = [System.Int32]0
#
#pathTreeView
#
$pathTreeView.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]191)),([System.Int32]([System.Byte][System.Byte]192)),([System.Int32]([System.Byte][System.Byte]192)))

$pathTreeView.Dock = [System.Windows.Forms.DockStyle]::Fill
$pathTreeView.ImageIndex = [System.Int32]0
$pathTreeView.ImageList = $imageList1
$pathTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$pathTreeView.Name = [System.String]'pathTreeView'
$pathTreeView.SelectedImageIndex = [System.Int32]0
$pathTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]300,[System.Int32]861))
$pathTreeView.StateImageList = $imageList1
$pathTreeView.TabIndex = [System.Int32]1
$pathTreeView.add_BeforeExpand($pathTreeView_BeforeExpand)
$pathTreeView.add_AfterSelect($pathTreeView_AfterSelect)
#
#imageList1
#
$imageList1.ImageStream = ([System.Windows.Forms.ImageListStreamer]$resources.'imageList1.ImageStream')
$imageList1.TransparentColor = [System.Drawing.Color]::Transparent
$imageList1.Images.SetKeyName([System.Int32]0,[System.String]'OU.png')
$imageList1.Images.SetKeyName([System.Int32]1,[System.String]'User.png')
$imageList1.Images.SetKeyName([System.Int32]2,[System.String]'Computer.png')
#
#createPanel
#
$createPanel.Controls.Add($label12)
$createPanel.Controls.Add($DcBox)
$createPanel.Controls.Add($cancelButton)
$createPanel.Controls.Add($createButton)
$createPanel.Dock = [System.Windows.Forms.DockStyle]::Top
$createPanel.ForeColor = [System.Drawing.Color]::Black
$createPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1715))
$createPanel.Name = [System.String]'createPanel'
$createPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]59))
$createPanel.TabIndex = [System.Int32]58
$createPanel.Visible = $false
#
#label12
#
$label12.AutoSize = $true
$label12.ForeColor = [System.Drawing.Color]::White
$label12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]521,[System.Int32]5))
$label12.Name = [System.String]'label12'
$label12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]174,[System.Int32]25))
$label12.TabIndex = [System.Int32]13
$label12.Text = [System.String]'Connected to DC: '
#
#DcBox
#
$DcBox.AutoSize = $true
$DcBox.ForeColor = [System.Drawing.Color]::White
$DcBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]521,[System.Int32]35))
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
$cancelButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]265,[System.Int32]5))
$cancelButton.Name = [System.String]'cancelButton'
$cancelButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]50))
$cancelButton.TabIndex = [System.Int32]1
$cancelButton.Text = [System.String]'Cancel'
$cancelButton.UseVisualStyleBackColor = $false
#
#createButton
#
$createButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$createButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$createButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$createButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]5,[System.Int32]5))
$createButton.Name = [System.String]'createButton'
$createButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]50))
$createButton.TabIndex = [System.Int32]0
$createButton.Text = [System.String]'Create Admin'
$createButton.UseVisualStyleBackColor = $false
$createButton.add_Click($createButton_Click)
#
#addGroupsPanel
#
$addGroupsPanel.AutoSize = $true
$addGroupsPanel.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$addGroupsPanel.Controls.Add($groupTreeView)
$addGroupsPanel.Controls.Add($addGroupsCheckbox)
$addGroupsPanel.Dock = [System.Windows.Forms.DockStyle]::Top
$addGroupsPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1386))
$addGroupsPanel.Name = [System.String]'addGroupsPanel'
$addGroupsPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]329))
$addGroupsPanel.TabIndex = [System.Int32]61
$addGroupsPanel.Visible = $false
#
#groupTreeView
#
$groupTreeView.CheckBoxes = $true
$groupTreeView.Dock = [System.Windows.Forms.DockStyle]::Top
$groupTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]29))
$groupTreeView.Name = [System.String]'groupTreeView'
$groupTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]300))
$groupTreeView.TabIndex = [System.Int32]60
$groupTreeView.Visible = $false
#
#addGroupsCheckbox
#
$addGroupsCheckbox.AutoSize = $true
$addGroupsCheckbox.Dock = [System.Windows.Forms.DockStyle]::Top
$addGroupsCheckbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$addGroupsCheckbox.Name = [System.String]'addGroupsCheckbox'
$addGroupsCheckbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]29))
$addGroupsCheckbox.TabIndex = [System.Int32]59
$addGroupsCheckbox.Text = [System.String]'Add User to Admin Groups?'
$addGroupsCheckbox.UseVisualStyleBackColor = $true
$addGroupsCheckbox.add_CheckedChanged($addGroupsCheckbox_CheckedChanged)
#
#accountInfoGroupBox
#
$accountInfoGroupBox.Controls.Add($tableLayoutPanel4)
$accountInfoGroupBox.Dock = [System.Windows.Forms.DockStyle]::Top
$accountInfoGroupBox.ForeColor = [System.Drawing.SystemColors]::Control
$accountInfoGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1173))
$accountInfoGroupBox.Name = [System.String]'accountInfoGroupBox'
$accountInfoGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]213))
$accountInfoGroupBox.TabIndex = [System.Int32]37
$accountInfoGroupBox.TabStop = $false
$accountInfoGroupBox.Text = [System.String]'Account Info'
$accountInfoGroupBox.Visible = $false
#
#tableLayoutPanel4
#
$tableLayoutPanel4.ColumnCount = [System.Int32]2
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel4.Controls.Add($panel23,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel4.Controls.Add($panel22,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel4.Controls.Add($panel16,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel4.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel4.Name = [System.String]'tableLayoutPanel4'
$tableLayoutPanel4.RowCount = [System.Int32]2
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]35.9375)))
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]64.0625)))
$tableLayoutPanel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]833,[System.Int32]184))
$tableLayoutPanel4.TabIndex = [System.Int32]0
#
#panel23
#
$panel23.AutoSize = $true
$panel23.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$tableLayoutPanel4.SetColumnSpan($panel23,[System.Int32]2)
$panel23.Controls.Add($validatorTextbox)
$panel23.Controls.Add($radioButton3)
$panel23.Controls.Add($radioButton2)
$panel23.Controls.Add($radioButton1)
$panel23.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel23.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]69))
$panel23.Name = [System.String]'panel23'
$panel23.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel23.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]827,[System.Int32]112))
$panel23.TabIndex = [System.Int32]2
#
#validatorTextbox
#
$validatorTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$validatorTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]97))
$validatorTextbox.Name = [System.String]'validatorTextbox'
$validatorTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]807,[System.Int32]30))
$validatorTextbox.TabIndex = [System.Int32]3
$validatorTextbox.Visible = $false
$validatorTextbox.add_TextChanged($validatorTextbox_TextChanged)
#
#radioButton3
#
$radioButton3.AutoSize = $true
$radioButton3.Checked = $true
$radioButton3.Dock = [System.Windows.Forms.DockStyle]::Top
$radioButton3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]68))
$radioButton3.Name = [System.String]'radioButton3'
$radioButton3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]807,[System.Int32]29))
$radioButton3.TabIndex = [System.Int32]2
$radioButton3.TabStop = $true
$radioButton3.Text = [System.String]'No Validation'
$radioButton3.UseVisualStyleBackColor = $true
$radioButton3.add_CheckedChanged($IAValidate_CheckedChanged)
#
#radioButton2
#
$radioButton2.AutoSize = $true
$radioButton2.Dock = [System.Windows.Forms.DockStyle]::Top
$radioButton2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]39))
$radioButton2.Name = [System.String]'radioButton2'
$radioButton2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]807,[System.Int32]29))
$radioButton2.TabIndex = [System.Int32]1
$radioButton2.Text = [System.String]'Enter CN of Validator'
$radioButton2.UseVisualStyleBackColor = $true
$radioButton2.add_CheckedChanged($IAValidate_CheckedChanged)
#
#radioButton1
#
$radioButton1.AutoSize = $true
$radioButton1.Dock = [System.Windows.Forms.DockStyle]::Top
$radioButton1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$radioButton1.Name = [System.String]'radioButton1'
$radioButton1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]807,[System.Int32]29))
$radioButton1.TabIndex = [System.Int32]0
$radioButton1.Text = [System.String]'Validate Account as myself'
$radioButton1.UseVisualStyleBackColor = $true
$radioButton1.add_CheckedChanged($IAValidate_CheckedChanged)
#
#panel22
#
$panel22.Controls.Add($logonNameTextbox)
$panel22.Controls.Add($label14)
$panel22.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel22.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]419,[System.Int32]3))
$panel22.Name = [System.String]'panel22'
$panel22.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel22.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]411,[System.Int32]60))
$panel22.TabIndex = [System.Int32]1
#
#logonNameTextbox
#
$logonNameTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$logonNameTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$logonNameTextbox.Name = [System.String]'logonNameTextbox'
$logonNameTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]391,[System.Int32]30))
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
$panel16.Controls.Add($adminLevelCodeCombobox)
$panel16.Controls.Add($label13)
$panel16.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel16.Name = [System.String]'panel16'
$panel16.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]410,[System.Int32]60))
$panel16.TabIndex = [System.Int32]0
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
$adminLevelCodeCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]390,[System.Int32]33))
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
#employmentInfoGroupBox
#
$employmentInfoGroupBox.Controls.Add($tableLayoutPanel2)
$employmentInfoGroupBox.Dock = [System.Windows.Forms.DockStyle]::Top
$employmentInfoGroupBox.ForeColor = [System.Drawing.SystemColors]::Control
$employmentInfoGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]809))
$employmentInfoGroupBox.Name = [System.String]'employmentInfoGroupBox'
$employmentInfoGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]364))
$employmentInfoGroupBox.TabIndex = [System.Int32]57
$employmentInfoGroupBox.TabStop = $false
$employmentInfoGroupBox.Text = [System.String]'Employment Information'
$employmentInfoGroupBox.Visible = $false
#
#tableLayoutPanel2
#
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
$tableLayoutPanel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel2.Name = [System.String]'tableLayoutPanel2'
$tableLayoutPanel2.RowCount = [System.Int32]5
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]833,[System.Int32]335))
$tableLayoutPanel2.TabIndex = [System.Int32]0
#
#panel24
#
$panel24.Controls.Add($expirationDateTimePicker)
$panel24.Controls.Add($accountExpirationCheckbox)
$panel24.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel24.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]280,[System.Int32]271))
$panel24.Name = [System.String]'panel24'
$panel24.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]0,[System.Int32]0))
$panel24.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]61))
$panel24.TabIndex = [System.Int32]18
#
#expirationDateTimePicker
#
$expirationDateTimePicker.Dock = [System.Windows.Forms.DockStyle]::Top
$expirationDateTimePicker.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]39))
$expirationDateTimePicker.Name = [System.String]'expirationDateTimePicker'
$expirationDateTimePicker.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]30))
$expirationDateTimePicker.TabIndex = [System.Int32]30
$expirationDateTimePicker.Visible = $false
#
#accountExpirationCheckbox
#
$accountExpirationCheckbox.AutoSize = $true
$accountExpirationCheckbox.Dock = [System.Windows.Forms.DockStyle]::Top
$accountExpirationCheckbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$accountExpirationCheckbox.Name = [System.String]'accountExpirationCheckbox'
$accountExpirationCheckbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]29))
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
$panel20.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]557,[System.Int32]204))
$panel20.Name = [System.String]'panel20'
$panel20.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel20.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]273,[System.Int32]61))
$panel20.TabIndex = [System.Int32]14
#
#officeSymbolTextbox
#
$officeSymbolTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$officeSymbolTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$officeSymbolTextbox.Name = [System.String]'officeSymbolTextbox'
$officeSymbolTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]253,[System.Int32]30))
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
$panel19.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]280,[System.Int32]204))
$panel19.Name = [System.String]'panel19'
$panel19.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel19.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]61))
$panel19.TabIndex = [System.Int32]13
#
#unitComboBox
#
$unitComboBox.Dock = [System.Windows.Forms.DockStyle]::Top
$unitComboBox.FormattingEnabled = $true
$unitComboBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$unitComboBox.Name = [System.String]'unitComboBox'
$unitComboBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]33))
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
$panel18.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]204))
$panel18.Name = [System.String]'panel18'
$panel18.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel18.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]61))
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
$baseNameCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]33))
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
$panel17.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]280,[System.Int32]137))
$panel17.Name = [System.String]'panel17'
$panel17.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel17.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]550,[System.Int32]61))
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
$MAJCOMCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]530,[System.Int32]33))
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
$panel15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]280,[System.Int32]70))
$panel15.Name = [System.String]'panel15'
$panel15.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]61))
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
$payGradeCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]33))
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
$panel14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]70))
$panel14.Name = [System.String]'panel14'
$panel14.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]61))
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
$payPlanCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]33))
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
$panel12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]280,[System.Int32]3))
$panel12.Name = [System.String]'panel12'
$panel12.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]61))
$panel12.TabIndex = [System.Int32]7
#
#titleTextbox
#
$titleTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$titleTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$titleTextbox.Name = [System.String]'titleTextbox'
$titleTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]30))
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
$panel10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]137))
$panel10.Name = [System.String]'panel10'
$panel10.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]61))
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
$branchCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]33))
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
$panel11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]61))
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
$employeeTypeCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]33))
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
$panel21.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]271))
$panel21.Name = [System.String]'panel21'
$panel21.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel21.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]61))
$panel21.TabIndex = [System.Int32]17
#
#phoneTextbox
#
$phoneTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$phoneTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$phoneTextbox.MaxLength = [System.Int32]12
$phoneTextbox.Name = [System.String]'phoneTextbox'
$phoneTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]30))
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
#adminInfoGroupBox
#
$adminInfoGroupBox.Controls.Add($tableLayoutPanel3)
$adminInfoGroupBox.Dock = [System.Windows.Forms.DockStyle]::Top
$adminInfoGroupBox.ForeColor = [System.Drawing.SystemColors]::Control
$adminInfoGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]525))
$adminInfoGroupBox.Name = [System.String]'adminInfoGroupBox'
$adminInfoGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]284))
$adminInfoGroupBox.TabIndex = [System.Int32]56
$adminInfoGroupBox.TabStop = $false
$adminInfoGroupBox.Text = [System.String]'Admin Information'
$adminInfoGroupBox.Visible = $false
#
#tableLayoutPanel3
#
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
$tableLayoutPanel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel3.Name = [System.String]'tableLayoutPanel3'
$tableLayoutPanel3.RowCount = [System.Int32]4
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]833,[System.Int32]255))
$tableLayoutPanel3.TabIndex = [System.Int32]36
#
#panel8
#
$tableLayoutPanel3.SetColumnSpan($panel8,[System.Int32]4)
$panel8.Controls.Add($descriptionTextbox)
$panel8.Controls.Add($label15)
$panel8.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]192))
$panel8.Name = [System.String]'panel8'
$panel8.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]827,[System.Int32]60))
$panel8.TabIndex = [System.Int32]6
#
#descriptionTextbox
#
$descriptionTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$descriptionTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$descriptionTextbox.Name = [System.String]'descriptionTextbox'
$descriptionTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]807,[System.Int32]30))
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
$panel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]626,[System.Int32]129))
$panel7.Name = [System.String]'panel7'
$panel7.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]204,[System.Int32]57))
$panel7.TabIndex = [System.Int32]5
#
#citizenshipTextbox
#
$citizenshipTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$citizenshipTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$citizenshipTextbox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]30))
$citizenshipTextbox.MaxLength = [System.Int32]2
$citizenshipTextbox.Name = [System.String]'citizenshipTextbox'
$citizenshipTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]184,[System.Int32]30))
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
$panel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]418,[System.Int32]129))
$panel6.Name = [System.String]'panel6'
$panel6.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]202,[System.Int32]57))
$panel6.TabIndex = [System.Int32]4
#
#suffixCombobox
#
$suffixCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$suffixCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$suffixCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$suffixCombobox.FormattingEnabled = $true
$suffixCombobox.Items.AddRange([System.Object[]]@([System.String]'',[System.String]'Jr',[System.String]'SR',[System.String]'I',[System.String]'II',[System.String]'III',[System.String]'IV',[System.String]'V'))
$suffixCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$suffixCombobox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]30))
$suffixCombobox.Name = [System.String]'suffixCombobox'
$suffixCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]182,[System.Int32]33))
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
$panel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]141,[System.Int32]129))
$panel5.Name = [System.String]'panel5'
$panel5.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]57))
$panel5.TabIndex = [System.Int32]3
#
#edipiTextbox
#
$edipiTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$edipiTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$edipiTextbox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]30))
$edipiTextbox.MaxLength = [System.Int32]10
$edipiTextbox.Name = [System.String]'edipiTextbox'
$edipiTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]30))
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
$panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]129))
$panel4.Name = [System.String]'panel4'
$panel4.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]132,[System.Int32]57))
$panel4.TabIndex = [System.Int32]2
#
#initialTextbox
#
$initialTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$initialTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$initialTextbox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]30))
$initialTextbox.MaxLength = [System.Int32]1
$initialTextbox.Name = [System.String]'initialTextbox'
$initialTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]112,[System.Int32]30))
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
$panel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]66))
$panel3.Name = [System.String]'panel3'
$panel3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]827,[System.Int32]57))
$panel3.TabIndex = [System.Int32]1
#
#firstNameTextbox
#
$firstNameTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$firstNameTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$firstNameTextbox.Name = [System.String]'firstNameTextbox'
$firstNameTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]807,[System.Int32]30))
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
$panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]827,[System.Int32]57))
$panel2.TabIndex = [System.Int32]0
#
#lastNameTextbox
#
$lastNameTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$lastNameTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$lastNameTextbox.Name = [System.String]'lastNameTextbox'
$lastNameTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]807,[System.Int32]30))
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
#pathPanel
#
$pathPanel.Controls.Add($pathTextbox)
$pathPanel.Controls.Add($pathLabel)
$pathPanel.Dock = [System.Windows.Forms.DockStyle]::Top
$pathPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]450))
$pathPanel.Name = [System.String]'pathPanel'
$pathPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]75))
$pathPanel.TabIndex = [System.Int32]54
$pathPanel.Visible = $false
#
#pathTextbox
#
$pathTextbox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$pathTextbox.BackColor = [System.Drawing.Color]::White
$pathTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]5,[System.Int32]20))
$pathTextbox.Name = [System.String]'pathTextbox'
$pathTextbox.ReadOnly = $true
$pathTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]832,[System.Int32]30))
$pathTextbox.TabIndex = [System.Int32]53
$pathTextbox.Tag = [System.String]''
$pathTextbox.add_Validating($pathTextbox_Validating)
$pathTextbox.add_Validated($control_Validated)
#
#pathLabel
#
$pathLabel.AutoSize = $true
$pathLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$pathLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$pathLabel.Name = [System.String]'pathLabel'
$pathLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]181,[System.Int32]25))
$pathLabel.TabIndex = [System.Int32]51
$pathLabel.Text = [System.String]'Create in Container'
#
#SearchGroupBox
#
$SearchGroupBox.Controls.Add($tableLayoutPanel1)
$SearchGroupBox.Dock = [System.Windows.Forms.DockStyle]::Top
$SearchGroupBox.ForeColor = [System.Drawing.SystemColors]::Control
$SearchGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]61))
$SearchGroupBox.Name = [System.String]'SearchGroupBox'
$SearchGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]389))
$SearchGroupBox.TabIndex = [System.Int32]55
$SearchGroupBox.TabStop = $false
$SearchGroupBox.Text = [System.String]'User Searcher'
#
#tableLayoutPanel1
#
$tableLayoutPanel1.ColumnCount = [System.Int32]3
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.Controls.Add($noUserButton,[System.Int32]1,[System.Int32]2)
$tableLayoutPanel1.Controls.Add($searchButton,[System.Int32]2,[System.Int32]0)
$tableLayoutPanel1.Controls.Add($searchStringTextBox,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel1.Controls.Add($resultDataGridView,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel1.Controls.Add($button2,[System.Int32]2,[System.Int32]2)
$tableLayoutPanel1.Controls.Add($panel1,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel1.Name = [System.String]'tableLayoutPanel1'
$tableLayoutPanel1.RowCount = [System.Int32]3
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]75)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]15)))
$tableLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]833,[System.Int32]360))
$tableLayoutPanel1.TabIndex = [System.Int32]0
#
#noUserButton
#
$noUserButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$noUserButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$noUserButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$noUserButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold))
$noUserButton.ForeColor = [System.Drawing.Color]::Black
$noUserButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]419,[System.Int32]309))
$noUserButton.Name = [System.String]'noUserButton'
$noUserButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]202,[System.Int32]48))
$noUserButton.TabIndex = [System.Int32]10
$noUserButton.Text = [System.String]'No User Account'
$noUserButton.UseVisualStyleBackColor = $false
$noUserButton.Visible = $false
$noUserButton.add_Click($noUserButton_Click)
#
#searchButton
#
$searchButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$searchButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$searchButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$searchButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$searchButton.ForeColor = [System.Drawing.Color]::Black
$searchButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]627,[System.Int32]3))
$searchButton.Name = [System.String]'searchButton'
$searchButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]203,[System.Int32]30))
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
$searchStringTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]618,[System.Int32]30))
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
$resultDataGridView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]39))
$resultDataGridView.Name = [System.String]'resultDataGridView'
$resultDataGridView.ReadOnly = $true
$resultDataGridView.RowHeadersVisible = $false
$resultDataGridView.RowHeadersWidth = [System.Int32]51
$resultDataGridView.RowTemplate.DefaultCellStyle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$resultDataGridView.RowTemplate.DefaultCellStyle.ForeColor = [System.Drawing.Color]::Black
$resultDataGridView.RowTemplate.DefaultCellStyle.SelectionForeColor = [System.Drawing.Color]::Black
$resultDataGridView.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$resultDataGridView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]827,[System.Int32]264))
$resultDataGridView.TabIndex = [System.Int32]7
$resultDataGridView.add_CellContentClick($resultDataGridView_CellContentClick)
#
#NameColumn
#
$NameColumn.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$NameColumn.HeaderText = [System.String]'Name'
$NameColumn.MinimumWidth = [System.Int32]6
$NameColumn.Name = [System.String]'NameColumn'
$NameColumn.ReadOnly = $true
$NameColumn.Width = [System.Int32]93
#
#DistinguishedNameColumn
#
$DistinguishedNameColumn.HeaderText = [System.String]'DistinguishedName'
$DistinguishedNameColumn.MinimumWidth = [System.Int32]6
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
$SelectColumn.MinimumWidth = [System.Int32]6
$SelectColumn.Name = [System.String]'SelectColumn'
$SelectColumn.ReadOnly = $true
$SelectColumn.Width = [System.Int32]6
#
#button2
#
$button2.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$button2.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$button2.Dock = [System.Windows.Forms.DockStyle]::Fill
$button2.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$button2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold))
$button2.ForeColor = [System.Drawing.Color]::Black
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]627,[System.Int32]309))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]203,[System.Int32]48))
$button2.TabIndex = [System.Int32]8
$button2.Text = [System.String]'Cancel'
$button2.UseVisualStyleBackColor = $false
#
#panel1
#
$panel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]309))
$panel1.Name = [System.String]'panel1'
$panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]410,[System.Int32]48))
$panel1.TabIndex = [System.Int32]9
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
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]266,[System.Int32]51))
$label1.TabIndex = [System.Int32]53
$label1.Text = [System.String]'Create Admin Form'
#
#errorProvider1
#
$errorProvider1.ContainerControl = $CreateAdminForm
#
#CreateAdminForm
#
$CreateAdminForm.AutoValidate = [System.Windows.Forms.AutoValidate]::EnableAllowFocusChange
$CreateAdminForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1184,[System.Int32]861))
$CreateAdminForm.Controls.Add($splitContainer1)
$CreateAdminForm.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$CreateAdminForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$CreateAdminForm.Name = [System.String]'CreateAdminForm'
$CreateAdminForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$CreateAdminForm.Text = [System.String]'Create Admin Form v1.0'
$CreateAdminForm.add_Load($form_Load)
$splitContainer1.Panel1.ResumeLayout($false)
$splitContainer1.Panel2.ResumeLayout($false)
$splitContainer1.Panel2.PerformLayout()
([System.ComponentModel.ISupportInitialize]$splitContainer1).EndInit()
$splitContainer1.ResumeLayout($false)
$createPanel.ResumeLayout($false)
$createPanel.PerformLayout()
$addGroupsPanel.ResumeLayout($false)
$addGroupsPanel.PerformLayout()
$accountInfoGroupBox.ResumeLayout($false)
$tableLayoutPanel4.ResumeLayout($false)
$tableLayoutPanel4.PerformLayout()
$panel23.ResumeLayout($false)
$panel23.PerformLayout()
$panel22.ResumeLayout($false)
$panel22.PerformLayout()
$panel16.ResumeLayout($false)
$panel16.PerformLayout()
$employmentInfoGroupBox.ResumeLayout($false)
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
$adminInfoGroupBox.ResumeLayout($false)
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
$pathPanel.ResumeLayout($false)
$pathPanel.PerformLayout()
$SearchGroupBox.ResumeLayout($false)
$tableLayoutPanel1.ResumeLayout($false)
$tableLayoutPanel1.PerformLayout()
([System.ComponentModel.ISupportInitialize]$resultDataGridView).EndInit()
([System.ComponentModel.ISupportInitialize]$errorProvider1).EndInit()
$CreateAdminForm.ResumeLayout($false)
Add-Member -InputObject $CreateAdminForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name splitContainer1 -Value $splitContainer1 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name pathTreeView -Value $pathTreeView -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name imageList1 -Value $imageList1 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name pathTextbox -Value $pathTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name pathLabel -Value $pathLabel -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name SearchGroupBox -Value $SearchGroupBox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name tableLayoutPanel1 -Value $tableLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name searchButton -Value $searchButton -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name searchStringTextBox -Value $searchStringTextBox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name noUserButton -Value $noUserButton -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel1 -Value $panel1 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name pathPanel -Value $pathPanel -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name resultDataGridView -Value $resultDataGridView -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name tableLayoutPanel2 -Value $tableLayoutPanel2 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel20 -Value $panel20 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name officeSymbolTextbox -Value $officeSymbolTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label23 -Value $label23 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel19 -Value $panel19 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name unitComboBox -Value $unitComboBox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label24 -Value $label24 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel18 -Value $panel18 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name baseNameCombobox -Value $baseNameCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label25 -Value $label25 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel17 -Value $panel17 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name MAJCOMCombobox -Value $MAJCOMCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label10 -Value $label10 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel15 -Value $panel15 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name payGradeCombobox -Value $payGradeCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel12 -Value $panel12 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name titleTextbox -Value $titleTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel10 -Value $panel10 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name branchCombobox -Value $branchCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel11 -Value $panel11 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name employeeTypeCombobox -Value $employeeTypeCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name employeeTypeLabel -Value $employeeTypeLabel -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name tableLayoutPanel3 -Value $tableLayoutPanel3 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel8 -Value $panel8 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name descriptionTextbox -Value $descriptionTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label15 -Value $label15 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel7 -Value $panel7 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name citizenshipTextbox -Value $citizenshipTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel6 -Value $panel6 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name suffixCombobox -Value $suffixCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel5 -Value $panel5 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name edipiTextbox -Value $edipiTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name edipiLabel -Value $edipiLabel -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel4 -Value $panel4 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name initialTextbox -Value $initialTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel3 -Value $panel3 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name firstNameTextbox -Value $firstNameTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel2 -Value $panel2 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name lastNameTextbox -Value $lastNameTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label11 -Value $label11 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name employmentInfoGroupBox -Value $employmentInfoGroupBox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name adminInfoGroupBox -Value $adminInfoGroupBox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel14 -Value $panel14 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name payPlanCombobox -Value $payPlanCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name accountInfoGroupBox -Value $accountInfoGroupBox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name tableLayoutPanel4 -Value $tableLayoutPanel4 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel16 -Value $panel16 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel23 -Value $panel23 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel22 -Value $panel22 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label13 -Value $label13 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label14 -Value $label14 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name logonNameTextbox -Value $logonNameTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name adminLevelCodeCombobox -Value $adminLevelCodeCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name radioButton3 -Value $radioButton3 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name radioButton2 -Value $radioButton2 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name radioButton1 -Value $radioButton1 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name validatorTextbox -Value $validatorTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label12 -Value $label12 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name DcBox -Value $DcBox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name createButton -Value $createButton -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name createPanel -Value $createPanel -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name addGroupsCheckbox -Value $addGroupsCheckbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name groupTreeView -Value $groupTreeView -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name addGroupsPanel -Value $addGroupsPanel -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name errorProvider1 -Value $errorProvider1 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name toolTip1 -Value $toolTip1 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel24 -Value $panel24 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name expirationDateTimePicker -Value $expirationDateTimePicker -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name accountExpirationCheckbox -Value $accountExpirationCheckbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name panel21 -Value $panel21 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name phoneTextbox -Value $phoneTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name label16 -Value $label16 -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name NameColumn -Value $NameColumn -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name DistinguishedNameColumn -Value $DistinguishedNameColumn -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name SelectColumn -Value $SelectColumn -MemberType NoteProperty
Add-Member -InputObject $CreateAdminForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
