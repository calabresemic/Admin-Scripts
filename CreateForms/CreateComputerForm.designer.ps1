[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$CreateComputerForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.SplitContainer]$splitContainer1 = $null
[System.Windows.Forms.ErrorProvider]$errorProvider1 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.ToolTip]$toolTip1 = $null
[System.Windows.Forms.TreeView]$pathTreeView = $null
[System.Windows.Forms.ImageList]$imageList1 = $null
[System.Windows.Forms.Label]$userCreateLabel = $null
[System.Windows.Forms.Panel]$panel2 = $null
[System.Windows.Forms.TextBox]$pathTextbox = $null
[System.Windows.Forms.Label]$pathLabel = $null
[System.Windows.Forms.GroupBox]$groupBox1 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel1 = $null
[System.Windows.Forms.Panel]$panel5 = $null
[System.Windows.Forms.Panel]$panel1 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Panel]$panel18 = $null
[System.Windows.Forms.ComboBox]$baseNameCombobox = $null
[System.Windows.Forms.Label]$label25 = $null
[System.Windows.Forms.Panel]$panel3 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.ComboBox]$computerTypeComboBox = $null
[System.Windows.Forms.TextBox]$computerNameTextBox = $null
[System.Windows.Forms.TextBox]$systemIdTextBox = $null
[System.Windows.Forms.CheckBox]$joinRightCheckBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel2 = $null
[System.Windows.Forms.Button]$searchButton = $null
[System.Windows.Forms.ComboBox]$searchScopeComboBox = $null
[System.Windows.Forms.TextBox]$searchStringTextBox = $null
[System.Windows.Forms.TreeView]$JoinRightsTreeView = $null
[System.Windows.Forms.GroupBox]$JoinRightGroupBox = $null
[System.Windows.Forms.Panel]$panel4 = $null
[System.Windows.Forms.Label]$label11 = $null
[System.Windows.Forms.Label]$DcBox = $null
[System.Windows.Forms.Button]$cancelButton = $null
[System.Windows.Forms.Button]$createButton = $null
[System.Windows.Forms.Panel]$panel6 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.TextBox]$descriptionTextBox = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
$splitContainer1 = (New-Object -TypeName System.Windows.Forms.SplitContainer)
$pathTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$imageList1 = (New-Object -TypeName System.Windows.Forms.ImageList)
$panel4 = (New-Object -TypeName System.Windows.Forms.Panel)
$label11 = (New-Object -TypeName System.Windows.Forms.Label)
$DcBox = (New-Object -TypeName System.Windows.Forms.Label)
$cancelButton = (New-Object -TypeName System.Windows.Forms.Button)
$createButton = (New-Object -TypeName System.Windows.Forms.Button)
$JoinRightGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel2 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$JoinRightsTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$searchButton = (New-Object -TypeName System.Windows.Forms.Button)
$searchScopeComboBox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$searchStringTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$joinRightCheckBox = (New-Object -TypeName System.Windows.Forms.CheckBox)
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel18 = (New-Object -TypeName System.Windows.Forms.Panel)
$baseNameCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label25 = (New-Object -TypeName System.Windows.Forms.Label)
$panel5 = (New-Object -TypeName System.Windows.Forms.Panel)
$computerNameTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$computerTypeComboBox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$panel3 = (New-Object -TypeName System.Windows.Forms.Panel)
$systemIdTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$panel6 = (New-Object -TypeName System.Windows.Forms.Panel)
$descriptionTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$panel2 = (New-Object -TypeName System.Windows.Forms.Panel)
$pathTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$pathLabel = (New-Object -TypeName System.Windows.Forms.Label)
$userCreateLabel = (New-Object -TypeName System.Windows.Forms.Label)
$errorProvider1 = (New-Object -TypeName System.Windows.Forms.ErrorProvider)
$toolTip1 = (New-Object -TypeName System.Windows.Forms.ToolTip)
([System.ComponentModel.ISupportInitialize]$splitContainer1).BeginInit()
$splitContainer1.Panel1.SuspendLayout()
$splitContainer1.Panel2.SuspendLayout()
$splitContainer1.SuspendLayout()
$panel4.SuspendLayout()
$JoinRightGroupBox.SuspendLayout()
$tableLayoutPanel2.SuspendLayout()
$groupBox1.SuspendLayout()
$tableLayoutPanel1.SuspendLayout()
$panel18.SuspendLayout()
$panel5.SuspendLayout()
$panel1.SuspendLayout()
$panel3.SuspendLayout()
$panel6.SuspendLayout()
$panel2.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$errorProvider1).BeginInit()
$CreateComputerForm.SuspendLayout()
$splitContainer1.Dock = [System.Windows.Forms.DockStyle]::Fill
$splitContainer1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]0)))
$splitContainer1.Name = ([System.String][System.String]'splitContainer1')
$splitContainer1.Panel1.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte]([System.Byte][System.Int32]191))),([System.Int32]([System.Byte]([System.Byte][System.Int32]192))),([System.Int32]([System.Byte]([System.Byte][System.Int32]192))))

