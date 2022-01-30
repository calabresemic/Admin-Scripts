[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$CreateSVCForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.SplitContainer]$splitContainer1 = $null
[System.Windows.Forms.Label]$pathLabel = $null
[System.Windows.Forms.ErrorProvider]$errorProvider1 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.ToolTip]$toolTip1 = $null
[System.Windows.Forms.TreeView]$pathTreeView = $null
[System.Windows.Forms.ImageList]$imageList1 = $null
[System.Windows.Forms.ComboBox]$baseNameCombobox = $null
[System.Windows.Forms.TextBox]$emailTextbox = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.TextBox]$phoneTextbox = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.TextBox]$officeSymbolTextbox = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.ComboBox]$unitCombobox = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Panel]$panel1 = $null
[System.Windows.Forms.Button]$cancelButton = $null
[System.Windows.Forms.Button]$createButton = $null
[System.Windows.Forms.Panel]$panel2 = $null
[System.Windows.Forms.TextBox]$pathTextbox = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.GroupBox]$groupBox1 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel4 = $null
[System.Windows.Forms.Panel]$panel11 = $null
[System.Windows.Forms.Panel]$panel10 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel3 = $null
[System.Windows.Forms.Panel]$panel9 = $null
[System.Windows.Forms.Panel]$panel8 = $null
[System.Windows.Forms.Panel]$panel7 = $null
[System.Windows.Forms.GroupBox]$groupBox3 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel2 = $null
[System.Windows.Forms.Panel]$panel3 = $null
[System.Windows.Forms.TextBox]$nameTextbox = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Panel]$panel4 = $null
[System.Windows.Forms.TextBox]$CRQTextbox = $null
[System.Windows.Forms.Label]$label9 = $null
[System.Windows.Forms.Panel]$panel5 = $null
[System.Windows.Forms.TextBox]$descriptionTextbox = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Label]$DcBox = $null
[System.Windows.Forms.Label]$label10 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
$splitContainer1 = (New-Object -TypeName System.Windows.Forms.SplitContainer)
$pathTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$imageList1 = (New-Object -TypeName System.Windows.Forms.ImageList -ArgumentList @($components))
$panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$label10 = (New-Object -TypeName System.Windows.Forms.Label)
$DcBox = (New-Object -TypeName System.Windows.Forms.Label)
$cancelButton = (New-Object -TypeName System.Windows.Forms.Button)
$createButton = (New-Object -TypeName System.Windows.Forms.Button)
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel4 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel11 = (New-Object -TypeName System.Windows.Forms.Panel)
$emailTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$panel10 = (New-Object -TypeName System.Windows.Forms.Panel)
$phoneTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label7 = (New-Object -TypeName System.Windows.Forms.Label)
$tableLayoutPanel3 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel9 = (New-Object -TypeName System.Windows.Forms.Panel)
$officeSymbolTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$panel8 = (New-Object -TypeName System.Windows.Forms.Panel)
$unitCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$panel7 = (New-Object -TypeName System.Windows.Forms.Panel)
$baseNameCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$groupBox3 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel2 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel3 = (New-Object -TypeName System.Windows.Forms.Panel)
$nameTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$panel4 = (New-Object -TypeName System.Windows.Forms.Panel)
$CRQTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label9 = (New-Object -TypeName System.Windows.Forms.Label)
$panel5 = (New-Object -TypeName System.Windows.Forms.Panel)
$descriptionTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$panel2 = (New-Object -TypeName System.Windows.Forms.Panel)
$pathTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$pathLabel = (New-Object -TypeName System.Windows.Forms.Label)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$errorProvider1 = (New-Object -TypeName System.Windows.Forms.ErrorProvider -ArgumentList @($components))
$toolTip1 = (New-Object -TypeName System.Windows.Forms.ToolTip -ArgumentList @($components))
([System.ComponentModel.ISupportInitialize]$splitContainer1).BeginInit()
$splitContainer1.Panel1.SuspendLayout()
$splitContainer1.Panel2.SuspendLayout()
$splitContainer1.SuspendLayout()
$panel1.SuspendLayout()
$groupBox1.SuspendLayout()
$tableLayoutPanel4.SuspendLayout()
$panel11.SuspendLayout()
$panel10.SuspendLayout()
$tableLayoutPanel3.SuspendLayout()
$panel9.SuspendLayout()
$panel8.SuspendLayout()
$panel7.SuspendLayout()
$groupBox3.SuspendLayout()
$tableLayoutPanel2.SuspendLayout()
$panel3.SuspendLayout()
$panel4.SuspendLayout()
$panel5.SuspendLayout()
$panel2.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$errorProvider1).BeginInit()
$CreateSVCForm.SuspendLayout()
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

