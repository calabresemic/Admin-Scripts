[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$createUserForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.ErrorProvider]$errorProvider1 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.SplitContainer]$splitContainer1 = $null
[System.Windows.Forms.Label]$userCreateLabel = $null
[System.Windows.Forms.GroupBox]$groupBox1 = $null
[System.Windows.Forms.TextBox]$descriptionTextbox = $null
[System.Windows.Forms.Label]$label15 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.TextBox]$firstNameTextbox = $null
[System.Windows.Forms.GroupBox]$groupBox2 = $null
[System.Windows.Forms.ComboBox]$employeeTypeCombobox = $null
[System.Windows.Forms.ComboBox]$payGradeCombobox = $null
[System.Windows.Forms.ComboBox]$payPlanCombobox = $null
[System.Windows.Forms.TextBox]$titleTextbox = $null
[System.Windows.Forms.Label]$employeeTypeLabel = $null
[System.Windows.Forms.Label]$label10 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.GroupBox]$groupBox3 = $null
[System.Windows.Forms.GroupBox]$groupBox4 = $null
[System.Windows.Forms.TextBox]$countryTextbox = $null
[System.Windows.Forms.TextBox]$zipTextbox = $null
[System.Windows.Forms.TextBox]$stateTextbox = $null
[System.Windows.Forms.TextBox]$streetTextbox = $null
[System.Windows.Forms.Label]$label16 = $null
[System.Windows.Forms.Label]$label17 = $null
[System.Windows.Forms.Label]$label18 = $null
[System.Windows.Forms.Label]$label20 = $null
[System.Windows.Forms.Label]$label19 = $null
[System.Windows.Forms.CheckBox]$addGroupsCheckbox = $null
[System.Windows.Forms.Panel]$panel1 = $null
[System.Windows.Forms.Button]$cancelButton = $null
[System.Windows.Forms.Button]$createButton = $null
[System.Windows.Forms.TreeView]$pathTreeView = $null
[System.Windows.Forms.ComboBox]$MAJCOMCombobox = $null
[System.Windows.Forms.GroupBox]$groupBox5 = $null
[System.Windows.Forms.TextBox]$logonScriptTextbox = $null
[System.Windows.Forms.Label]$label22 = $null
[System.Windows.Forms.Label]$label21 = $null
[System.Windows.Forms.ComboBox]$homeDriveCombobox = $null
[System.Windows.Forms.TreeView]$groupTreeView = $null
[System.Windows.Forms.ToolTip]$toolTip1 = $null
[System.Windows.Forms.TextBox]$cityTextbox = $null
[System.Windows.Forms.ImageList]$imageList1 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel2 = $null
[System.Windows.Forms.Panel]$panel21 = $null
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
[System.Windows.Forms.Panel]$panel15 = $null
[System.Windows.Forms.Panel]$panel14 = $null
[System.Windows.Forms.Panel]$panel12 = $null
[System.Windows.Forms.Panel]$panel10 = $null
[System.Windows.Forms.ComboBox]$branchCombobox = $null
[System.Windows.Forms.Label]$label9 = $null
[System.Windows.Forms.Panel]$panel11 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel1 = $null
[System.Windows.Forms.Panel]$panel8 = $null
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
[System.Windows.Forms.Panel]$panel2 = $null
[System.Windows.Forms.TextBox]$lastNameTextbox = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel3 = $null
[System.Windows.Forms.Panel]$panel16 = $null
[System.Windows.Forms.TextBox]$emailTextbox = $null
[System.Windows.Forms.Label]$label14 = $null
[System.Windows.Forms.Panel]$panel13 = $null
[System.Windows.Forms.TextBox]$phoneTextbox = $null
[System.Windows.Forms.Label]$label13 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel5 = $null
[System.Windows.Forms.Panel]$panel29 = $null
[System.Windows.Forms.Panel]$panel28 = $null
[System.Windows.Forms.Panel]$panel27 = $null
[System.Windows.Forms.Panel]$panel25 = $null
[System.Windows.Forms.Panel]$panel26 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel4 = $null
[System.Windows.Forms.Panel]$panel22 = $null
[System.Windows.Forms.Panel]$panel23 = $null
[System.Windows.Forms.TextBox]$homeDriveTextbox = $null
[System.Windows.Forms.Panel]$panel24 = $null
[System.Windows.Forms.Panel]$panel9 = $null
[System.Windows.Forms.TextBox]$pathTextbox = $null
[System.Windows.Forms.Label]$pathLabel = $null
[System.Windows.Forms.Label]$label11 = $null
[System.Windows.Forms.Label]$DcBox = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
$errorProvider1 = (New-Object -TypeName System.Windows.Forms.ErrorProvider -ArgumentList @($components))
$splitContainer1 = (New-Object -TypeName System.Windows.Forms.SplitContainer)
$pathTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$imageList1 = (New-Object -TypeName System.Windows.Forms.ImageList -ArgumentList @($components))
$panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$label11 = (New-Object -TypeName System.Windows.Forms.Label)
$DcBox = (New-Object -TypeName System.Windows.Forms.Label)
$cancelButton = (New-Object -TypeName System.Windows.Forms.Button)
$createButton = (New-Object -TypeName System.Windows.Forms.Button)
$groupTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$addGroupsCheckbox = (New-Object -TypeName System.Windows.Forms.CheckBox)
$groupBox4 = (New-Object -TypeName System.Windows.Forms.GroupBox)
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
$groupBox5 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel4 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel22 = (New-Object -TypeName System.Windows.Forms.Panel)
$homeDriveCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label21 = (New-Object -TypeName System.Windows.Forms.Label)
$panel23 = (New-Object -TypeName System.Windows.Forms.Panel)
$homeDriveTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$panel24 = (New-Object -TypeName System.Windows.Forms.Panel)
$logonScriptTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label22 = (New-Object -TypeName System.Windows.Forms.Label)
$groupBox3 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel3 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel16 = (New-Object -TypeName System.Windows.Forms.Panel)
$emailTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label14 = (New-Object -TypeName System.Windows.Forms.Label)
$panel13 = (New-Object -TypeName System.Windows.Forms.Panel)
$phoneTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label13 = (New-Object -TypeName System.Windows.Forms.Label)
$groupBox2 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel2 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel21 = (New-Object -TypeName System.Windows.Forms.Panel)
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
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
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
$panel9 = (New-Object -TypeName System.Windows.Forms.Panel)
$pathTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$pathLabel = (New-Object -TypeName System.Windows.Forms.Label)
$userCreateLabel = (New-Object -TypeName System.Windows.Forms.Label)
$toolTip1 = (New-Object -TypeName System.Windows.Forms.ToolTip -ArgumentList @($components))
([System.ComponentModel.ISupportInitialize]$errorProvider1).BeginInit()
([System.ComponentModel.ISupportInitialize]$splitContainer1).BeginInit()
$splitContainer1.Panel1.SuspendLayout()
$splitContainer1.Panel2.SuspendLayout()
$splitContainer1.SuspendLayout()
$panel1.SuspendLayout()
$groupBox4.SuspendLayout()
$tableLayoutPanel5.SuspendLayout()
$panel29.SuspendLayout()
$panel28.SuspendLayout()
$panel27.SuspendLayout()
$panel25.SuspendLayout()
$panel26.SuspendLayout()
$groupBox5.SuspendLayout()
$tableLayoutPanel4.SuspendLayout()
$panel22.SuspendLayout()
$panel23.SuspendLayout()
$panel24.SuspendLayout()
$groupBox3.SuspendLayout()
$tableLayoutPanel3.SuspendLayout()
$panel16.SuspendLayout()
$panel13.SuspendLayout()
$groupBox2.SuspendLayout()
$tableLayoutPanel2.SuspendLayout()
$panel21.SuspendLayout()
$panel20.SuspendLayout()
$panel19.SuspendLayout()
$panel18.SuspendLayout()
$panel17.SuspendLayout()
$panel15.SuspendLayout()
$panel14.SuspendLayout()
$panel12.SuspendLayout()
$panel10.SuspendLayout()
$panel11.SuspendLayout()
$groupBox1.SuspendLayout()
$tableLayoutPanel1.SuspendLayout()
$panel8.SuspendLayout()
$panel7.SuspendLayout()
$panel6.SuspendLayout()
$panel5.SuspendLayout()
$panel4.SuspendLayout()
$panel3.SuspendLayout()
$panel2.SuspendLayout()
$panel9.SuspendLayout()
$createUserForm.SuspendLayout()
#
#errorProvider1
#
$errorProvider1.ContainerControl = $createUserForm
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
$splitContainer1.Panel2.Controls.Add($groupTreeView)
$splitContainer1.Panel2.Controls.Add($addGroupsCheckbox)
$splitContainer1.Panel2.Controls.Add($groupBox4)
$splitContainer1.Panel2.Controls.Add($groupBox5)
$splitContainer1.Panel2.Controls.Add($groupBox3)
$splitContainer1.Panel2.Controls.Add($groupBox2)
$splitContainer1.Panel2.Controls.Add($groupBox1)
$splitContainer1.Panel2.Controls.Add($panel9)
$splitContainer1.Panel2.Controls.Add($userCreateLabel)
$splitContainer1.Panel2.ForeColor = [System.Drawing.Color]::White
$splitContainer1.Panel2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
$splitContainer1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1184,[System.Int32]861))
$splitContainer1.SplitterDistance = [System.Int32]300
$splitContainer1.TabIndex = [System.Int32]1
#
#pathTreeView
#
$pathTreeView.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]191)),([System.Int32]([System.Byte][System.Byte]192)),([System.Int32]([System.Byte][System.Byte]192)))