$splitContainer1.Panel1.Controls.Add($pathTreeView)
$splitContainer1.Panel2.AutoScroll = $true
$splitContainer1.Panel2.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte]([System.Byte][System.Int32]79))),([System.Int32]([System.Byte]([System.Byte][System.Int32]93))),([System.Int32]([System.Byte]([System.Byte][System.Int32]117))))

$splitContainer1.Panel2.Controls.Add($panel4)
$splitContainer1.Panel2.Controls.Add($JoinRightGroupBox)
$splitContainer1.Panel2.Controls.Add($joinRightCheckBox)
$splitContainer1.Panel2.Controls.Add($groupBox1)
$splitContainer1.Panel2.Controls.Add($panel2)
$splitContainer1.Panel2.Controls.Add($userCreateLabel)
$splitContainer1.Panel2.ForeColor = [System.Drawing.Color]::White
$splitContainer1.Panel2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]10)))
$splitContainer1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]1184),([System.Int32][System.Int32]451)))
$splitContainer1.SplitterDistance = ([System.Int32][System.Int32]300)
$splitContainer1.TabIndex = ([System.Int32][System.Int32]0)
$pathTreeView.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte]([System.Byte][System.Int32]191))),([System.Int32]([System.Byte]([System.Byte][System.Int32]192))),([System.Int32]([System.Byte]([System.Byte][System.Int32]192))))

$pathTreeView.Dock = [System.Windows.Forms.DockStyle]::Fill
$pathTreeView.ImageIndex = ([System.Int32][System.Int32]0)
$pathTreeView.ImageList = $imageList1
$pathTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]0)))
$pathTreeView.Name = ([System.String][System.String]'pathTreeView')
$pathTreeView.SelectedImageIndex = ([System.Int32][System.Int32]0)
$pathTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]300),([System.Int32][System.Int32]451)))
$pathTreeView.StateImageList = $imageList1
$pathTreeView.TabIndex = ([System.Int32][System.Int32]0)
$pathTreeView.add_BeforeExpand($pathTreeView_BeforeExpand)
$pathTreeView.add_AfterSelect($pathTreeView_AfterSelect)
$imageList1.ImageStream = ([System.Windows.Forms.ImageListStreamer]$resources.'imageList1.ImageStream')
$imageList1.TransparentColor = [System.Drawing.Color]::Transparent
$imageList1.Images.SetKeyName(([System.Int32][System.Int32]0),([System.String][System.String]'OU.png'))
$imageList1.Images.SetKeyName(([System.Int32][System.Int32]1),([System.String][System.String]'User.png'))
$imageList1.Images.SetKeyName(([System.Int32][System.Int32]2),([System.String][System.String]'Computer.png'))
$panel4.Controls.Add($label11)
$panel4.Controls.Add($DcBox)
$panel4.Controls.Add($cancelButton)
$panel4.Controls.Add($createButton)
$panel4.Dock = [System.Windows.Forms.DockStyle]::Top
$panel4.ForeColor = [System.Drawing.Color]::Black
$panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]10),([System.Int32][System.Int32]760)))
$panel4.Name = ([System.String][System.String]'panel4')
$panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]843),([System.Int32][System.Int32]59)))
$panel4.TabIndex = ([System.Int32][System.Int32]56)
$label11.AutoSize = $true
$label11.ForeColor = [System.Drawing.Color]::White
$label11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]497),([System.Int32][System.Int32]3)))
$label11.Name = ([System.String][System.String]'label11')
$label11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]140),([System.Int32][System.Int32]20)))
$label11.TabIndex = ([System.Int32][System.Int32]13)
$label11.Text = ([System.String][System.String]'Connected to DC: ')
$DcBox.AutoSize = $true
$DcBox.ForeColor = [System.Drawing.Color]::White
$DcBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]497),([System.Int32][System.Int32]33)))
$DcBox.Name = ([System.String][System.String]'DcBox')
$DcBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]74),([System.Int32][System.Int32]20)))
$DcBox.TabIndex = ([System.Int32][System.Int32]12)
$DcBox.Text = ([System.String][System.String]'DCName')
$cancelButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte]([System.Byte][System.Int32]239))),([System.Int32]([System.Byte]([System.Byte][System.Int32]131))),([System.Int32]([System.Byte]([System.Byte][System.Int32]84))))

$cancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$cancelButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$cancelButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @(([System.String][System.String]'Microsoft Sans Serif'),([System.Single][System.Int32]12),[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]([System.Byte][System.Int32]0))))
$cancelButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]250),([System.Int32][System.Int32]3)))
$cancelButton.Name = ([System.String][System.String]'cancelButton')
$cancelButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]241),([System.Int32][System.Int32]49)))
$cancelButton.TabIndex = ([System.Int32][System.Int32]29)
$cancelButton.Text = ([System.String][System.String]'Cancel')
$cancelButton.UseVisualStyleBackColor = $false
$createButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte]([System.Byte][System.Int32]239))),([System.Int32]([System.Byte]([System.Byte][System.Int32]131))),([System.Int32]([System.Byte]([System.Byte][System.Int32]84))))

$createButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$createButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @(([System.String][System.String]'Microsoft Sans Serif'),([System.Single][System.Int32]12),[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]([System.Byte][System.Int32]0))))
$createButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]3)))
$createButton.Name = ([System.String][System.String]'createButton')
$createButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]241),([System.Int32][System.Int32]49)))
$createButton.TabIndex = ([System.Int32][System.Int32]28)
$createButton.Text = ([System.String][System.String]'Create Computer')
$createButton.UseVisualStyleBackColor = $false
$createButton.add_Click($createButton_Click)
$JoinRightGroupBox.Controls.Add($tableLayoutPanel2)
$JoinRightGroupBox.Dock = [System.Windows.Forms.DockStyle]::Top
$JoinRightGroupBox.ForeColor = [System.Drawing.SystemColors]::Control
$JoinRightGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]10),([System.Int32][System.Int32]386)))
$JoinRightGroupBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]5)))
$JoinRightGroupBox.Name = ([System.String][System.String]'JoinRightGroupBox')
$JoinRightGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]843),([System.Int32][System.Int32]374)))
$JoinRightGroupBox.TabIndex = ([System.Int32][System.Int32]55)
$JoinRightGroupBox.TabStop = $false
$JoinRightGroupBox.Text = ([System.String][System.String]'Select an Admin or Group')
$JoinRightGroupBox.Visible = $false
$tableLayoutPanel2.ColumnCount = ([System.Int32][System.Int32]3)
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]15))))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]70))))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]15))))
$tableLayoutPanel2.Controls.Add($JoinRightsTreeView,([System.Int32][System.Int32]0),([System.Int32][System.Int32]1))
$tableLayoutPanel2.Controls.Add($searchButton,([System.Int32][System.Int32]2),([System.Int32][System.Int32]0))
$tableLayoutPanel2.Controls.Add($searchScopeComboBox,([System.Int32][System.Int32]0),([System.Int32][System.Int32]0))
$tableLayoutPanel2.Controls.Add($searchStringTextBox,([System.Int32][System.Int32]1),([System.Int32][System.Int32]0))
$tableLayoutPanel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]22)))
$tableLayoutPanel2.Name = ([System.String][System.String]'tableLayoutPanel2')
$tableLayoutPanel2.RowCount = ([System.Int32][System.Int32]2)
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Double]11.74785))))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Double]88.25215))))
$tableLayoutPanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]837),([System.Int32][System.Int32]349)))
$tableLayoutPanel2.TabIndex = ([System.Int32][System.Int32]5)
$tableLayoutPanel2.SetColumnSpan($JoinRightsTreeView,([System.Int32][System.Int32]3))
$JoinRightsTreeView.Dock = [System.Windows.Forms.DockStyle]::Fill
$JoinRightsTreeView.HideSelection = $false
$JoinRightsTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]44)))
$JoinRightsTreeView.Name = ([System.String][System.String]'JoinRightsTreeView')
$JoinRightsTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]831),([System.Int32][System.Int32]302)))
$JoinRightsTreeView.TabIndex = ([System.Int32][System.Int32]6)
$searchButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte]([System.Byte][System.Int32]239))),([System.Int32]([System.Byte]([System.Byte][System.Int32]131))),([System.Int32]([System.Byte]([System.Byte][System.Int32]84))))

$searchButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$searchButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$searchButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @(([System.String][System.String]'Microsoft Sans Serif'),([System.Single][System.Int32]12),[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]([System.Byte][System.Int32]0))))
$searchButton.ForeColor = [System.Drawing.Color]::Black
$searchButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]713),([System.Int32][System.Int32]3)))
$searchButton.Name = ([System.String][System.String]'searchButton')
$searchButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]121),([System.Int32][System.Int32]35)))
$searchButton.TabIndex = ([System.Int32][System.Int32]5)
$searchButton.Text = ([System.String][System.String]'Search')
$searchButton.UseVisualStyleBackColor = $false
$searchButton.add_Click($searchButton_Click)
$searchScopeComboBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$searchScopeComboBox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$searchScopeComboBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$searchScopeComboBox.FormattingEnabled = $true
$searchScopeComboBox.Items.AddRange(([System.Object][System.String[]]@(([System.String][System.String]'Admin'),([System.String][System.String]'Group'))))
$searchScopeComboBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]3)))
$searchScopeComboBox.Name = ([System.String][System.String]'searchScopeComboBox')
$searchScopeComboBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]119),([System.Int32][System.Int32]28)))
$searchScopeComboBox.TabIndex = ([System.Int32][System.Int32]2)
$searchStringTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$searchStringTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]128),([System.Int32][System.Int32]3)))
$searchStringTextBox.Name = ([System.String][System.String]'searchStringTextBox')
$searchStringTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]579),([System.Int32][System.Int32]26)))
$searchStringTextBox.TabIndex = ([System.Int32][System.Int32]3)
$searchStringTextBox.add_KeyDown($searchStringTextBox_KeyDown)
$joinRightCheckBox.AutoSize = $true
$joinRightCheckBox.Dock = [System.Windows.Forms.DockStyle]::Top
$joinRightCheckBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]10),([System.Int32][System.Int32]362)))
$joinRightCheckBox.Name = ([System.String][System.String]'joinRightCheckBox')
$joinRightCheckBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]843),([System.Int32][System.Int32]24)))
$joinRightCheckBox.TabIndex = ([System.Int32][System.Int32]54)
$joinRightCheckBox.Text = ([System.String][System.String]'Add Join Rights? (CFP-CSA is included by default)')
$joinRightCheckBox.UseVisualStyleBackColor = $true
$joinRightCheckBox.add_CheckedChanged($joinRightCheckBox_CheckedChanged)
$groupBox1.Controls.Add($tableLayoutPanel1)
$groupBox1.Dock = [System.Windows.Forms.DockStyle]::Top
$groupBox1.ForeColor = [System.Drawing.SystemColors]::Control
$groupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]10),([System.Int32][System.Int32]131)))
$groupBox1.Name = ([System.String][System.String]'groupBox1')
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]843),([System.Int32][System.Int32]231)))
$groupBox1.TabIndex = ([System.Int32][System.Int32]53)
$groupBox1.TabStop = $false
$groupBox1.Text = ([System.String][System.String]'Computer Information')
$tableLayoutPanel1.ColumnCount = ([System.Int32][System.Int32]2)
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]40))))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Int32]60))))
$tableLayoutPanel1.Controls.Add($panel18,([System.Int32][System.Int32]0),([System.Int32][System.Int32]1))
$tableLayoutPanel1.Controls.Add($panel5,([System.Int32][System.Int32]1),([System.Int32][System.Int32]1))
$tableLayoutPanel1.Controls.Add($panel1,([System.Int32][System.Int32]0),([System.Int32][System.Int32]0))
$tableLayoutPanel1.Controls.Add($panel3,([System.Int32][System.Int32]1),([System.Int32][System.Int32]0))
$tableLayoutPanel1.Controls.Add($panel6,([System.Int32][System.Int32]0),([System.Int32][System.Int32]2))
$tableLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]22)))
$tableLayoutPanel1.Name = ([System.String][System.String]'tableLayoutPanel1')
$tableLayoutPanel1.RowCount = ([System.Int32][System.Int32]3)
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Double]33.33333))))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Double]33.33333))))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,([System.Single][System.Double]33.33333))))
$tableLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]837),([System.Int32][System.Int32]206)))
$tableLayoutPanel1.TabIndex = ([System.Int32][System.Int32]0)
$panel18.Controls.Add($baseNameCombobox)
$panel18.Controls.Add($label25)
$panel18.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel18.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]71)))
$panel18.Name = ([System.String][System.String]'panel18')
$panel18.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel18.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]328),([System.Int32][System.Int32]62)))
$panel18.TabIndex = ([System.Int32][System.Int32]13)
$baseNameCombobox.DisplayMember = ([System.String][System.String]'Name')
$baseNameCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$baseNameCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$baseNameCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$baseNameCombobox.FormattingEnabled = $true
$baseNameCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]30)))
$baseNameCombobox.Name = ([System.String][System.String]'baseNameCombobox')
$baseNameCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]308),([System.Int32][System.Int32]28)))
$baseNameCombobox.TabIndex = ([System.Int32][System.Int32]53)
$baseNameCombobox.Tag = ([System.String][System.String]'Mandatory')
$baseNameCombobox.add_SelectedIndexChanged($ComputerNameChange)
$baseNameCombobox.add_Validating($validating_NotBlank)
$baseNameCombobox.add_Validated($control_Validated)
$label25.AutoSize = $true
$label25.Dock = [System.Windows.Forms.DockStyle]::Top
$label25.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label25.Name = ([System.String][System.String]'label25')
$label25.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]98),([System.Int32][System.Int32]20)))
$label25.TabIndex = ([System.Int32][System.Int32]52)
$label25.Text = ([System.String][System.String]'Base Name*')
$panel5.Controls.Add($computerNameTextBox)
$panel5.Controls.Add($label3)
$panel5.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]337),([System.Int32][System.Int32]71)))
$panel5.Name = ([System.String][System.String]'panel5')
$panel5.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]497),([System.Int32][System.Int32]62)))
$panel5.TabIndex = ([System.Int32][System.Int32]3)
$computerNameTextBox.Dock = [System.Windows.Forms.DockStyle]::Top
$computerNameTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]30)))
$computerNameTextBox.Name = ([System.String][System.String]'computerNameTextBox')
$computerNameTextBox.ReadOnly = $true
$computerNameTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]477),([System.Int32][System.Int32]26)))
$computerNameTextBox.TabIndex = ([System.Int32][System.Int32]1)
$label3.AutoSize = $true
$label3.Dock = [System.Windows.Forms.DockStyle]::Top
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label3.Name = ([System.String][System.String]'label3')
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]125),([System.Int32][System.Int32]20)))
$label3.TabIndex = ([System.Int32][System.Int32]0)
$label3.Text = ([System.String][System.String]'Computer Name')
$panel1.Controls.Add($computerTypeComboBox)
$panel1.Controls.Add($label1)
$panel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]3)))
$panel1.Name = ([System.String][System.String]'panel1')
$panel1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]328),([System.Int32][System.Int32]62)))
$panel1.TabIndex = ([System.Int32][System.Int32]0)
$computerTypeComboBox.DisplayMember = ([System.String][System.String]'DisplayName')
$computerTypeComboBox.Dock = [System.Windows.Forms.DockStyle]::Top
$computerTypeComboBox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$computerTypeComboBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$computerTypeComboBox.FormattingEnabled = $true
$computerTypeComboBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]30)))
$computerTypeComboBox.Name = ([System.String][System.String]'computerTypeComboBox')
$computerTypeComboBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]308),([System.Int32][System.Int32]28)))
$computerTypeComboBox.TabIndex = ([System.Int32][System.Int32]1)
$computerTypeComboBox.Tag = ([System.String][System.String]'Mandatory')
$computerTypeComboBox.ValueMember = ([System.String][System.String]'TypeCode')
$computerTypeComboBox.add_SelectedIndexChanged($ComputerNameChange)
$computerTypeComboBox.add_Validating($validating_NotBlank)
$computerTypeComboBox.add_Validated($control_Validated)
$label1.AutoSize = $true
$label1.Dock = [System.Windows.Forms.DockStyle]::Top
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label1.Name = ([System.String][System.String]'label1')
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]144),([System.Int32][System.Int32]20)))
$label1.TabIndex = ([System.Int32][System.Int32]0)
$label1.Text = ([System.String][System.String]'Type Of Computer*')
$panel3.Controls.Add($systemIdTextBox)
$panel3.Controls.Add($label2)
$panel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]337),([System.Int32][System.Int32]3)))
$panel3.Name = ([System.String][System.String]'panel3')
$panel3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]497),([System.Int32][System.Int32]62)))
$panel3.TabIndex = ([System.Int32][System.Int32]4)
$systemIdTextBox.Dock = [System.Windows.Forms.DockStyle]::Top
$systemIdTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]30)))
$systemIdTextBox.MaxLength = ([System.Int32][System.Int32]9)
$systemIdTextBox.Name = ([System.String][System.String]'systemIdTextBox')
$systemIdTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]477),([System.Int32][System.Int32]26)))
$systemIdTextBox.TabIndex = ([System.Int32][System.Int32]0)
$systemIdTextBox.Tag = ([System.String][System.String]'Mandatory')
$systemIdTextBox.add_TextChanged($ComputerNameChange)
$systemIdTextBox.add_Validating($systemIdTextBox_Validating)
$systemIdTextBox.add_Validated($control_Validated)
$label2.AutoSize = $true
$label2.Dock = [System.Windows.Forms.DockStyle]::Top
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label2.Name = ([System.String][System.String]'label2')
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]189),([System.Int32][System.Int32]20)))
$label2.TabIndex = ([System.Int32][System.Int32]1)
$label2.Text = ([System.String][System.String]'Unique System Identifier*')
$tableLayoutPanel1.SetColumnSpan($panel6,([System.Int32][System.Int32]2))
$panel6.Controls.Add($descriptionTextBox)
$panel6.Controls.Add($label4)
$panel6.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]3),([System.Int32][System.Int32]139)))
$panel6.Name = ([System.String][System.String]'panel6')
$panel6.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10),([System.Int32][System.Int32]20),([System.Int32][System.Int32]0)))
$panel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]831),([System.Int32][System.Int32]64)))
$panel6.TabIndex = ([System.Int32][System.Int32]14)
$descriptionTextBox.Dock = [System.Windows.Forms.DockStyle]::Top
$descriptionTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]30)))
$descriptionTextBox.Name = ([System.String][System.String]'descriptionTextBox')
$descriptionTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]811),([System.Int32][System.Int32]26)))
$descriptionTextBox.TabIndex = ([System.Int32][System.Int32]1)
$label4.AutoSize = $true
$label4.Dock = [System.Windows.Forms.DockStyle]::Top
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]10)))
$label4.Name = ([System.String][System.String]'label4')
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]89),([System.Int32][System.Int32]20)))
$label4.TabIndex = ([System.Int32][System.Int32]0)
$label4.Text = ([System.String][System.String]'Description')
$panel2.Controls.Add($pathTextbox)
$panel2.Controls.Add($pathLabel)
$panel2.Dock = [System.Windows.Forms.DockStyle]::Top
$panel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]10),([System.Int32][System.Int32]56)))
$panel2.Name = ([System.String][System.String]'panel2')
$panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]843),([System.Int32][System.Int32]75)))
$panel2.TabIndex = ([System.Int32][System.Int32]52)
$pathTextbox.BackColor = [System.Drawing.Color]::White
$pathTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$pathTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]20)))
$pathTextbox.Name = ([System.String][System.String]'pathTextbox')
$pathTextbox.ReadOnly = $true
$pathTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]843),([System.Int32][System.Int32]26)))
$pathTextbox.TabIndex = ([System.Int32][System.Int32]53)
$pathTextbox.Tag = ([System.String][System.String]'Mandatory')
$pathTextbox.add_Validating($pathTextbox_Validating)
$pathTextbox.add_Validated($control_Validated)
$pathLabel.AutoSize = $true
$pathLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$pathLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]0)))
$pathLabel.Name = ([System.String][System.String]'pathLabel')
$pathLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]146),([System.Int32][System.Int32]20)))
$pathLabel.TabIndex = ([System.Int32][System.Int32]51)
$pathLabel.Text = ([System.String][System.String]'Create in Container')
$userCreateLabel.AutoSize = $true
$userCreateLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$userCreateLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @(([System.String][System.String]'Microsoft Sans Serif'),([System.Single][System.Double]16.125),[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte]([System.Byte][System.Int32]0))))
$userCreateLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(([System.Int32][System.Int32]10),([System.Int32][System.Int32]10)))
$userCreateLabel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]3)))
$userCreateLabel.Name = ([System.String][System.String]'userCreateLabel')
$userCreateLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @(([System.Int32][System.Int32]0),([System.Int32][System.Int32]0),([System.Int32][System.Int32]0),([System.Int32][System.Int32]20)))
$userCreateLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]256),([System.Int32][System.Int32]46)))
$userCreateLabel.TabIndex = ([System.Int32][System.Int32]51)
$userCreateLabel.Text = ([System.String][System.String]'Create Computer Form')
$errorProvider1.ContainerControl = $CreateComputerForm
$CreateComputerForm.AutoValidate = [System.Windows.Forms.AutoValidate]::EnableAllowFocusChange
$CreateComputerForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @(([System.Int32][System.Int32]1184),([System.Int32][System.Int32]451)))
$CreateComputerForm.Controls.Add($splitContainer1)
$CreateComputerForm.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @(([System.String][System.String]'Microsoft Sans Serif'),([System.Single][System.Int32]12),[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte]([System.Byte][System.Int32]0))))
$CreateComputerForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$CreateComputerForm.Name = ([System.String][System.String]'CreateComputerForm')
$CreateComputerForm.Text = ([System.String][System.String]'Create Computer Form v1.0')
$CreateComputerForm.add_Load($form_Load)
$splitContainer1.Panel1.ResumeLayout($false)
$splitContainer1.Panel2.ResumeLayout($false)
$splitContainer1.Panel2.PerformLayout()
([System.ComponentModel.ISupportInitialize]$splitContainer1).EndInit()
$splitContainer1.ResumeLayout($false)
$panel4.ResumeLayout($false)
$panel4.PerformLayout()
$JoinRightGroupBox.ResumeLayout($false)
$tableLayoutPanel2.ResumeLayout($false)
$tableLayoutPanel2.PerformLayout()
$groupBox1.ResumeLayout($false)
$tableLayoutPanel1.ResumeLayout($false)
$panel18.ResumeLayout($false)
$panel18.PerformLayout()
$panel5.ResumeLayout($false)
$panel5.PerformLayout()
$panel1.ResumeLayout($false)
$panel1.PerformLayout()
$panel3.ResumeLayout($false)
$panel3.PerformLayout()
$panel6.ResumeLayout($false)
$panel6.PerformLayout()
$panel2.ResumeLayout($false)
$panel2.PerformLayout()
([System.ComponentModel.ISupportInitialize]$errorProvider1).EndInit()
$CreateComputerForm.ResumeLayout($false)
Add-Member -InputObject $CreateComputerForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name splitContainer1 -Value $splitContainer1 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name errorProvider1 -Value $errorProvider1 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name toolTip1 -Value $toolTip1 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name pathTreeView -Value $pathTreeView -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name imageList1 -Value $imageList1 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name userCreateLabel -Value $userCreateLabel -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name panel2 -Value $panel2 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name pathTextbox -Value $pathTextbox -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name pathLabel -Value $pathLabel -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name groupBox1 -Value $groupBox1 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name tableLayoutPanel1 -Value $tableLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name panel5 -Value $panel5 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name panel1 -Value $panel1 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name panel18 -Value $panel18 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name baseNameCombobox -Value $baseNameCombobox -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name label25 -Value $label25 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name panel3 -Value $panel3 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name computerTypeComboBox -Value $computerTypeComboBox -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name computerNameTextBox -Value $computerNameTextBox -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name systemIdTextBox -Value $systemIdTextBox -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name joinRightCheckBox -Value $joinRightCheckBox -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name tableLayoutPanel2 -Value $tableLayoutPanel2 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name searchButton -Value $searchButton -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name searchScopeComboBox -Value $searchScopeComboBox -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name searchStringTextBox -Value $searchStringTextBox -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name JoinRightsTreeView -Value $JoinRightsTreeView -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name JoinRightGroupBox -Value $JoinRightGroupBox -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name panel4 -Value $panel4 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name label11 -Value $label11 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name DcBox -Value $DcBox -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name cancelButton -Value $cancelButton -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name createButton -Value $createButton -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name panel6 -Value $panel6 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name descriptionTextBox -Value $descriptionTextBox -MemberType NoteProperty
Add-Member -InputObject $CreateComputerForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