$splitContainer1.Panel2.Controls.Add($panel1)
$splitContainer1.Panel2.Controls.Add($groupBox1)
$splitContainer1.Panel2.Controls.Add($groupBox3)
$splitContainer1.Panel2.Controls.Add($panel2)
$splitContainer1.Panel2.Controls.Add($label1)
$splitContainer1.Panel2.ForeColor = [System.Drawing.Color]::White
$splitContainer1.Panel2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
$splitContainer1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1184,[System.Int32]536))
$splitContainer1.SplitterDistance = [System.Int32]300
$splitContainer1.TabIndex = [System.Int32]0
#
#pathTreeView
#
$pathTreeView.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]191)),([System.Int32]([System.Byte][System.Byte]192)),([System.Int32]([System.Byte][System.Byte]192)))

$pathTreeView.Dock = [System.Windows.Forms.DockStyle]::Fill
$pathTreeView.ForeColor = [System.Drawing.SystemColors]::WindowText
$pathTreeView.ImageIndex = [System.Int32]0
$pathTreeView.ImageList = $imageList1
$pathTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$pathTreeView.Name = [System.String]'pathTreeView'
$pathTreeView.SelectedImageIndex = [System.Int32]0
$pathTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]300,[System.Int32]536))
$pathTreeView.StateImageList = $imageList1
$pathTreeView.TabIndex = [System.Int32]0
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
#panel1
#
$panel1.Controls.Add($label10)
$panel1.Controls.Add($DcBox)
$panel1.Controls.Add($cancelButton)
$panel1.Controls.Add($createButton)
$panel1.Dock = [System.Windows.Forms.DockStyle]::Top
$panel1.ForeColor = [System.Drawing.Color]::Black
$panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]468))
$panel1.Name = [System.String]'panel1'
$panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]860,[System.Int32]62))
$panel1.TabIndex = [System.Int32]4
#
#label10
#
$label10.AutoSize = $true
$label10.ForeColor = [System.Drawing.Color]::White
$label10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]521,[System.Int32]5))
$label10.Name = [System.String]'label10'
$label10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]140,[System.Int32]20))
$label10.TabIndex = [System.Int32]11
$label10.Text = [System.String]'Connected to DC: '
#
#DcBox
#
$DcBox.AutoSize = $true
$DcBox.ForeColor = [System.Drawing.Color]::White
$DcBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]521,[System.Int32]35))
$DcBox.Name = [System.String]'DcBox'
$DcBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]74,[System.Int32]20))
$DcBox.TabIndex = [System.Int32]10
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
$createButton.Text = [System.String]'Create SVC'
$createButton.UseVisualStyleBackColor = $false
$createButton.add_Click($createButton_Click)
#
#groupBox1
#
$groupBox1.AutoSize = $true
$groupBox1.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$groupBox1.Controls.Add($tableLayoutPanel4)
$groupBox1.Controls.Add($tableLayoutPanel3)
$groupBox1.Dock = [System.Windows.Forms.DockStyle]::Top
$groupBox1.ForeColor = [System.Drawing.SystemColors]::Control
$groupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]301))
$groupBox1.Name = [System.String]'groupBox1'
$groupBox1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]10))
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]860,[System.Int32]167))
$groupBox1.TabIndex = [System.Int32]8
$groupBox1.TabStop = $false
$groupBox1.Text = [System.String]'Owner Information'
$groupBox1.add_Enter($groupBox1_Enter)
#
#tableLayoutPanel4
#
$tableLayoutPanel4.ColumnCount = [System.Int32]2
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]66.66666)))
$tableLayoutPanel4.Controls.Add($panel11,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel4.Controls.Add($panel10,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel4.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]92))
$tableLayoutPanel4.Name = [System.String]'tableLayoutPanel4'
$tableLayoutPanel4.RowCount = [System.Int32]1
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]854,[System.Int32]65))
$tableLayoutPanel4.TabIndex = [System.Int32]1
#
#panel11
#
$panel11.Controls.Add($emailTextbox)
$panel11.Controls.Add($label8)
$panel11.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287,[System.Int32]3))
$panel11.Name = [System.String]'panel11'
$panel11.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]564,[System.Int32]59))
$panel11.TabIndex = [System.Int32]1
#
#emailTextbox
#
$emailTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$emailTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$emailTextbox.Name = [System.String]'emailTextbox'
$emailTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]544,[System.Int32]26))
$emailTextbox.TabIndex = [System.Int32]4
$emailTextbox.Tag = [System.String]'Mandatory'
$emailTextbox.add_Validating($emailTextbox_Validating)
$emailTextbox.add_Validated($control_Validated)
#
#label8
#
$label8.AutoSize = $true
$label8.Dock = [System.Windows.Forms.DockStyle]::Top
$label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label8.Name = [System.String]'label8'
$label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]20))
$label8.TabIndex = [System.Int32]8
$label8.Text = [System.String]'Owner Email*'
#
#panel10
#
$panel10.Controls.Add($phoneTextbox)
$panel10.Controls.Add($label7)
$panel10.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel10.Name = [System.String]'panel10'
$panel10.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]278,[System.Int32]59))
$panel10.TabIndex = [System.Int32]0
#
#phoneTextbox
#
$phoneTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$phoneTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$phoneTextbox.MaxLength = [System.Int32]12
$phoneTextbox.Name = [System.String]'phoneTextbox'
$phoneTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]258,[System.Int32]26))
$phoneTextbox.TabIndex = [System.Int32]3
$phoneTextbox.Tag = [System.String]'Mandatory'
$phoneTextbox.add_Validating($phoneTextbox_Validating)
$phoneTextbox.add_Validated($control_Validated)
#
#label7
#
$label7.AutoSize = $true
$label7.Dock = [System.Windows.Forms.DockStyle]::Top
$label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label7.Name = [System.String]'label7'
$label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]159,[System.Int32]20))
$label7.TabIndex = [System.Int32]6
$label7.Text = [System.String]'DSN Phone Number*'
#
#tableLayoutPanel3
#
$tableLayoutPanel3.ColumnCount = [System.Int32]3
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]39.45578)))
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]28.57143)))
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]32.08617)))
$tableLayoutPanel3.Controls.Add($panel9,[System.Int32]2,[System.Int32]0)
$tableLayoutPanel3.Controls.Add($panel8,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel3.Controls.Add($panel7,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel3.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]22))
$tableLayoutPanel3.Name = [System.String]'tableLayoutPanel3'
$tableLayoutPanel3.RowCount = [System.Int32]1
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]854,[System.Int32]70))
$tableLayoutPanel3.TabIndex = [System.Int32]0
#
#panel9
#
$panel9.Controls.Add($officeSymbolTextbox)
$panel9.Controls.Add($label6)
$panel9.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]582,[System.Int32]3))
$panel9.Name = [System.String]'panel9'
$panel9.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]269,[System.Int32]64))
$panel9.TabIndex = [System.Int32]2
#
#officeSymbolTextbox
#
$officeSymbolTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$officeSymbolTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$officeSymbolTextbox.Name = [System.String]'officeSymbolTextbox'
$officeSymbolTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]249,[System.Int32]26))
$officeSymbolTextbox.TabIndex = [System.Int32]2
$officeSymbolTextbox.Tag = [System.String]'Mandatory'
$officeSymbolTextbox.add_Validating($validating_NotBlank)
$officeSymbolTextbox.add_Validated($control_Validated)
#
#label6
#
$label6.AutoSize = $true
$label6.Dock = [System.Windows.Forms.DockStyle]::Top
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label6.Name = [System.String]'label6'
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]113,[System.Int32]20))
$label6.TabIndex = [System.Int32]4
$label6.Text = [System.String]'Office Symbol*'
#
#panel8
#
$panel8.Controls.Add($unitCombobox)
$panel8.Controls.Add($label5)
$panel8.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]339,[System.Int32]3))
$panel8.Name = [System.String]'panel8'
$panel8.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]237,[System.Int32]64))
$panel8.TabIndex = [System.Int32]1
#
#unitCombobox
#
$unitCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$unitCombobox.FormattingEnabled = $true
$unitCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$unitCombobox.Name = [System.String]'unitCombobox'
$unitCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]217,[System.Int32]28))
$unitCombobox.TabIndex = [System.Int32]1
$unitCombobox.Tag = [System.String]'Mandatory'
$toolTip1.SetToolTip($unitCombobox,[System.String]'These values are pulled from the Base OU businessCategory attribue that corresponds to the base name in the previous box.')
$unitCombobox.add_Validating($validating_NotBlank)
$unitCombobox.add_Validated($control_Validated)
#
#label5
#
$label5.AutoSize = $true
$label5.Dock = [System.Windows.Forms.DockStyle]::Top
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]44,[System.Int32]20))
$label5.TabIndex = [System.Int32]2
$label5.Text = [System.String]'Unit*'
#
#panel7
#
$panel7.Controls.Add($baseNameCombobox)
$panel7.Controls.Add($label4)
$panel7.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel7.Name = [System.String]'panel7'
$panel7.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]330,[System.Int32]64))
$panel7.TabIndex = [System.Int32]0
#
#baseNameCombobox
#
$baseNameCombobox.DisplayMember = [System.String]'Name'
$baseNameCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$baseNameCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$baseNameCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$baseNameCombobox.FormattingEnabled = $true
$baseNameCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$baseNameCombobox.Name = [System.String]'baseNameCombobox'
$baseNameCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]310,[System.Int32]28))
$baseNameCombobox.TabIndex = [System.Int32]43
$baseNameCombobox.Tag = [System.String]'Mandatory'
$baseNameCombobox.add_SelectedIndexChanged($baseNameCombobox_SelectedIndexChange)
$baseNameCombobox.add_Validating($validating_NotBlank)
$baseNameCombobox.add_Validated($control_Validated)
#
#label4
#
$label4.AutoSize = $true
$label4.Dock = [System.Windows.Forms.DockStyle]::Top
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]98,[System.Int32]20))
$label4.TabIndex = [System.Int32]0
$label4.Text = [System.String]'Base Name*'
#
#groupBox3
#
$groupBox3.Controls.Add($tableLayoutPanel2)
$groupBox3.Dock = [System.Windows.Forms.DockStyle]::Top
$groupBox3.ForeColor = [System.Drawing.SystemColors]::Control
$groupBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]130))
$groupBox3.Name = [System.String]'groupBox3'
$groupBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]860,[System.Int32]171))
$groupBox3.TabIndex = [System.Int32]7
$groupBox3.TabStop = $false
$groupBox3.Text = [System.String]'Acount Information'
#
#tableLayoutPanel2
#
$tableLayoutPanel2.ColumnCount = [System.Int32]2
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel2.Controls.Add($panel3,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel2.Controls.Add($panel4,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel2.Controls.Add($panel5,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]22))
$tableLayoutPanel2.Name = [System.String]'tableLayoutPanel2'
$tableLayoutPanel2.RowCount = [System.Int32]2
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]854,[System.Int32]146))
$tableLayoutPanel2.TabIndex = [System.Int32]0
#
#panel3
#
$panel3.Controls.Add($nameTextbox)
$panel3.Controls.Add($label2)
$panel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel3.Name = [System.String]'panel3'
$panel3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]421,[System.Int32]67))
$panel3.TabIndex = [System.Int32]0
#
#nameTextbox
#
$nameTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$nameTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$nameTextbox.MaxLength = [System.Int32]20
$nameTextbox.Name = [System.String]'nameTextbox'
$nameTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]401,[System.Int32]26))
$nameTextbox.TabIndex = [System.Int32]58
$nameTextbox.Tag = [System.String]'Mandatory'
$toolTip1.SetToolTip($nameTextbox,[System.String]'Service account name format: 
<$Type>[DOT]<Scope>[DOT]<Function> 
')
$nameTextbox.add_Validating($serviceAccountNameTextbox_Validating)
$nameTextbox.add_Validated($control_Validated)
#
#label2
#
$label2.AutoSize = $true
$label2.Dock = [System.Windows.Forms.DockStyle]::Top
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176,[System.Int32]20))
$label2.TabIndex = [System.Int32]59
$label2.Text = [System.String]'Service Account Name*'
#
#panel4
#
$panel4.Controls.Add($CRQTextbox)
$panel4.Controls.Add($label9)
$panel4.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]430,[System.Int32]3))
$panel4.Name = [System.String]'panel4'
$panel4.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]421,[System.Int32]67))
$panel4.TabIndex = [System.Int32]1
#
#CRQTextbox
#
$CRQTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$CRQTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$CRQTextbox.MaxLength = [System.Int32]15
$CRQTextbox.Name = [System.String]'CRQTextbox'
$CRQTextbox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$CRQTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]401,[System.Int32]26))
$CRQTextbox.TabIndex = [System.Int32]62
$CRQTextbox.Tag = [System.String]'Mandatory'
$toolTip1.SetToolTip($CRQTextbox,[System.String]$resources.'CRQTextbox.ToolTip')
$CRQTextbox.add_Validating($CRQTextbox_Validating)
$CRQTextbox.add_Validated($control_Validated)
#
#label9
#
$label9.AutoSize = $true
$label9.Dock = [System.Windows.Forms.DockStyle]::Top
$label9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label9.Name = [System.String]'label9'
$label9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]141,[System.Int32]20))
$label9.TabIndex = [System.Int32]63
$label9.Text = [System.String]'CRQ/WO Number*'
#
#panel5
#
$tableLayoutPanel2.SetColumnSpan($panel5,[System.Int32]2)
$panel5.Controls.Add($descriptionTextbox)
$panel5.Controls.Add($label3)
$panel5.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]76))
$panel5.Name = [System.String]'panel5'
$panel5.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]848,[System.Int32]67))
$panel5.TabIndex = [System.Int32]2
#
#descriptionTextbox
#
$descriptionTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$descriptionTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$descriptionTextbox.Name = [System.String]'descriptionTextbox'
$descriptionTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]828,[System.Int32]26))
$descriptionTextbox.TabIndex = [System.Int32]60
$descriptionTextbox.Tag = [System.String]'Mandatory'
$toolTip1.SetToolTip($descriptionTextbox,[System.String]'A brief description of the account and for what it is used.')
$descriptionTextbox.add_Validating($validating_NotBlank)
$descriptionTextbox.add_Validated($control_Validated)
#
#label3
#
$label3.AutoSize = $true
$label3.Dock = [System.Windows.Forms.DockStyle]::Top
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]95,[System.Int32]20))
$label3.TabIndex = [System.Int32]61
$label3.Text = [System.String]'Description*'
#
#panel2
#
$panel2.Controls.Add($pathTextbox)
$panel2.Controls.Add($pathLabel)
$panel2.Dock = [System.Windows.Forms.DockStyle]::Top
$panel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]55))
$panel2.Name = [System.String]'panel2'
$panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]860,[System.Int32]75))
$panel2.TabIndex = [System.Int32]1
#
#pathTextbox
#
$pathTextbox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$pathTextbox.BackColor = [System.Drawing.Color]::White
$pathTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]5,[System.Int32]20))
$pathTextbox.Name = [System.String]'pathTextbox'
$pathTextbox.ReadOnly = $true
$pathTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]853,[System.Int32]26))
$pathTextbox.TabIndex = [System.Int32]53
$pathTextbox.Tag = [System.String]'Mandatory'
$pathTextbox.add_Validating($pathTextbox_Validating)
$pathTextbox.add_Validated($control_Validated)
#
#pathLabel
#
$pathLabel.AutoSize = $true
$pathLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$pathLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$pathLabel.Name = [System.String]'pathLabel'
$pathLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]146,[System.Int32]20))
$pathLabel.TabIndex = [System.Int32]51
$pathLabel.Text = [System.String]'Create in Container'
#
#label1
#
$label1.AutoSize = $true
$label1.Dock = [System.Windows.Forms.DockStyle]::Top
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]15.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$label1.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$label1.Name = [System.String]'label1'
$label1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]20))
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]320,[System.Int32]45))
$label1.TabIndex = [System.Int32]9
$label1.Text = [System.String]'Create Service Account Form'
#
#errorProvider1
#
$errorProvider1.ContainerControl = $CreateSVCForm
#
#CreateSVCForm
#
$CreateSVCForm.AutoValidate = [System.Windows.Forms.AutoValidate]::EnableAllowFocusChange
$CreateSVCForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1184,[System.Int32]536))
$CreateSVCForm.Controls.Add($splitContainer1)
$CreateSVCForm.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$CreateSVCForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$CreateSVCForm.Name = [System.String]'CreateSVCForm'
$CreateSVCForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$CreateSVCForm.Text = [System.String]'Create Service Account Form v1.0'
$CreateSVCForm.add_Load($form_Load)
$splitContainer1.Panel1.ResumeLayout($false)
$splitContainer1.Panel2.ResumeLayout($false)
$splitContainer1.Panel2.PerformLayout()
([System.ComponentModel.ISupportInitialize]$splitContainer1).EndInit()
$splitContainer1.ResumeLayout($false)
$panel1.ResumeLayout($false)
$panel1.PerformLayout()
$groupBox1.ResumeLayout($false)
$tableLayoutPanel4.ResumeLayout($false)
$panel11.ResumeLayout($false)
$panel11.PerformLayout()
$panel10.ResumeLayout($false)
$panel10.PerformLayout()
$tableLayoutPanel3.ResumeLayout($false)
$panel9.ResumeLayout($false)
$panel9.PerformLayout()
$panel8.ResumeLayout($false)
$panel8.PerformLayout()
$panel7.ResumeLayout($false)
$panel7.PerformLayout()
$groupBox3.ResumeLayout($false)
$tableLayoutPanel2.ResumeLayout($false)
$panel3.ResumeLayout($false)
$panel3.PerformLayout()
$panel4.ResumeLayout($false)
$panel4.PerformLayout()
$panel5.ResumeLayout($false)
$panel5.PerformLayout()
$panel2.ResumeLayout($false)
$panel2.PerformLayout()
([System.ComponentModel.ISupportInitialize]$errorProvider1).EndInit()
$CreateSVCForm.ResumeLayout($false)
Add-Member -InputObject $CreateSVCForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name splitContainer1 -Value $splitContainer1 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name pathLabel -Value $pathLabel -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name errorProvider1 -Value $errorProvider1 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name toolTip1 -Value $toolTip1 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name pathTreeView -Value $pathTreeView -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name imageList1 -Value $imageList1 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name baseNameCombobox -Value $baseNameCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name emailTextbox -Value $emailTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name phoneTextbox -Value $phoneTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name officeSymbolTextbox -Value $officeSymbolTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name unitCombobox -Value $unitCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name panel1 -Value $panel1 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name cancelButton -Value $cancelButton -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name createButton -Value $createButton -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name panel2 -Value $panel2 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name pathTextbox -Value $pathTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name groupBox1 -Value $groupBox1 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name tableLayoutPanel4 -Value $tableLayoutPanel4 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name panel11 -Value $panel11 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name panel10 -Value $panel10 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name tableLayoutPanel3 -Value $tableLayoutPanel3 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name panel9 -Value $panel9 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name panel8 -Value $panel8 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name panel7 -Value $panel7 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name groupBox3 -Value $groupBox3 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name tableLayoutPanel2 -Value $tableLayoutPanel2 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name panel3 -Value $panel3 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name nameTextbox -Value $nameTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name panel4 -Value $panel4 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name CRQTextbox -Value $CRQTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name panel5 -Value $panel5 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name descriptionTextbox -Value $descriptionTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name DcBox -Value $DcBox -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name label10 -Value $label10 -MemberType NoteProperty
Add-Member -InputObject $CreateSVCForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
