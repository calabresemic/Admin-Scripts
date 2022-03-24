[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$CreateGroupForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.SplitContainer]$splitContainer1 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.GroupBox]$groupBox1 = $null
[System.Windows.Forms.GroupBox]$groupBox2 = $null
[System.Windows.Forms.Panel]$panel1 = $null
[System.Windows.Forms.Button]$cancelButton = $null
[System.Windows.Forms.Button]$createButton = $null
[System.Windows.Forms.Label]$label11 = $null
[System.Windows.Forms.Label]$label10 = $null
[System.Windows.Forms.Label]$label9 = $null
[System.Windows.Forms.ErrorProvider]$errorProvider1 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.ToolTip]$toolTip1 = $null
[System.Windows.Forms.TreeView]$pathTreeView = $null
[System.Windows.Forms.ComboBox]$baseNameCombobox = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.TextBox]$officeSymbolTextbox = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.ComboBox]$unitCombobox = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.TextBox]$groupDisplayNameTextBox = $null
[System.Windows.Forms.TextBox]$purposeTextBox = $null
[System.Windows.Forms.TextBox]$groupNameTextBox = $null
[System.Windows.Forms.TextBox]$searchStringTextBox = $null
[System.Windows.Forms.ComboBox]$searchScopeComboBox = $null
[System.Windows.Forms.ImageList]$imageList1 = $null
[System.Windows.Forms.Panel]$panel2 = $null
[System.Windows.Forms.TextBox]$pathTextbox = $null
[System.Windows.Forms.Label]$pathLabel = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel2 = $null
[System.Windows.Forms.TreeView]$ManagerTreeView = $null
[System.Windows.Forms.Button]$searchButton = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel1 = $null
[System.Windows.Forms.Panel]$panel8 = $null
[System.Windows.Forms.Panel]$panel7 = $null
[System.Windows.Forms.Panel]$panel6 = $null
[System.Windows.Forms.Panel]$panel5 = $null
[System.Windows.Forms.Panel]$panel4 = $null
[System.Windows.Forms.Panel]$panel3 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$DcBox = $null
[System.Windows.Forms.Panel]$panel9 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Panel]$panel10 = $null
[System.Windows.Forms.TextBox]$descriptionTextBox = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.ComboBox]$groupScopeCombobox = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
$splitContainer1 = (New-Object -TypeName System.Windows.Forms.SplitContainer)
$pathTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$imageList1 = (New-Object -TypeName System.Windows.Forms.ImageList)
$panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$DcBox = (New-Object -TypeName System.Windows.Forms.Label)
$cancelButton = (New-Object -TypeName System.Windows.Forms.Button)
$createButton = (New-Object -TypeName System.Windows.Forms.Button)
$groupBox2 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel2 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$ManagerTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$searchButton = (New-Object -TypeName System.Windows.Forms.Button)
$searchScopeComboBox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$searchStringTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel8 = (New-Object -TypeName System.Windows.Forms.Panel)
$groupDisplayNameTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label11 = (New-Object -TypeName System.Windows.Forms.Label)
$panel7 = (New-Object -TypeName System.Windows.Forms.Panel)
$groupNameTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label10 = (New-Object -TypeName System.Windows.Forms.Label)
$panel6 = (New-Object -TypeName System.Windows.Forms.Panel)
$purposeTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label9 = (New-Object -TypeName System.Windows.Forms.Label)
$panel5 = (New-Object -TypeName System.Windows.Forms.Panel)
$officeSymbolTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$panel4 = (New-Object -TypeName System.Windows.Forms.Panel)
$unitCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$panel3 = (New-Object -TypeName System.Windows.Forms.Panel)
$baseNameCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$panel9 = (New-Object -TypeName System.Windows.Forms.Panel)
$groupScopeCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$panel10 = (New-Object -TypeName System.Windows.Forms.Panel)
$descriptionTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label7 = (New-Object -TypeName System.Windows.Forms.Label)
$panel2 = (New-Object -TypeName System.Windows.Forms.Panel)
$pathTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$pathLabel = (New-Object -TypeName System.Windows.Forms.Label)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$errorProvider1 = (New-Object -TypeName System.Windows.Forms.ErrorProvider)
$toolTip1 = (New-Object -TypeName System.Windows.Forms.ToolTip)
([System.ComponentModel.ISupportInitialize]$splitContainer1).BeginInit()
$splitContainer1.Panel1.SuspendLayout()
$splitContainer1.Panel2.SuspendLayout()
$splitContainer1.SuspendLayout()
$panel1.SuspendLayout()
$groupBox2.SuspendLayout()
$tableLayoutPanel2.SuspendLayout()
$groupBox1.SuspendLayout()
$tableLayoutPanel1.SuspendLayout()
$panel8.SuspendLayout()
$panel7.SuspendLayout()
$panel6.SuspendLayout()
$panel5.SuspendLayout()
$panel4.SuspendLayout()
$panel3.SuspendLayout()
$panel9.SuspendLayout()
$panel10.SuspendLayout()
$panel2.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$errorProvider1).BeginInit()
$CreateGroupForm.SuspendLayout()
$splitContainer1.Dock = [System.Windows.Forms.DockStyle]::Fill
$splitContainer1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]0)))
$splitContainer1.Name = ([System.String][System.String]'splitContainer1')
$splitContainer1.Panel1.Controls.Add($pathTreeView)
$splitContainer1.Panel2.AutoScroll = $true
$splitContainer1.Panel2.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte]([System.Byte][System.Int32]79))),([System.Int32]([System.Byte]([System.Byte][System.Int32]93))),([System.Int32]([System.Byte]([System.Byte][System.Int32]117))))

