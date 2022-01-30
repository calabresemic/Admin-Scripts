[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ComplianceReportForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TabControl]$tabControl1 = $null
[System.Windows.Forms.TabPage]$adminTab = $null
[System.Windows.Forms.TabPage]$svcTab = $null
[System.Windows.Forms.TabPage]$userTab = $null
[System.Windows.Forms.TabPage]$baseGroupTab = $null
[System.Windows.Forms.TabPage]$adminGroupTab = $null
[System.Windows.Forms.DataGridView]$adminResultDataGridView = $null
[System.Windows.Forms.DataGridView]$svcResultDataGridView = $null
[System.Windows.Forms.DataGridView]$userResultDataGridView = $null
[System.Windows.Forms.DataGridView]$baseGroupResultDataGridView = $null
[System.Windows.Forms.DataGridView]$adminGroupResultDataGridView = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$NameColumn = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$DistinguishedNameColumn = $null
[System.Windows.Forms.DataGridViewButtonColumn]$SelectColumn = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$dataGridViewTextBoxColumn1 = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$dataGridViewTextBoxColumn2 = $null
[System.Windows.Forms.DataGridViewButtonColumn]$dataGridViewButtonColumn1 = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$dataGridViewTextBoxColumn3 = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$dataGridViewTextBoxColumn4 = $null
[System.Windows.Forms.DataGridViewButtonColumn]$dataGridViewButtonColumn2 = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$dataGridViewTextBoxColumn5 = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$dataGridViewTextBoxColumn6 = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$dataGridViewTextBoxColumn7 = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$dataGridViewTextBoxColumn8 = $null
[System.Windows.Forms.TabPage]$computerTab = $null
[System.Windows.Forms.DataGridView]$computerResultDataGridView = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$dataGridViewTextBoxColumn9 = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$dataGridViewTextBoxColumn10 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
[System.Windows.Forms.DataGridViewCellStyle]$dataGridViewCellStyle1 = (New-Object -TypeName System.Windows.Forms.DataGridViewCellStyle)
[System.Windows.Forms.DataGridViewCellStyle]$dataGridViewCellStyle2 = (New-Object -TypeName System.Windows.Forms.DataGridViewCellStyle)
[System.Windows.Forms.DataGridViewCellStyle]$dataGridViewCellStyle3 = (New-Object -TypeName System.Windows.Forms.DataGridViewCellStyle)
$tabControl1 = (New-Object -TypeName System.Windows.Forms.TabControl)
$adminTab = (New-Object -TypeName System.Windows.Forms.TabPage)
$adminResultDataGridView = (New-Object -TypeName System.Windows.Forms.DataGridView)
$NameColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$DistinguishedNameColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$SelectColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewButtonColumn)
$svcTab = (New-Object -TypeName System.Windows.Forms.TabPage)
$svcResultDataGridView = (New-Object -TypeName System.Windows.Forms.DataGridView)
$dataGridViewTextBoxColumn1 = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$dataGridViewTextBoxColumn2 = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$dataGridViewButtonColumn1 = (New-Object -TypeName System.Windows.Forms.DataGridViewButtonColumn)
$userTab = (New-Object -TypeName System.Windows.Forms.TabPage)
$userResultDataGridView = (New-Object -TypeName System.Windows.Forms.DataGridView)
$dataGridViewTextBoxColumn3 = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$dataGridViewTextBoxColumn4 = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$dataGridViewButtonColumn2 = (New-Object -TypeName System.Windows.Forms.DataGridViewButtonColumn)
$computerTab = (New-Object -TypeName System.Windows.Forms.TabPage)
$computerResultDataGridView = (New-Object -TypeName System.Windows.Forms.DataGridView)
$dataGridViewTextBoxColumn9 = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$dataGridViewTextBoxColumn10 = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$baseGroupTab = (New-Object -TypeName System.Windows.Forms.TabPage)
$baseGroupResultDataGridView = (New-Object -TypeName System.Windows.Forms.DataGridView)
$dataGridViewTextBoxColumn5 = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$dataGridViewTextBoxColumn6 = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$adminGroupTab = (New-Object -TypeName System.Windows.Forms.TabPage)
$adminGroupResultDataGridView = (New-Object -TypeName System.Windows.Forms.DataGridView)
$dataGridViewTextBoxColumn7 = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$dataGridViewTextBoxColumn8 = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$tabControl1.SuspendLayout()
$adminTab.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$adminResultDataGridView).BeginInit()
$svcTab.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$svcResultDataGridView).BeginInit()
$userTab.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$userResultDataGridView).BeginInit()
$computerTab.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$computerResultDataGridView).BeginInit()
$baseGroupTab.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$baseGroupResultDataGridView).BeginInit()
$adminGroupTab.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$adminGroupResultDataGridView).BeginInit()
$ComplianceReportForm.SuspendLayout()
#
#tabControl1
#
$tabControl1.Controls.Add($adminTab)
$tabControl1.Controls.Add($svcTab)
$tabControl1.Controls.Add($userTab)
$tabControl1.Controls.Add($computerTab)
$tabControl1.Controls.Add($baseGroupTab)
$tabControl1.Controls.Add($adminGroupTab)
$tabControl1.Dock = [System.Windows.Forms.DockStyle]::Fill
$tabControl1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tabControl1.Name = [System.String]'tabControl1'
$tabControl1.SelectedIndex = [System.Int32]0
$tabControl1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1117,[System.Int32]599))
$tabControl1.TabIndex = [System.Int32]0
$tabControl1.add_SelectedIndexChanged($tabControl_SelectedIndexChanged)
#
#adminTab
#
$adminTab.Controls.Add($adminResultDataGridView)
$adminTab.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$adminTab.Name = [System.String]'adminTab'
$adminTab.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$adminTab.TabIndex = [System.Int32]0
$adminTab.Text = [System.String]'Administrators'
$adminTab.UseVisualStyleBackColor = $true
#
#adminResultDataGridView
#
$adminResultDataGridView.AllowUserToAddRows = $false
$adminResultDataGridView.AllowUserToDeleteRows = $false
$adminResultDataGridView.AllowUserToResizeRows = $false
$adminResultDataGridView.AutoSizeColumnsMode = [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]::Fill
$adminResultDataGridView.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$adminResultDataGridView.Columns.AddRange($NameColumn,$DistinguishedNameColumn,$SelectColumn)
$adminResultDataGridView.Dock = [System.Windows.Forms.DockStyle]::Fill
$adminResultDataGridView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$adminResultDataGridView.Name = [System.String]'adminResultDataGridView'
$adminResultDataGridView.ReadOnly = $true
$adminResultDataGridView.RowHeadersVisible = $false
$adminResultDataGridView.RowHeadersWidth = [System.Int32]62
$adminResultDataGridView.RowTemplate.DefaultCellStyle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$adminResultDataGridView.RowTemplate.DefaultCellStyle.ForeColor = [System.Drawing.Color]::Black
$adminResultDataGridView.RowTemplate.DefaultCellStyle.SelectionForeColor = [System.Drawing.Color]::Black
$adminResultDataGridView.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$adminResultDataGridView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$adminResultDataGridView.TabIndex = [System.Int32]8
$adminResultDataGridView.add_CellContentClick($AdminResultDataGridView_CellContentClick)
#
#NameColumn
#
$NameColumn.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$NameColumn.FillWeight = [System.Single]80
$NameColumn.HeaderText = [System.String]'Name'
$NameColumn.MinimumWidth = [System.Int32]8
$NameColumn.Name = [System.String]'NameColumn'
$NameColumn.ReadOnly = $true
$NameColumn.Width = [System.Int32]60
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
$SelectColumn.MinimumWidth = [System.Int32]150
$SelectColumn.Name = [System.String]'SelectColumn'
$SelectColumn.ReadOnly = $true
$SelectColumn.Width = [System.Int32]150
#
#svcTab
#
$svcTab.Controls.Add($svcResultDataGridView)
$svcTab.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$svcTab.Name = [System.String]'svcTab'
$svcTab.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$svcTab.TabIndex = [System.Int32]1
$svcTab.Text = [System.String]'Service Accounts'
$svcTab.UseVisualStyleBackColor = $true
#
#svcResultDataGridView
#
$svcResultDataGridView.AllowUserToAddRows = $false
$svcResultDataGridView.AllowUserToDeleteRows = $false
$svcResultDataGridView.AllowUserToResizeRows = $false
$svcResultDataGridView.AutoSizeColumnsMode = [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]::Fill
$svcResultDataGridView.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$svcResultDataGridView.Columns.AddRange($dataGridViewTextBoxColumn1,$dataGridViewTextBoxColumn2,$dataGridViewButtonColumn1)
$svcResultDataGridView.Dock = [System.Windows.Forms.DockStyle]::Fill
$svcResultDataGridView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$svcResultDataGridView.Name = [System.String]'svcResultDataGridView'
$svcResultDataGridView.ReadOnly = $true
$svcResultDataGridView.RowHeadersVisible = $false
$svcResultDataGridView.RowHeadersWidth = [System.Int32]62
$svcResultDataGridView.RowTemplate.DefaultCellStyle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$svcResultDataGridView.RowTemplate.DefaultCellStyle.ForeColor = [System.Drawing.Color]::Black
$svcResultDataGridView.RowTemplate.DefaultCellStyle.SelectionForeColor = [System.Drawing.Color]::Black
$svcResultDataGridView.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$svcResultDataGridView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$svcResultDataGridView.TabIndex = [System.Int32]9
$svcResultDataGridView.add_CellContentClick($svcResultDataGridView_CellContentClick)
#
#dataGridViewTextBoxColumn1
#
$dataGridViewTextBoxColumn1.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$dataGridViewTextBoxColumn1.FillWeight = [System.Single]80
$dataGridViewTextBoxColumn1.HeaderText = [System.String]'Name'
$dataGridViewTextBoxColumn1.MinimumWidth = [System.Int32]8
$dataGridViewTextBoxColumn1.Name = [System.String]'dataGridViewTextBoxColumn1'
$dataGridViewTextBoxColumn1.ReadOnly = $true
$dataGridViewTextBoxColumn1.Width = [System.Int32]60
#
#dataGridViewTextBoxColumn2
#
$dataGridViewTextBoxColumn2.HeaderText = [System.String]'DistinguishedName'
$dataGridViewTextBoxColumn2.MinimumWidth = [System.Int32]8
$dataGridViewTextBoxColumn2.Name = [System.String]'dataGridViewTextBoxColumn2'
$dataGridViewTextBoxColumn2.ReadOnly = $true
#
#dataGridViewButtonColumn1
#
$dataGridViewButtonColumn1.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCellsExceptHeader
$dataGridViewCellStyle2.Alignment = [System.Windows.Forms.DataGridViewContentAlignment]::MiddleCenter
$dataGridViewCellStyle2.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$dataGridViewCellStyle2.SelectionBackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$dataGridViewCellStyle2.SelectionForeColor = [System.Drawing.Color]::Black
$dataGridViewButtonColumn1.DefaultCellStyle = $dataGridViewCellStyle2
$dataGridViewButtonColumn1.FillWeight = [System.Single]30
$dataGridViewButtonColumn1.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$dataGridViewButtonColumn1.HeaderText = [System.String]''
$dataGridViewButtonColumn1.MinimumWidth = [System.Int32]150
$dataGridViewButtonColumn1.Name = [System.String]'dataGridViewButtonColumn1'
$dataGridViewButtonColumn1.ReadOnly = $true
$dataGridViewButtonColumn1.Width = [System.Int32]150
#
#userTab
#
$userTab.Controls.Add($userResultDataGridView)
$userTab.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$userTab.Name = [System.String]'userTab'
$userTab.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$userTab.TabIndex = [System.Int32]2
$userTab.Text = [System.String]'Users'
$userTab.UseVisualStyleBackColor = $true
#
#userResultDataGridView
#
$userResultDataGridView.AllowUserToAddRows = $false
$userResultDataGridView.AllowUserToDeleteRows = $false
$userResultDataGridView.AllowUserToResizeRows = $false
$userResultDataGridView.AutoSizeColumnsMode = [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]::Fill
$userResultDataGridView.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$userResultDataGridView.Columns.AddRange($dataGridViewTextBoxColumn3,$dataGridViewTextBoxColumn4,$dataGridViewButtonColumn2)
$userResultDataGridView.Dock = [System.Windows.Forms.DockStyle]::Fill
$userResultDataGridView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$userResultDataGridView.Name = [System.String]'userResultDataGridView'
$userResultDataGridView.ReadOnly = $true
$userResultDataGridView.RowHeadersVisible = $false
$userResultDataGridView.RowHeadersWidth = [System.Int32]62
$userResultDataGridView.RowTemplate.DefaultCellStyle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$userResultDataGridView.RowTemplate.DefaultCellStyle.ForeColor = [System.Drawing.Color]::Black
$userResultDataGridView.RowTemplate.DefaultCellStyle.SelectionForeColor = [System.Drawing.Color]::Black
$userResultDataGridView.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$userResultDataGridView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$userResultDataGridView.TabIndex = [System.Int32]9
$userResultDataGridView.add_CellContentClick($userResultDataGridView_CellContentClick)
#
#dataGridViewTextBoxColumn3
#
$dataGridViewTextBoxColumn3.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$dataGridViewTextBoxColumn3.FillWeight = [System.Single]80
$dataGridViewTextBoxColumn3.HeaderText = [System.String]'Name'
$dataGridViewTextBoxColumn3.MinimumWidth = [System.Int32]8
$dataGridViewTextBoxColumn3.Name = [System.String]'dataGridViewTextBoxColumn3'
$dataGridViewTextBoxColumn3.ReadOnly = $true
$dataGridViewTextBoxColumn3.Width = [System.Int32]60
#
#dataGridViewTextBoxColumn4
#
$dataGridViewTextBoxColumn4.HeaderText = [System.String]'DistinguishedName'
$dataGridViewTextBoxColumn4.MinimumWidth = [System.Int32]8
$dataGridViewTextBoxColumn4.Name = [System.String]'dataGridViewTextBoxColumn4'
$dataGridViewTextBoxColumn4.ReadOnly = $true
#
#dataGridViewButtonColumn2
#
$dataGridViewButtonColumn2.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCellsExceptHeader
$dataGridViewCellStyle3.Alignment = [System.Windows.Forms.DataGridViewContentAlignment]::MiddleCenter
$dataGridViewCellStyle3.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$dataGridViewCellStyle3.SelectionBackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$dataGridViewCellStyle3.SelectionForeColor = [System.Drawing.Color]::Black
$dataGridViewButtonColumn2.DefaultCellStyle = $dataGridViewCellStyle3
$dataGridViewButtonColumn2.FillWeight = [System.Single]30
$dataGridViewButtonColumn2.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$dataGridViewButtonColumn2.HeaderText = [System.String]''
$dataGridViewButtonColumn2.MinimumWidth = [System.Int32]150
$dataGridViewButtonColumn2.Name = [System.String]'dataGridViewButtonColumn2'
$dataGridViewButtonColumn2.ReadOnly = $true
$dataGridViewButtonColumn2.Width = [System.Int32]150
#
#computerTab
#
$computerTab.Controls.Add($computerResultDataGridView)
$computerTab.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$computerTab.Name = [System.String]'computerTab'
$computerTab.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$computerTab.TabIndex = [System.Int32]5
$computerTab.Text = [System.String]'Computers'
$computerTab.UseVisualStyleBackColor = $true
#
#computerResultDataGridView
#
$computerResultDataGridView.AllowUserToAddRows = $false
$computerResultDataGridView.AllowUserToDeleteRows = $false
$computerResultDataGridView.AllowUserToResizeRows = $false
$computerResultDataGridView.AutoSizeColumnsMode = [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]::Fill
$computerResultDataGridView.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$computerResultDataGridView.Columns.AddRange($dataGridViewTextBoxColumn9,$dataGridViewTextBoxColumn10)
$computerResultDataGridView.Dock = [System.Windows.Forms.DockStyle]::Fill
$computerResultDataGridView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$computerResultDataGridView.Name = [System.String]'computerResultDataGridView'
$computerResultDataGridView.ReadOnly = $true
$computerResultDataGridView.RowHeadersVisible = $false
$computerResultDataGridView.RowHeadersWidth = [System.Int32]62
$computerResultDataGridView.RowTemplate.DefaultCellStyle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$computerResultDataGridView.RowTemplate.DefaultCellStyle.ForeColor = [System.Drawing.Color]::Black
$computerResultDataGridView.RowTemplate.DefaultCellStyle.SelectionForeColor = [System.Drawing.Color]::Black
$computerResultDataGridView.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$computerResultDataGridView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$computerResultDataGridView.TabIndex = [System.Int32]10
#
#dataGridViewTextBoxColumn9
#
$dataGridViewTextBoxColumn9.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$dataGridViewTextBoxColumn9.FillWeight = [System.Single]80
$dataGridViewTextBoxColumn9.HeaderText = [System.String]'Name'
$dataGridViewTextBoxColumn9.MinimumWidth = [System.Int32]8
$dataGridViewTextBoxColumn9.Name = [System.String]'dataGridViewTextBoxColumn9'
$dataGridViewTextBoxColumn9.ReadOnly = $true
$dataGridViewTextBoxColumn9.Width = [System.Int32]60
#
#dataGridViewTextBoxColumn10
#
$dataGridViewTextBoxColumn10.HeaderText = [System.String]'DistinguishedName'
$dataGridViewTextBoxColumn10.MinimumWidth = [System.Int32]8
$dataGridViewTextBoxColumn10.Name = [System.String]'dataGridViewTextBoxColumn10'
$dataGridViewTextBoxColumn10.ReadOnly = $true
#
#baseGroupTab
#
$baseGroupTab.Controls.Add($baseGroupResultDataGridView)
$baseGroupTab.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$baseGroupTab.Name = [System.String]'baseGroupTab'
$baseGroupTab.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$baseGroupTab.TabIndex = [System.Int32]3
$baseGroupTab.Text = [System.String]'Base Groups'
$baseGroupTab.UseVisualStyleBackColor = $true
#
#baseGroupResultDataGridView
#
$baseGroupResultDataGridView.AllowUserToAddRows = $false
$baseGroupResultDataGridView.AllowUserToDeleteRows = $false
$baseGroupResultDataGridView.AllowUserToResizeRows = $false
$baseGroupResultDataGridView.AutoSizeColumnsMode = [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]::Fill
$baseGroupResultDataGridView.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$baseGroupResultDataGridView.Columns.AddRange($dataGridViewTextBoxColumn5,$dataGridViewTextBoxColumn6)
$baseGroupResultDataGridView.Dock = [System.Windows.Forms.DockStyle]::Fill
$baseGroupResultDataGridView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$baseGroupResultDataGridView.Name = [System.String]'baseGroupResultDataGridView'
$baseGroupResultDataGridView.ReadOnly = $true
$baseGroupResultDataGridView.RowHeadersVisible = $false
$baseGroupResultDataGridView.RowHeadersWidth = [System.Int32]62
$baseGroupResultDataGridView.RowTemplate.DefaultCellStyle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$baseGroupResultDataGridView.RowTemplate.DefaultCellStyle.ForeColor = [System.Drawing.Color]::Black
$baseGroupResultDataGridView.RowTemplate.DefaultCellStyle.SelectionForeColor = [System.Drawing.Color]::Black
$baseGroupResultDataGridView.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$baseGroupResultDataGridView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$baseGroupResultDataGridView.TabIndex = [System.Int32]9
#
#dataGridViewTextBoxColumn5
#
$dataGridViewTextBoxColumn5.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$dataGridViewTextBoxColumn5.FillWeight = [System.Single]80
$dataGridViewTextBoxColumn5.HeaderText = [System.String]'Name'
$dataGridViewTextBoxColumn5.MinimumWidth = [System.Int32]8
$dataGridViewTextBoxColumn5.Name = [System.String]'dataGridViewTextBoxColumn5'
$dataGridViewTextBoxColumn5.ReadOnly = $true
$dataGridViewTextBoxColumn5.Width = [System.Int32]60
#
#dataGridViewTextBoxColumn6
#
$dataGridViewTextBoxColumn6.HeaderText = [System.String]'DistinguishedName'
$dataGridViewTextBoxColumn6.MinimumWidth = [System.Int32]8
$dataGridViewTextBoxColumn6.Name = [System.String]'dataGridViewTextBoxColumn6'
$dataGridViewTextBoxColumn6.ReadOnly = $true
#
#adminGroupTab
#
$adminGroupTab.Controls.Add($adminGroupResultDataGridView)
$adminGroupTab.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$adminGroupTab.Name = [System.String]'adminGroupTab'
$adminGroupTab.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$adminGroupTab.TabIndex = [System.Int32]4
$adminGroupTab.Text = [System.String]'Admin Groups'
$adminGroupTab.UseVisualStyleBackColor = $true
#
#adminGroupResultDataGridView
#
$adminGroupResultDataGridView.AllowUserToAddRows = $false
$adminGroupResultDataGridView.AllowUserToDeleteRows = $false
$adminGroupResultDataGridView.AllowUserToResizeRows = $false
$adminGroupResultDataGridView.AutoSizeColumnsMode = [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]::Fill
$adminGroupResultDataGridView.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$adminGroupResultDataGridView.Columns.AddRange($dataGridViewTextBoxColumn7,$dataGridViewTextBoxColumn8)
$adminGroupResultDataGridView.Dock = [System.Windows.Forms.DockStyle]::Fill
$adminGroupResultDataGridView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$adminGroupResultDataGridView.Name = [System.String]'adminGroupResultDataGridView'
$adminGroupResultDataGridView.ReadOnly = $true
$adminGroupResultDataGridView.RowHeadersVisible = $false
$adminGroupResultDataGridView.RowHeadersWidth = [System.Int32]62
$adminGroupResultDataGridView.RowTemplate.DefaultCellStyle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$adminGroupResultDataGridView.RowTemplate.DefaultCellStyle.ForeColor = [System.Drawing.Color]::Black
$adminGroupResultDataGridView.RowTemplate.DefaultCellStyle.SelectionForeColor = [System.Drawing.Color]::Black
$adminGroupResultDataGridView.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$adminGroupResultDataGridView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1109,[System.Int32]573))
$adminGroupResultDataGridView.TabIndex = [System.Int32]9
$adminGroupResultDataGridView.add_CellContentClick($adminGroupResultDataGridView_CellContentClick)
#
#dataGridViewTextBoxColumn7
#
$dataGridViewTextBoxColumn7.AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
$dataGridViewTextBoxColumn7.FillWeight = [System.Single]80
$dataGridViewTextBoxColumn7.HeaderText = [System.String]'Name'
$dataGridViewTextBoxColumn7.MinimumWidth = [System.Int32]8
$dataGridViewTextBoxColumn7.Name = [System.String]'dataGridViewTextBoxColumn7'
$dataGridViewTextBoxColumn7.ReadOnly = $true
$dataGridViewTextBoxColumn7.Width = [System.Int32]60
#
#dataGridViewTextBoxColumn8
#
$dataGridViewTextBoxColumn8.HeaderText = [System.String]'DistinguishedName'
$dataGridViewTextBoxColumn8.MinimumWidth = [System.Int32]8
$dataGridViewTextBoxColumn8.Name = [System.String]'dataGridViewTextBoxColumn8'
$dataGridViewTextBoxColumn8.ReadOnly = $true
#
#ComplianceReportForm
#
$ComplianceReportForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1117,[System.Int32]599))
$ComplianceReportForm.Controls.Add($tabControl1)
$ComplianceReportForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ComplianceReportForm.Name = [System.String]'ComplianceReportForm'
$ComplianceReportForm.Text = [System.String]'MTO 2021-222-001A Non-Compliant Objects'
$ComplianceReportForm.add_Load($form_Load)
$tabControl1.ResumeLayout($false)
$adminTab.ResumeLayout($false)
([System.ComponentModel.ISupportInitialize]$adminResultDataGridView).EndInit()
$svcTab.ResumeLayout($false)
([System.ComponentModel.ISupportInitialize]$svcResultDataGridView).EndInit()
$userTab.ResumeLayout($false)
([System.ComponentModel.ISupportInitialize]$userResultDataGridView).EndInit()
$computerTab.ResumeLayout($false)
([System.ComponentModel.ISupportInitialize]$computerResultDataGridView).EndInit()
$baseGroupTab.ResumeLayout($false)
([System.ComponentModel.ISupportInitialize]$baseGroupResultDataGridView).EndInit()
$adminGroupTab.ResumeLayout($false)
([System.ComponentModel.ISupportInitialize]$adminGroupResultDataGridView).EndInit()
$ComplianceReportForm.ResumeLayout($false)
Add-Member -InputObject $ComplianceReportForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name tabControl1 -Value $tabControl1 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name adminTab -Value $adminTab -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name svcTab -Value $svcTab -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name userTab -Value $userTab -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name baseGroupTab -Value $baseGroupTab -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name adminGroupTab -Value $adminGroupTab -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name adminResultDataGridView -Value $adminResultDataGridView -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name svcResultDataGridView -Value $svcResultDataGridView -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name userResultDataGridView -Value $userResultDataGridView -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name baseGroupResultDataGridView -Value $baseGroupResultDataGridView -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name adminGroupResultDataGridView -Value $adminGroupResultDataGridView -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name NameColumn -Value $NameColumn -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name DistinguishedNameColumn -Value $DistinguishedNameColumn -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name SelectColumn -Value $SelectColumn -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewTextBoxColumn1 -Value $dataGridViewTextBoxColumn1 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewTextBoxColumn2 -Value $dataGridViewTextBoxColumn2 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewButtonColumn1 -Value $dataGridViewButtonColumn1 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewTextBoxColumn3 -Value $dataGridViewTextBoxColumn3 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewTextBoxColumn4 -Value $dataGridViewTextBoxColumn4 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewButtonColumn2 -Value $dataGridViewButtonColumn2 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewTextBoxColumn5 -Value $dataGridViewTextBoxColumn5 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewTextBoxColumn6 -Value $dataGridViewTextBoxColumn6 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewTextBoxColumn7 -Value $dataGridViewTextBoxColumn7 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewTextBoxColumn8 -Value $dataGridViewTextBoxColumn8 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name computerTab -Value $computerTab -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name computerResultDataGridView -Value $computerResultDataGridView -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewTextBoxColumn9 -Value $dataGridViewTextBoxColumn9 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name dataGridViewTextBoxColumn10 -Value $dataGridViewTextBoxColumn10 -MemberType NoteProperty
Add-Member -InputObject $ComplianceReportForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