$pathTreeView.Dock = [System.Windows.Forms.DockStyle]::Fill
$pathTreeView.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$pathTreeView.HideSelection = $false
$pathTreeView.ImageIndex = [System.Int32]0
$pathTreeView.ImageList = $imageList1
$pathTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$pathTreeView.Name = [System.String]'pathTreeView'
$pathTreeView.SelectedImageIndex = [System.Int32]0
$pathTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]300,[System.Int32]861))
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
$panel1.Controls.Add($label11)
$panel1.Controls.Add($DcBox)
$panel1.Controls.Add($cancelButton)
$panel1.Controls.Add($createButton)
$panel1.Dock = [System.Windows.Forms.DockStyle]::Top
$panel1.ForeColor = [System.Drawing.Color]::Black
$panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1722))
$panel1.Name = [System.String]'panel1'
$panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]81))
$panel1.TabIndex = [System.Int32]48
#
#label11
#
$label11.AutoSize = $true
$label11.ForeColor = [System.Drawing.Color]::White
$label11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]497,[System.Int32]3))
$label11.Name = [System.String]'label11'
$label11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]174,[System.Int32]25))
$label11.TabIndex = [System.Int32]13
$label11.Text = [System.String]'Connected to DC: '
#
#DcBox
#
$DcBox.AutoSize = $true
$DcBox.ForeColor = [System.Drawing.Color]::White
$DcBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]497,[System.Int32]33))
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
$cancelButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]250,[System.Int32]3))
$cancelButton.Name = [System.String]'cancelButton'
$cancelButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]49))
$cancelButton.TabIndex = [System.Int32]29
$cancelButton.Text = [System.String]'Cancel'
$cancelButton.UseVisualStyleBackColor = $false
#
#createButton
#
$createButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$createButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$createButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$createButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$createButton.Name = [System.String]'createButton'
$createButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]49))
$createButton.TabIndex = [System.Int32]28
$createButton.Text = [System.String]'Create User'
$createButton.UseVisualStyleBackColor = $false
$createButton.add_Click($createButton_Click)
#
#groupTreeView
#
$groupTreeView.CheckBoxes = $true
$groupTreeView.Dock = [System.Windows.Forms.DockStyle]::Top
$groupTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1322))
$groupTreeView.Name = [System.String]'groupTreeView'
$groupTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]400))
$groupTreeView.TabIndex = [System.Int32]27
$groupTreeView.Visible = $false
#
#addGroupsCheckbox
#
$addGroupsCheckbox.AutoSize = $true
$addGroupsCheckbox.Dock = [System.Windows.Forms.DockStyle]::Top
$addGroupsCheckbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1293))
$addGroupsCheckbox.Name = [System.String]'addGroupsCheckbox'
$addGroupsCheckbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]29))
$addGroupsCheckbox.TabIndex = [System.Int32]26
$addGroupsCheckbox.Text = [System.String]'Add User to Base Groups?'
$addGroupsCheckbox.UseVisualStyleBackColor = $true
$addGroupsCheckbox.add_CheckedChanged($addGroupsCheckbox_CheckedChanged)
#
#groupBox4
#
$groupBox4.Controls.Add($tableLayoutPanel5)
$groupBox4.Dock = [System.Windows.Forms.DockStyle]::Top
$groupBox4.ForeColor = [System.Drawing.SystemColors]::Control
$groupBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1110))
$groupBox4.Name = [System.String]'groupBox4'
$groupBox4.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]10))
$groupBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]183))
$groupBox4.TabIndex = [System.Int32]4
$groupBox4.TabStop = $false
$groupBox4.Text = [System.String]'Location Information'
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
$tableLayoutPanel5.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel5.Name = [System.String]'tableLayoutPanel5'
$tableLayoutPanel5.RowCount = [System.Int32]2
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]833,[System.Int32]147))
$tableLayoutPanel5.TabIndex = [System.Int32]0
#
#panel29
#
$panel29.Controls.Add($countryTextbox)
$panel29.Controls.Add($label20)
$panel29.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel29.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]625,[System.Int32]76))
$panel29.Name = [System.String]'panel29'
$panel29.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel29.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]205,[System.Int32]68))
$panel29.TabIndex = [System.Int32]25
#
#countryTextbox
#
$countryTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$countryTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$countryTextbox.MaxLength = [System.Int32]2
$countryTextbox.Name = [System.String]'countryTextbox'
$countryTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]185,[System.Int32]30))
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
$panel28.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]469,[System.Int32]76))
$panel28.Name = [System.String]'panel28'
$panel28.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel28.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]68))
$panel28.TabIndex = [System.Int32]24
#
#zipTextbox
#
$zipTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$zipTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$zipTextbox.MaxLength = [System.Int32]5
$zipTextbox.Name = [System.String]'zipTextbox'
$zipTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]130,[System.Int32]30))
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
$panel27.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]265,[System.Int32]76))
$panel27.Name = [System.String]'panel27'
$panel27.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel27.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]198,[System.Int32]68))
$panel27.TabIndex = [System.Int32]23
#
#stateTextbox
#
$stateTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$stateTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$stateTextbox.MaxLength = [System.Int32]2
$stateTextbox.Name = [System.String]'stateTextbox'
$stateTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]178,[System.Int32]30))
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
$panel25.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]827,[System.Int32]67))
$panel25.TabIndex = [System.Int32]21
#
#streetTextbox
#
$streetTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$streetTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$streetTextbox.Name = [System.String]'streetTextbox'
$streetTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]807,[System.Int32]30))
$streetTextbox.TabIndex = [System.Int32]18
$streetTextbox.add_TextChanged($streetTextbox_TextChanged)
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
$panel26.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]76))
$panel26.Name = [System.String]'panel26'
$panel26.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel26.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]256,[System.Int32]68))
$panel26.TabIndex = [System.Int32]22
#
#cityTextbox
#
$cityTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$cityTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$cityTextbox.Name = [System.String]'cityTextbox'
$cityTextbox.ReadOnly = $true
$cityTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]236,[System.Int32]30))
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
#groupBox5
#
$groupBox5.Controls.Add($tableLayoutPanel4)
$groupBox5.Dock = [System.Windows.Forms.DockStyle]::Top
$groupBox5.ForeColor = [System.Drawing.SystemColors]::Control
$groupBox5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]934))
$groupBox5.Name = [System.String]'groupBox5'
$groupBox5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]176))
$groupBox5.TabIndex = [System.Int32]3
$groupBox5.TabStop = $false
$groupBox5.Text = [System.String]'Scripts and Drives'
#
#tableLayoutPanel4
#
$tableLayoutPanel4.ColumnCount = [System.Int32]3
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]11.88223)))
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]54.67928)))
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel4.Controls.Add($panel22,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel4.Controls.Add($panel23,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel4.Controls.Add($panel24,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel4.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel4.Name = [System.String]'tableLayoutPanel4'
$tableLayoutPanel4.RowCount = [System.Int32]2
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]833,[System.Int32]147))
$tableLayoutPanel4.TabIndex = [System.Int32]0
#
#panel22
#
$panel22.Controls.Add($homeDriveCombobox)
$panel22.Controls.Add($label21)
$panel22.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel22.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel22.Name = [System.String]'panel22'
$panel22.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]0,[System.Int32]0))
$panel22.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]93,[System.Int32]67))
$panel22.TabIndex = [System.Int32]18
#
#homeDriveCombobox
#
$homeDriveCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$homeDriveCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$homeDriveCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$homeDriveCombobox.FormattingEnabled = $true
$homeDriveCombobox.Items.AddRange([System.Object[]]@([System.String]'none',[System.String]'A',[System.String]'B',[System.String]'C',[System.String]'D',[System.String]'E',[System.String]'F',[System.String]'G',[System.String]'H',[System.String]'I',[System.String]'J',[System.String]'K',[System.String]'L',[System.String]'M',[System.String]'N',[System.String]'O',[System.String]'P',[System.String]'Q',[System.String]'R',[System.String]'S',[System.String]'T',[System.String]'U',[System.String]'Z',[System.String]'W',[System.String]'X',[System.String]'Y',[System.String]'Z'))
$homeDriveCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$homeDriveCombobox.Name = [System.String]'homeDriveCombobox'
$homeDriveCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]93,[System.Int32]33))
$homeDriveCombobox.TabIndex = [System.Int32]0
#
#label21
#
$label21.AutoSize = $true
$label21.Dock = [System.Windows.Forms.DockStyle]::Top
$label21.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]10))
$label21.Name = [System.String]'label21'
$label21.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]114,[System.Int32]25))
$label21.TabIndex = [System.Int32]1
$label21.Text = [System.String]'Home Drive'
#
#panel23
#
$panel23.Controls.Add($homeDriveTextbox)
$panel23.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel23.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]102,[System.Int32]3))
$panel23.Name = [System.String]'panel23'
$panel23.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]32,[System.Int32]0,[System.Int32]0))
$panel23.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]449,[System.Int32]67))
$panel23.TabIndex = [System.Int32]19
#
#homeDriveTextbox
#
$homeDriveTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$homeDriveTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]32))
$homeDriveTextbox.Name = [System.String]'homeDriveTextbox'
$homeDriveTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]449,[System.Int32]30))
$homeDriveTextbox.TabIndex = [System.Int32]3
$homeDriveTextbox.add_Validating($homeDriveTextbox_Validating)
$homeDriveTextbox.add_Validated($control_Validated)
#
#panel24
#
$tableLayoutPanel4.SetColumnSpan($panel24,[System.Int32]2)
$panel24.Controls.Add($logonScriptTextbox)
$panel24.Controls.Add($label22)
$panel24.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel24.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]76))
$panel24.Name = [System.String]'panel24'
$panel24.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]548,[System.Int32]68))
$panel24.TabIndex = [System.Int32]20
#
#logonScriptTextbox
#
$logonScriptTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$logonScriptTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]25))
$logonScriptTextbox.Name = [System.String]'logonScriptTextbox'
$logonScriptTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]548,[System.Int32]30))
$logonScriptTextbox.TabIndex = [System.Int32]4
#
#label22
#
$label22.AutoSize = $true
$label22.Dock = [System.Windows.Forms.DockStyle]::Top
$label22.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$label22.Name = [System.String]'label22'
$label22.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]122,[System.Int32]25))
$label22.TabIndex = [System.Int32]3
$label22.Text = [System.String]'Logon Script'
#
#groupBox3
#
$groupBox3.Controls.Add($tableLayoutPanel3)
$groupBox3.Dock = [System.Windows.Forms.DockStyle]::Top
$groupBox3.ForeColor = [System.Drawing.SystemColors]::Control
$groupBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]832))
$groupBox3.Name = [System.String]'groupBox3'
$groupBox3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]10))
$groupBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]102))
$groupBox3.TabIndex = [System.Int32]2
$groupBox3.TabStop = $false
$groupBox3.Text = [System.String]'Contact Information'
#
#tableLayoutPanel3
#
$tableLayoutPanel3.ColumnCount = [System.Int32]2
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]66.66666)))
$tableLayoutPanel3.Controls.Add($panel16,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel3.Controls.Add($panel13,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel3.Name = [System.String]'tableLayoutPanel3'
$tableLayoutPanel3.RowCount = [System.Int32]1
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]833,[System.Int32]66))
$tableLayoutPanel3.TabIndex = [System.Int32]0
#
#panel16
#
$panel16.Controls.Add($emailTextbox)
$panel16.Controls.Add($label14)
$panel16.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]280,[System.Int32]3))
$panel16.Name = [System.String]'panel16'
$panel16.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]550,[System.Int32]60))
$panel16.TabIndex = [System.Int32]17
#
#emailTextbox
#
$emailTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$emailTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$emailTextbox.Name = [System.String]'emailTextbox'
$emailTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]530,[System.Int32]30))
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
$panel13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]60))
$panel13.TabIndex = [System.Int32]16
#
#phoneTextbox
#
$phoneTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$phoneTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$phoneTextbox.MaxLength = [System.Int32]12
$phoneTextbox.Name = [System.String]'phoneTextbox'
$phoneTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]30))
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
#groupBox2
#
$groupBox2.Controls.Add($tableLayoutPanel2)
$groupBox2.Dock = [System.Windows.Forms.DockStyle]::Top
$groupBox2.ForeColor = [System.Drawing.SystemColors]::Control
$groupBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]462))
$groupBox2.Name = [System.String]'groupBox2'
$groupBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]370))
$groupBox2.TabIndex = [System.Int32]1
$groupBox2.TabStop = $false
$groupBox2.Text = [System.String]'Employment Information'
#
#tableLayoutPanel2
#
$tableLayoutPanel2.ColumnCount = [System.Int32]3
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel2.Controls.Add($panel21,[System.Int32]0,[System.Int32]4)
$tableLayoutPanel2.Controls.Add($panel20,[System.Int32]2,[System.Int32]3)
$tableLayoutPanel2.Controls.Add($panel19,[System.Int32]1,[System.Int32]3)
$tableLayoutPanel2.Controls.Add($panel18,[System.Int32]0,[System.Int32]3)
$tableLayoutPanel2.Controls.Add($panel17,[System.Int32]1,[System.Int32]2)
$tableLayoutPanel2.Controls.Add($panel15,[System.Int32]1,[System.Int32]1)
$tableLayoutPanel2.Controls.Add($panel14,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel2.Controls.Add($panel12,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel2.Controls.Add($panel10,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel2.Controls.Add($panel11,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel2.Name = [System.String]'tableLayoutPanel2'
$tableLayoutPanel2.RowCount = [System.Int32]5
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]833,[System.Int32]341))
$tableLayoutPanel2.TabIndex = [System.Int32]0
#
#panel21
#
$panel21.Controls.Add($expirationDateTimePicker)
$panel21.Controls.Add($accountExpirationCheckbox)
$panel21.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel21.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]275))
$panel21.Name = [System.String]'panel21'
$panel21.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]0,[System.Int32]0))
$panel21.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]63))
$panel21.TabIndex = [System.Int32]15
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
$panel20.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]557,[System.Int32]207))
$panel20.Name = [System.String]'panel20'
$panel20.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel20.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]273,[System.Int32]62))
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
$panel19.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]280,[System.Int32]207))
$panel19.Name = [System.String]'panel19'
$panel19.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel19.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]62))
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
$toolTip1.SetToolTip($unitComboBox,[System.String]'These values are pulled from the Base OU businessCategory attribue that corresponds to the base name in the previous box.')
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
$panel18.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]207))
$panel18.Name = [System.String]'panel18'
$panel18.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel18.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]62))
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
$panel17.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]280,[System.Int32]139))
$panel17.Name = [System.String]'panel17'
$panel17.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel17.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]550,[System.Int32]62))
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
$MAJCOMCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]530,[System.Int32]33))
$MAJCOMCombobox.Sorted = $true
$MAJCOMCombobox.TabIndex = [System.Int32]13
$MAJCOMCombobox.Tag = [System.String]'Mandatory'
$toolTip1.SetToolTip($MAJCOMCombobox,[System.String]'These values are pulled from the Bases OU businessCategory attribute.')
$MAJCOMCombobox.add_Validating($validating_NotBlank)
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
$panel15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]280,[System.Int32]71))
$panel15.Name = [System.String]'panel15'
$panel15.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]62))
$panel15.TabIndex = [System.Int32]9
#
#payGradeCombobox
#
$payGradeCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$payGradeCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$payGradeCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$payGradeCombobox.FormattingEnabled = $true
$payGradeCombobox.Items.AddRange([System.Object[]]@([System.String]'0',[System.String]'01',[System.String]'02',[System.String]'03',[System.String]'04',[System.String]'05',[System.String]'06',[System.String]'07',[System.String]'08',[System.String]'09',[System.String]'10',[System.String]'11',[System.String]'12',[System.String]'13',[System.String]'14',[System.String]'15'))
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
$panel14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]71))
$panel14.Name = [System.String]'panel14'
$panel14.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]62))
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
$panel12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]62))
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
$panel10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]139))
$panel10.Name = [System.String]'panel10'
$panel10.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]62))
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
$panel11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]62))
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
#groupBox1
#
$groupBox1.Controls.Add($tableLayoutPanel1)
$groupBox1.Dock = [System.Windows.Forms.DockStyle]::Top
$groupBox1.ForeColor = [System.Drawing.SystemColors]::Control
$groupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]136))
$groupBox1.Name = [System.String]'groupBox1'
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]326))
$groupBox1.TabIndex = [System.Int32]0
$groupBox1.TabStop = $false
$groupBox1.Text = [System.String]'User Information'
$groupBox1.add_Enter($groupBox1_Enter)
#
#tableLayoutPanel1
#
$tableLayoutPanel1.ColumnCount = [System.Int32]4
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]16.66667)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.22368)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.Controls.Add($panel8,[System.Int32]0,[System.Int32]3)
$tableLayoutPanel1.Controls.Add($panel7,[System.Int32]3,[System.Int32]2)
$tableLayoutPanel1.Controls.Add($panel5,[System.Int32]2,[System.Int32]2)
$tableLayoutPanel1.Controls.Add($panel6,[System.Int32]1,[System.Int32]2)
$tableLayoutPanel1.Controls.Add($panel4,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel1.Controls.Add($panel3,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel1.Controls.Add($panel2,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]26))
$tableLayoutPanel1.Name = [System.String]'tableLayoutPanel1'
$tableLayoutPanel1.RowCount = [System.Int32]4
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]833,[System.Int32]297))
$tableLayoutPanel1.TabIndex = [System.Int32]36
#
#panel8
#
$tableLayoutPanel1.SetColumnSpan($panel8,[System.Int32]4)
$panel8.Controls.Add($descriptionTextbox)
$panel8.Controls.Add($label15)
$panel8.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]225))
$panel8.Name = [System.String]'panel8'
$panel8.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]827,[System.Int32]69))
$panel8.TabIndex = [System.Int32]6
#
#descriptionTextbox
#
$descriptionTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$descriptionTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]35))
$descriptionTextbox.Name = [System.String]'descriptionTextbox'
$descriptionTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]807,[System.Int32]30))
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
$panel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]626,[System.Int32]151))
$panel7.Name = [System.String]'panel7'
$panel7.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]204,[System.Int32]68))
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
$panel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]418,[System.Int32]151))
$panel6.Name = [System.String]'panel6'
$panel6.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]202,[System.Int32]68))
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
$panel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]141,[System.Int32]151))
$panel5.Name = [System.String]'panel5'
$panel5.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]271,[System.Int32]68))
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
$panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]151))
$panel4.Name = [System.String]'panel4'
$panel4.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]132,[System.Int32]68))
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
$tableLayoutPanel1.SetColumnSpan($panel3,[System.Int32]4)
$panel3.Controls.Add($firstNameTextbox)
$panel3.Controls.Add($label3)
$panel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]77))
$panel3.Name = [System.String]'panel3'
$panel3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]827,[System.Int32]68))
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
$tableLayoutPanel1.SetColumnSpan($panel2,[System.Int32]4)
$panel2.Controls.Add($lastNameTextbox)
$panel2.Controls.Add($label2)
$panel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel2.Name = [System.String]'panel2'
$panel2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]827,[System.Int32]68))
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
#panel9
#
$panel9.Controls.Add($pathTextbox)
$panel9.Controls.Add($pathLabel)
$panel9.Dock = [System.Windows.Forms.DockStyle]::Top
$panel9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]61))
$panel9.Name = [System.String]'panel9'
$panel9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]75))
$panel9.TabIndex = [System.Int32]49
#
#pathTextbox
#
$pathTextbox.BackColor = [System.Drawing.Color]::White
$pathTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$pathTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]25))
$pathTextbox.Name = [System.String]'pathTextbox'
$pathTextbox.ReadOnly = $true
$pathTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]839,[System.Int32]30))
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
$pathLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]181,[System.Int32]25))
$pathLabel.TabIndex = [System.Int32]51
$pathLabel.Text = [System.String]'Create in Container'
#
#userCreateLabel
#
$userCreateLabel.AutoSize = $true
$userCreateLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$userCreateLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]16.125,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$userCreateLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$userCreateLabel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$userCreateLabel.Name = [System.String]'userCreateLabel'
$userCreateLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]20))
$userCreateLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]247,[System.Int32]51))
$userCreateLabel.TabIndex = [System.Int32]0
$userCreateLabel.Text = [System.String]'Create User Form'
$userCreateLabel.add_Click($userCreateLabel_Click)
#
#createUserForm
#
$createUserForm.AutoValidate = [System.Windows.Forms.AutoValidate]::EnableAllowFocusChange
$createUserForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1184,[System.Int32]861))
$createUserForm.Controls.Add($splitContainer1)
$createUserForm.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$createUserForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$createUserForm.Name = [System.String]'createUserForm'
$createUserForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$createUserForm.Text = [System.String]'Create User Form v1.0'
$createUserForm.add_Load($form_Load)
([System.ComponentModel.ISupportInitialize]$errorProvider1).EndInit()
$splitContainer1.Panel1.ResumeLayout($false)
$splitContainer1.Panel2.ResumeLayout($false)
$splitContainer1.Panel2.PerformLayout()
([System.ComponentModel.ISupportInitialize]$splitContainer1).EndInit()
$splitContainer1.ResumeLayout($false)
$panel1.ResumeLayout($false)
$panel1.PerformLayout()
$groupBox4.ResumeLayout($false)
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
$groupBox5.ResumeLayout($false)
$tableLayoutPanel4.ResumeLayout($false)
$panel22.ResumeLayout($false)
$panel22.PerformLayout()
$panel23.ResumeLayout($false)
$panel23.PerformLayout()
$panel24.ResumeLayout($false)
$panel24.PerformLayout()
$groupBox3.ResumeLayout($false)
$tableLayoutPanel3.ResumeLayout($false)
$panel16.ResumeLayout($false)
$panel16.PerformLayout()
$panel13.ResumeLayout($false)
$panel13.PerformLayout()
$groupBox2.ResumeLayout($false)
$tableLayoutPanel2.ResumeLayout($false)
$panel21.ResumeLayout($false)
$panel21.PerformLayout()
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
$groupBox1.ResumeLayout($false)
$tableLayoutPanel1.ResumeLayout($false)
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
$panel9.ResumeLayout($false)
$panel9.PerformLayout()
$createUserForm.ResumeLayout($false)
Add-Member -InputObject $createUserForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name errorProvider1 -Value $errorProvider1 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name splitContainer1 -Value $splitContainer1 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name userCreateLabel -Value $userCreateLabel -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name groupBox1 -Value $groupBox1 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name descriptionTextbox -Value $descriptionTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label15 -Value $label15 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name firstNameTextbox -Value $firstNameTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name groupBox2 -Value $groupBox2 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name employeeTypeCombobox -Value $employeeTypeCombobox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name payGradeCombobox -Value $payGradeCombobox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name payPlanCombobox -Value $payPlanCombobox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name titleTextbox -Value $titleTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name employeeTypeLabel -Value $employeeTypeLabel -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label10 -Value $label10 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name groupBox3 -Value $groupBox3 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name groupBox4 -Value $groupBox4 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name countryTextbox -Value $countryTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name zipTextbox -Value $zipTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name stateTextbox -Value $stateTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name streetTextbox -Value $streetTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label16 -Value $label16 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label17 -Value $label17 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label18 -Value $label18 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label20 -Value $label20 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label19 -Value $label19 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name addGroupsCheckbox -Value $addGroupsCheckbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel1 -Value $panel1 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name cancelButton -Value $cancelButton -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name createButton -Value $createButton -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name pathTreeView -Value $pathTreeView -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name MAJCOMCombobox -Value $MAJCOMCombobox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name groupBox5 -Value $groupBox5 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name logonScriptTextbox -Value $logonScriptTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label22 -Value $label22 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label21 -Value $label21 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name homeDriveCombobox -Value $homeDriveCombobox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name groupTreeView -Value $groupTreeView -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name toolTip1 -Value $toolTip1 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name cityTextbox -Value $cityTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name imageList1 -Value $imageList1 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name tableLayoutPanel2 -Value $tableLayoutPanel2 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel21 -Value $panel21 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name expirationDateTimePicker -Value $expirationDateTimePicker -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name accountExpirationCheckbox -Value $accountExpirationCheckbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel20 -Value $panel20 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name officeSymbolTextbox -Value $officeSymbolTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label23 -Value $label23 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel19 -Value $panel19 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name unitComboBox -Value $unitComboBox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label24 -Value $label24 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel18 -Value $panel18 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name baseNameCombobox -Value $baseNameCombobox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label25 -Value $label25 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel17 -Value $panel17 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel15 -Value $panel15 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel14 -Value $panel14 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel12 -Value $panel12 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel10 -Value $panel10 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name branchCombobox -Value $branchCombobox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel11 -Value $panel11 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name tableLayoutPanel1 -Value $tableLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel8 -Value $panel8 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel7 -Value $panel7 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name citizenshipTextbox -Value $citizenshipTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel6 -Value $panel6 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name suffixCombobox -Value $suffixCombobox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel5 -Value $panel5 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name edipiTextbox -Value $edipiTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name edipiLabel -Value $edipiLabel -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel4 -Value $panel4 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name initialTextbox -Value $initialTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel3 -Value $panel3 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel2 -Value $panel2 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name lastNameTextbox -Value $lastNameTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name tableLayoutPanel3 -Value $tableLayoutPanel3 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel16 -Value $panel16 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name emailTextbox -Value $emailTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label14 -Value $label14 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel13 -Value $panel13 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name phoneTextbox -Value $phoneTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label13 -Value $label13 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name tableLayoutPanel5 -Value $tableLayoutPanel5 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel29 -Value $panel29 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel28 -Value $panel28 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel27 -Value $panel27 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel25 -Value $panel25 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel26 -Value $panel26 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name tableLayoutPanel4 -Value $tableLayoutPanel4 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel22 -Value $panel22 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel23 -Value $panel23 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name homeDriveTextbox -Value $homeDriveTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel24 -Value $panel24 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name panel9 -Value $panel9 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name pathTextbox -Value $pathTextbox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name pathLabel -Value $pathLabel -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name label11 -Value $label11 -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name DcBox -Value $DcBox -MemberType NoteProperty
Add-Member -InputObject $createUserForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