$splitContainer1.Panel2.Controls.Add($panel1)
$splitContainer1.Panel2.Controls.Add($groupBox2)
$splitContainer1.Panel2.Controls.Add($groupBox1)
$splitContainer1.Panel2.Controls.Add($panel2)
$splitContainer1.Panel2.Controls.Add($label1)
$splitContainer1.Panel2.ForeColor = [System.Drawing.Color]::White
$splitContainer1.Panel2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]10)))
$splitContainer1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]1184),([System.Int32][System.Int32]926)))
$splitContainer1.SplitterDistance = ([System.Int32][System.Int32]300)
$splitContainer1.TabIndex = ([System.Int32][System.Int32]0)
$pathTreeView.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte]([System.Byte][System.Int32]191))),([System.Int32]([System.Byte]([System.Byte][System.Int32]192))),([System.Int32]([System.Byte]([System.Byte][System.Int32]192))))

$pathTreeView.Dock = [System.Windows.Forms.DockStyle]::Fill
$pathTreeView.ImageIndex = ([System.Int32][System.Int32]0)
$pathTreeView.ImageList = $imageList1
$pathTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]0)))
$pathTreeView.Name = ([System.String][System.String]'pathTreeView')
$pathTreeView.SelectedImageIndex = ([System.Int32][System.Int32]0)
$pathTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]300),([System.Int32][System.Int32]926)))
$pathTreeView.StateImageList = $imageList1
$pathTreeView.TabIndex = ([System.Int32][System.Int32]0)
$pathTreeView.add_BeforeExpand($pathTreeView_BeforeExpand)
$pathTreeView.add_AfterSelect($pathTreeView_AfterSelect)
$imageList1.ImageStream = ([System.Windows.Forms.ImageListStreamer]$resources.'imageList1.ImageStream')
$imageList1.TransparentColor = [System.Drawing.Color]::Transparent
$imageList1.Images.SetKeyName(([System.Int32][System.Int32]0),([System.String][System.String]'OU.png'))
$imageList1.Images.SetKeyName(([System.Int32][System.Int32]1),([System.String][System.String]'User.png'))
$imageList1.Images.SetKeyName(([System.Int32][System.Int32]2),([System.String][System.String]'Computer.png'))
$panel1.Controls.Add($label2)
$panel1.Controls.Add($DcBox)
$panel1.Controls.Add($cancelButton)
$panel1.Controls.Add($createButton)
$panel1.Dock = [System.Windows.Forms.DockStyle]::Top
$panel1.ForeColor = [System.Drawing.Color]::Black
$panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]10),([System.Int32][System.Int32]868)))
$panel1.Name = ([System.String][System.String]'panel1')
$panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]839),([System.Int32][System.Int32]59)))
$panel1.TabIndex = ([System.Int32][System.Int32]2)
$label2.AutoSize = $true
$label2.ForeColor = [System.Drawing.Color]::White
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]521),([System.Int32][System.Int32]5)))
$label2.Name = ([System.String][System.String]'label2')
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]174),([System.Int32][System.Int32]25)))
$label2.TabIndex = ([System.Int32][System.Int32]13)
$label2.Text = ([System.String][System.String]'Connected to DC: ')
$DcBox.AutoSize = $true
$DcBox.ForeColor = [System.Drawing.Color]::White
$DcBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]521),([System.Int32][System.Int32]35)))
$DcBox.Name = ([System.String][System.String]'DcBox')
$DcBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]93),([System.Int32][System.Int32]25)))
$DcBox.TabIndex = ([System.Int32][System.Int32]12)
$DcBox.Text = ([System.String][System.String]'DCName')
$cancelButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte]([System.Byte][System.Int32]239))),([System.Int32]([System.Byte]([System.Byte][System.Int32]131))),([System.Int32]([System.Byte]([System.Byte][System.Int32]84))))

$cancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$cancelButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$cancelButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @(([System.String][System.String]'Microsoft Sans Serif'),([System.Single][System.Int32]12),[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]([System.Byte][System.Int32]0))))
$cancelButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]265),([System.Int32][System.Int32]5)))
$cancelButton.Name = ([System.String][System.String]'cancelButton')
$cancelButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]250),([System.Int32][System.Int32]50)))
$cancelButton.TabIndex = ([System.Int32][System.Int32]1)
$cancelButton.Text = ([System.String][System.String]'Cancel')
$cancelButton.UseVisualStyleBackColor = $false
$createButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte]([System.Byte][System.Int32]239))),([System.Int32]([System.Byte]([System.Byte][System.Int32]131))),([System.Int32]([System.Byte]([System.Byte][System.Int32]84))))

$createButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$createButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @(([System.String][System.String]'Microsoft Sans Serif'),([System.Single][System.Int32]12),[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]([System.Byte][System.Int32]0))))
$createButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]5),([System.Int32][System.Int32]5)))
$createButton.Name = ([System.String][System.String]'createButton')
$createButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]250),([System.Int32][System.Int32]50)))
$createButton.TabIndex = ([System.Int32][System.Int32]0)
$createButton.Text = ([System.String][System.String]'Create Group')
$createButton.UseVisualStyleBackColor = $false
$createButton.add_Click($createButton_Click)
$groupBox2.Controls.Add($tableLayoutPanel2)
$groupBox2.Dock = [System.Windows.Forms.DockStyle]::Top
$groupBox2.ForeColor = [System.Drawing.SystemColors]::Control
$groupBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]10),([System.Int32][System.Int32]494)))
$groupBox2.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]5)))
$groupBox2.Name = ([System.String][System.String]'groupBox2')
$groupBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]839),([System.Int32][System.Int32]374)))
$groupBox2.TabIndex = ([System.Int32][System.Int32]1)
$groupBox2.TabStop = $false
$groupBox2.Text = ([System.String][System.String]'Manager')
$tableLayoutPanel2.AutoSize = $true
$tableLayoutPanel2.ColumnCount = ([System.Int32][System.Int32]3)
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]15))))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Double]66.98679))))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Double]18.12725))))
$tableLayoutPanel2.Controls.Add($ManagerTreeView,([System.Int32][System.Int32]0),([System.Int32][System.Int32]1))
$tableLayoutPanel2.Controls.Add($searchButton,([System.Int32][System.Int32]2),([System.Int32][System.Int32]0))
$tableLayoutPanel2.Controls.Add($searchScopeComboBox,([System.Int32][System.Int32]0),([System.Int32][System.Int32]0))
$tableLayoutPanel2.Controls.Add($searchStringTextBox,([System.Int32][System.Int32]1),([System.Int32][System.Int32]0))
$tableLayoutPanel2.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]26)))
$tableLayoutPanel2.Name = ([System.String][System.String]'tableLayoutPanel2')
$tableLayoutPanel2.RowCount = ([System.Int32][System.Int32]2)
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Double]11.74785))))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Double]88.25215))))
$tableLayoutPanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]833),([System.Int32][System.Int32]349)))
$tableLayoutPanel2.TabIndex = ([System.Int32][System.Int32]5)
$tableLayoutPanel2.SetColumnSpan($ManagerTreeView,([System.Int32][System.Int32]3))
$ManagerTreeView.Dock = [System.Windows.Forms.DockStyle]::Fill
$ManagerTreeView.HideSelection = $false
$ManagerTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]44)))
$ManagerTreeView.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]3),([System.Int32][System.Int32]23),([System.Int32][System.Int32]3)))
$ManagerTreeView.Name = ([System.String][System.String]'ManagerTreeView')
$ManagerTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]807),([System.Int32][System.Int32]302)))
$ManagerTreeView.TabIndex = ([System.Int32][System.Int32]3)
$ManagerTreeView.add_Validating($managerTreeView_Validating)
$ManagerTreeView.add_Validated($control_Validated)
$searchButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte]([System.Byte][System.Int32]239))),([System.Int32]([System.Byte]([System.Byte][System.Int32]131))),([System.Int32]([System.Byte]([System.Byte][System.Int32]84))))

$searchButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$searchButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$searchButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @(([System.String][System.String]'Microsoft Sans Serif'),([System.Single][System.Int32]12),[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]([System.Byte][System.Int32]0))))
$searchButton.ForeColor = [System.Drawing.Color]::Black
$searchButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]684),([System.Int32][System.Int32]3)))
$searchButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]3),([System.Int32][System.Int32]23),([System.Int32][System.Int32]3)))
$searchButton.Name = ([System.String][System.String]'searchButton')
$searchButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]126),([System.Int32][System.Int32]35)))
$searchButton.TabIndex = ([System.Int32][System.Int32]2)
$searchButton.Text = ([System.String][System.String]'Search')
$searchButton.UseVisualStyleBackColor = $false
$searchButton.add_Click($searchButton_Click)
$searchScopeComboBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$searchScopeComboBox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$searchScopeComboBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$searchScopeComboBox.FormattingEnabled = $true
$searchScopeComboBox.Items.AddRange(([System.Object][System.String[]]@(([System.String][System.String]'Admin'),([System.String][System.String]'User'),([System.String][System.String]'A-Group'),([System.String][System.String]'U-Group'))))
$searchScopeComboBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]3)))
$searchScopeComboBox.Name = ([System.String][System.String]'searchScopeComboBox')
$searchScopeComboBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]118),([System.Int32][System.Int32]33)))
$searchScopeComboBox.TabIndex = ([System.Int32][System.Int32]0)
$searchStringTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$searchStringTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]127),([System.Int32][System.Int32]3)))
$searchStringTextBox.Name = ([System.String][System.String]'searchStringTextBox')
$searchStringTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]551),([System.Int32][System.Int32]30)))
$searchStringTextBox.TabIndex = ([System.Int32][System.Int32]1)
$searchStringTextBox.add_KeyDown($searchStringTextBox_KeyDown)
$groupBox1.Controls.Add($tableLayoutPanel1)
$groupBox1.Dock = [System.Windows.Forms.DockStyle]::Top
$groupBox1.ForeColor = [System.Drawing.SystemColors]::Control
$groupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]10),([System.Int32][System.Int32]136)))
$groupBox1.Name = ([System.String][System.String]'groupBox1')
$groupBox1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]5)))
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]839),([System.Int32][System.Int32]358)))
$groupBox1.TabIndex = ([System.Int32][System.Int32]0)
$groupBox1.TabStop = $false
$groupBox1.Text = ([System.String][System.String]'Group Information')
$tableLayoutPanel1.ColumnCount = ([System.Int32][System.Int32]3)
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]40))))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]35))))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]25))))
$tableLayoutPanel1.Controls.Add($panel8,([System.Int32][System.Int32]0),([System.Int32][System.Int32]3))
$tableLayoutPanel1.Controls.Add($panel7,([System.Int32][System.Int32]0),([System.Int32][System.Int32]2))
$tableLayoutPanel1.Controls.Add($panel6,([System.Int32][System.Int32]0),([System.Int32][System.Int32]1))
$tableLayoutPanel1.Controls.Add($panel5,([System.Int32][System.Int32]2),([System.Int32][System.Int32]0))
$tableLayoutPanel1.Controls.Add($panel4,([System.Int32][System.Int32]1),([System.Int32][System.Int32]0))
$tableLayoutPanel1.Controls.Add($panel3,([System.Int32][System.Int32]0),([System.Int32][System.Int32]0))
$tableLayoutPanel1.Controls.Add($panel9,([System.Int32][System.Int32]2),([System.Int32][System.Int32]1))
$tableLayoutPanel1.Controls.Add($panel10,([System.Int32][System.Int32]0),([System.Int32][System.Int32]4))
$tableLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]5),([System.Int32][System.Int32]28)))
$tableLayoutPanel1.Name = ([System.String][System.String]'tableLayoutPanel1')
$tableLayoutPanel1.RowCount = ([System.Int32][System.Int32]5)
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]20))))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]20))))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]20))))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]20))))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]20))))
$tableLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]829),([System.Int32][System.Int32]325)))
$tableLayoutPanel1.TabIndex = ([System.Int32][System.Int32]50)
$tableLayoutPanel1.SetColumnSpan($panel8,([System.Int32][System.Int32]3))
$panel8.Controls.Add($groupDisplayNameTextBox)
$panel8.Controls.Add($label11)
$panel8.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]198)))
$panel8.Name = ([System.String][System.String]'panel8')
$panel8.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]823),([System.Int32][System.Int32]59)))
$panel8.TabIndex = ([System.Int32][System.Int32]6)
$groupDisplayNameTextBox.Dock = [System.Windows.Forms.DockStyle]::Top
$groupDisplayNameTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]35)))
$groupDisplayNameTextBox.Name = ([System.String][System.String]'groupDisplayNameTextBox')
$groupDisplayNameTextBox.ReadOnly = $true
$groupDisplayNameTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]803),([System.Int32][System.Int32]30)))
$groupDisplayNameTextBox.TabIndex = ([System.Int32][System.Int32]6)
$label11.AutoSize = $true
$label11.Dock = [System.Windows.Forms.DockStyle]::Top
$label11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label11.Name = ([System.String][System.String]'label11')
$label11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]192),([System.Int32][System.Int32]25)))
$label11.TabIndex = ([System.Int32][System.Int32]10)
$label11.Text = ([System.String][System.String]'Group Display Name')
$tableLayoutPanel1.SetColumnSpan($panel7,([System.Int32][System.Int32]3))
$panel7.Controls.Add($groupNameTextBox)
$panel7.Controls.Add($label10)
$panel7.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]133)))
$panel7.Name = ([System.String][System.String]'panel7')
$panel7.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]823),([System.Int32][System.Int32]59)))
$panel7.TabIndex = ([System.Int32][System.Int32]5)
$groupNameTextBox.Dock = [System.Windows.Forms.DockStyle]::Top
$groupNameTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]35)))
$groupNameTextBox.Name = ([System.String][System.String]'groupNameTextBox')
$groupNameTextBox.ReadOnly = $true
$groupNameTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]803),([System.Int32][System.Int32]30)))
$groupNameTextBox.TabIndex = ([System.Int32][System.Int32]5)
$label10.AutoSize = $true
$label10.Dock = [System.Windows.Forms.DockStyle]::Top
$label10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label10.Name = ([System.String][System.String]'label10')
$label10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]123),([System.Int32][System.Int32]25)))
$label10.TabIndex = ([System.Int32][System.Int32]9)
$label10.Text = ([System.String][System.String]'Group Name')
$tableLayoutPanel1.SetColumnSpan($panel6,([System.Int32][System.Int32]2))
$panel6.Controls.Add($purposeTextBox)
$panel6.Controls.Add($label9)
$panel6.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]68)))
$panel6.Name = ([System.String][System.String]'panel6')
$panel6.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]615),([System.Int32][System.Int32]59)))
$panel6.TabIndex = ([System.Int32][System.Int32]3)
$purposeTextBox.Dock = [System.Windows.Forms.DockStyle]::Top
$purposeTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]35)))
$purposeTextBox.MaxLength = ([System.Int32][System.Int32]20)
$purposeTextBox.Name = ([System.String][System.String]'purposeTextBox')
$purposeTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]595),([System.Int32][System.Int32]30)))
$purposeTextBox.TabIndex = ([System.Int32][System.Int32]3)
$purposeTextBox.Tag = ([System.String][System.String]'Mandatory')
$toolTip1.SetToolTip($purposeTextBox,([System.String][System.String]'Has a maximum limit of 20 characters.'))
$purposeTextBox.add_TextChanged($groupNameChanged)
$purposeTextBox.add_Validating($validating_NotBlank)
$purposeTextBox.add_Validated($control_Validated)
$label9.AutoSize = $true
$label9.Dock = [System.Windows.Forms.DockStyle]::Top
$label9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label9.Name = ([System.String][System.String]'label9')
$label9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]93),([System.Int32][System.Int32]25)))
$label9.TabIndex = ([System.Int32][System.Int32]7)
$label9.Text = ([System.String][System.String]'Purpose*')
$panel5.Controls.Add($officeSymbolTextbox)
$panel5.Controls.Add($label6)
$panel5.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]624),([System.Int32][System.Int32]3)))
$panel5.Name = ([System.String][System.String]'panel5')
$panel5.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]202),([System.Int32][System.Int32]59)))
$panel5.TabIndex = ([System.Int32][System.Int32]2)
$officeSymbolTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$officeSymbolTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]35)))
$officeSymbolTextbox.MaxLength = ([System.Int32][System.Int32]10)
$officeSymbolTextbox.Name = ([System.String][System.String]'officeSymbolTextbox')
$officeSymbolTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]182),([System.Int32][System.Int32]30)))
$officeSymbolTextbox.TabIndex = ([System.Int32][System.Int32]2)
$officeSymbolTextbox.Tag = ([System.String][System.String]'Mandatory')
$toolTip1.SetToolTip($officeSymbolTextbox,([System.String][System.String]'Has a maximum limit of 10 characters.'))
$officeSymbolTextbox.add_TextChanged($groupNameChanged)
$officeSymbolTextbox.add_Validating($validating_NotBlank)
$officeSymbolTextbox.add_Validated($control_Validated)
$label6.AutoSize = $true
$label6.Dock = [System.Windows.Forms.DockStyle]::Top
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label6.Name = ([System.String][System.String]'label6')
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]142),([System.Int32][System.Int32]25)))
$label6.TabIndex = ([System.Int32][System.Int32]49)
$label6.Text = ([System.String][System.String]'Office Symbol*')
$panel4.Controls.Add($unitCombobox)
$panel4.Controls.Add($label5)
$panel4.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]334),([System.Int32][System.Int32]3)))
$panel4.Name = ([System.String][System.String]'panel4')
$panel4.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]284),([System.Int32][System.Int32]59)))
$panel4.TabIndex = ([System.Int32][System.Int32]1)
$unitCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$unitCombobox.FormattingEnabled = $true
$unitCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]35)))
$unitCombobox.MaxLength = ([System.Int32][System.Int32]20)
$unitCombobox.Name = ([System.String][System.String]'unitCombobox')
$unitCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]264),([System.Int32][System.Int32]33)))
$unitCombobox.TabIndex = ([System.Int32][System.Int32]1)
$unitCombobox.Tag = ([System.String][System.String]'Mandatory')
$toolTip1.SetToolTip($unitCombobox,([System.String][System.String]'These values are pulled from the Base OU businessCategory attribue that corresponds to the base name in the previous box.'))
$unitCombobox.add_TextChanged($groupNameChanged)
$unitCombobox.add_Validating($validating_NotBlank)
$unitCombobox.add_Validated($control_Validated)
$label5.AutoSize = $true
$label5.Dock = [System.Windows.Forms.DockStyle]::Top
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label5.Name = ([System.String][System.String]'label5')
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]54),([System.Int32][System.Int32]25)))
$label5.TabIndex = ([System.Int32][System.Int32]48)
$label5.Text = ([System.String][System.String]'Unit*')
$panel3.Controls.Add($baseNameCombobox)
$panel3.Controls.Add($label4)
$panel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]3)))
$panel3.Name = ([System.String][System.String]'panel3')
$panel3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]325),([System.Int32][System.Int32]59)))
$panel3.TabIndex = ([System.Int32][System.Int32]0)
$baseNameCombobox.DisplayMember = ([System.String][System.String]'Name')
$baseNameCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$baseNameCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$baseNameCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$baseNameCombobox.FormattingEnabled = $true
$baseNameCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]35)))
$baseNameCombobox.Name = ([System.String][System.String]'baseNameCombobox')
$baseNameCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]305),([System.Int32][System.Int32]33)))
$baseNameCombobox.TabIndex = ([System.Int32][System.Int32]0)
$baseNameCombobox.add_SelectedIndexChanged($baseNameCombobox_SelectedIndexChange)
$baseNameCombobox.add_Validating($validating_NotBlank)
$baseNameCombobox.add_Validated($control_Validated)
$label4.AutoSize = $true
$label4.Dock = [System.Windows.Forms.DockStyle]::Top
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label4.Name = ([System.String][System.String]'label4')
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]122),([System.Int32][System.Int32]25)))
$label4.TabIndex = ([System.Int32][System.Int32]44)
$label4.Text = ([System.String][System.String]'Base Name*')
$panel9.Controls.Add($groupScopeCombobox)
$panel9.Controls.Add($label3)
$panel9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]624),([System.Int32][System.Int32]68)))
$panel9.Name = ([System.String][System.String]'panel9')
$panel9.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]200),([System.Int32][System.Int32]59)))
$panel9.TabIndex = ([System.Int32][System.Int32]4)
$groupScopeCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$groupScopeCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$groupScopeCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$groupScopeCombobox.FormattingEnabled = $true
$groupScopeCombobox.Items.AddRange(([System.Object][System.String[]]@(([System.String][System.String]'DomainLocal'),([System.String][System.String]'Global'),([System.String][System.String]'Universal'))))
$groupScopeCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]35)))
$groupScopeCombobox.Name = ([System.String][System.String]'groupScopeCombobox')
$groupScopeCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]180),([System.Int32][System.Int32]33)))
$groupScopeCombobox.TabIndex = ([System.Int32][System.Int32]4)
$groupScopeCombobox.Tag = ([System.String][System.String]'Mandatory')
$groupScopeCombobox.add_Validating($validating_NotBlank)
$groupScopeCombobox.add_Validated($control_Validated)
$label3.AutoSize = $true
$label3.Dock = [System.Windows.Forms.DockStyle]::Top
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label3.Name = ([System.String][System.String]'label3')
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]136),([System.Int32][System.Int32]25)))
$label3.TabIndex = ([System.Int32][System.Int32]0)
$label3.Text = ([System.String][System.String]'Group Scope*')
$tableLayoutPanel1.SetColumnSpan($panel10,([System.Int32][System.Int32]3))
$panel10.Controls.Add($descriptionTextBox)
$panel10.Controls.Add($label7)
$panel10.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]263)))
$panel10.Name = ([System.String][System.String]'panel10')
$panel10.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]823),([System.Int32][System.Int32]59)))
$panel10.TabIndex = ([System.Int32][System.Int32]7)
$descriptionTextBox.Dock = [System.Windows.Forms.DockStyle]::Top
$descriptionTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]35)))
$descriptionTextBox.Name = ([System.String][System.String]'descriptionTextBox')
$descriptionTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]803),([System.Int32][System.Int32]30)))
$descriptionTextBox.TabIndex = ([System.Int32][System.Int32]7)
$label7.AutoSize = $true
$label7.Dock = [System.Windows.Forms.DockStyle]::Top
$label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label7.Name = ([System.String][System.String]'label7')
$label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]109),([System.Int32][System.Int32]25)))
$label7.TabIndex = ([System.Int32][System.Int32]0)
$label7.Text = ([System.String][System.String]'Description')
$panel2.Controls.Add($pathTextbox)
$panel2.Controls.Add($pathLabel)
$panel2.Dock = [System.Windows.Forms.DockStyle]::Top
$panel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]10),([System.Int32][System.Int32]61)))
$panel2.Name = ([System.String][System.String]'panel2')
$panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]839),([System.Int32][System.Int32]75)))
$panel2.TabIndex = ([System.Int32][System.Int32]2)
$pathTextbox.BackColor = [System.Drawing.Color]::White
$pathTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$pathTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]25)))
$pathTextbox.Name = ([System.String][System.String]'pathTextbox')
$pathTextbox.ReadOnly = $true
$pathTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]839),([System.Int32][System.Int32]30)))
$pathTextbox.TabIndex = ([System.Int32][System.Int32]53)
$pathTextbox.Tag = ([System.String][System.String]'Mandatory')
$pathTextbox.add_Validating($pathTextbox_Validating)
$pathTextbox.add_Validated($control_Validated)
$pathLabel.AutoSize = $true
$pathLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$pathLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]0)))
$pathLabel.Name = ([System.String][System.String]'pathLabel')
$pathLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]181),([System.Int32][System.Int32]25)))
$pathLabel.TabIndex = ([System.Int32][System.Int32]51)
$pathLabel.Text = ([System.String][System.String]'Create in Container')
$label1.AutoSize = $true
$label1.Dock = [System.Windows.Forms.DockStyle]::Top
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @(([System.String][System.String]'Microsoft Sans Serif'),([System.Single][System.Double]15.75),[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]([System.Byte][System.Int32]0))))
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]10),([System.Int32][System.Int32]10)))
$label1.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]3)))
$label1.Name = ([System.String][System.String]'label1')
$label1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]0),([System.Int32][System.Int32]0),([System.Int32][System.Int32]20)))
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]265),([System.Int32][System.Int32]51)))
$label1.TabIndex = ([System.Int32][System.Int32]0)
$label1.Text = ([System.String][System.String]'Create Group Form')
$label1.add_Click($label1_Click)
$errorProvider1.ContainerControl = $CreateGroupForm
$CreateGroupForm.AutoValidate = [System.Windows.Forms.AutoValidate]::EnableAllowFocusChange
$CreateGroupForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]1184),([System.Int32][System.Int32]926)))
$CreateGroupForm.Controls.Add($splitContainer1)
$CreateGroupForm.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @(([System.String][System.String]'Microsoft Sans Serif'),([System.Single][System.Int32]12),[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte]([System.Byte][System.Int32]0))))
$CreateGroupForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$CreateGroupForm.Name = ([System.String][System.String]'CreateGroupForm')
$CreateGroupForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$CreateGroupForm.Text = ([System.String][System.String]'Create Group Form v1.0')
$CreateGroupForm.add_Load($form_Load)
$splitContainer1.Panel1.ResumeLayout($false)
$splitContainer1.Panel2.ResumeLayout($false)
$splitContainer1.Panel2.PerformLayout()
([System.ComponentModel.ISupportInitialize]$splitContainer1).EndInit()
$splitContainer1.ResumeLayout($false)
$panel1.ResumeLayout($false)
$panel1.PerformLayout()
$groupBox2.ResumeLayout($false)
$groupBox2.PerformLayout()
$tableLayoutPanel2.ResumeLayout($false)
$tableLayoutPanel2.PerformLayout()
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
$panel9.ResumeLayout($false)
$panel9.PerformLayout()
$panel10.ResumeLayout($false)
$panel10.PerformLayout()
$panel2.ResumeLayout($false)
$panel2.PerformLayout()
([System.ComponentModel.ISupportInitialize]$errorProvider1).EndInit()
$CreateGroupForm.ResumeLayout($false)
Add-Member -InputObject $CreateGroupForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name splitContainer1 -Value $splitContainer1 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name groupBox1 -Value $groupBox1 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name groupBox2 -Value $groupBox2 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name panel1 -Value $panel1 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name cancelButton -Value $cancelButton -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name createButton -Value $createButton -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name label11 -Value $label11 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name label10 -Value $label10 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name errorProvider1 -Value $errorProvider1 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name toolTip1 -Value $toolTip1 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name pathTreeView -Value $pathTreeView -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name baseNameCombobox -Value $baseNameCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name officeSymbolTextbox -Value $officeSymbolTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name unitCombobox -Value $unitCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name groupDisplayNameTextBox -Value $groupDisplayNameTextBox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name purposeTextBox -Value $purposeTextBox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name groupNameTextBox -Value $groupNameTextBox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name searchStringTextBox -Value $searchStringTextBox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name searchScopeComboBox -Value $searchScopeComboBox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name imageList1 -Value $imageList1 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name panel2 -Value $panel2 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name pathTextbox -Value $pathTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name pathLabel -Value $pathLabel -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name tableLayoutPanel2 -Value $tableLayoutPanel2 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name ManagerTreeView -Value $ManagerTreeView -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name searchButton -Value $searchButton -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name tableLayoutPanel1 -Value $tableLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name panel8 -Value $panel8 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name panel7 -Value $panel7 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name panel6 -Value $panel6 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name panel5 -Value $panel5 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name panel4 -Value $panel4 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name panel3 -Value $panel3 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name DcBox -Value $DcBox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name panel9 -Value $panel9 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name panel10 -Value $panel10 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name descriptionTextBox -Value $descriptionTextBox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name groupScopeCombobox -Value $groupScopeCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateGroupForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
