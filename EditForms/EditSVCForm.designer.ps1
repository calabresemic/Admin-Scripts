[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$EditSVCForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Panel]$panel3 = $null
[System.Windows.Forms.TextBox]$nameTextbox = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Panel]$panel4 = $null
[System.Windows.Forms.TextBox]$CRQTextbox = $null
[System.Windows.Forms.Label]$label9 = $null
[System.Windows.Forms.Panel]$panel5 = $null
[System.Windows.Forms.TextBox]$descriptionTextbox = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel4 = $null
[System.Windows.Forms.Panel]$panel11 = $null
[System.Windows.Forms.TextBox]$emailTextbox = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.Panel]$panel10 = $null
[System.Windows.Forms.TextBox]$phoneTextbox = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel3 = $null
[System.Windows.Forms.Panel]$panel9 = $null
[System.Windows.Forms.TextBox]$officeSymbolTextbox = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Panel]$panel8 = $null
[System.Windows.Forms.ComboBox]$unitCombobox = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.Panel]$panel7 = $null
[System.Windows.Forms.ComboBox]$baseNameCombobox = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.GroupBox]$SearchGroupBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel1 = $null
[System.Windows.Forms.Button]$searchButton = $null
[System.Windows.Forms.TextBox]$searchStringTextBox = $null
[System.Windows.Forms.DataGridView]$resultDataGridView = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$NameColumn = $null
[System.Windows.Forms.DataGridViewTextBoxColumn]$DistinguishedNameColumn = $null
[System.Windows.Forms.DataGridViewButtonColumn]$SelectColumn = $null
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel5 = $null
[System.Windows.Forms.GroupBox]$accountInfoGroupbox = $null
[System.Windows.Forms.GroupBox]$ownerInfoGroupbox = $null
[System.Windows.Forms.ErrorProvider]$errorProvider1 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.ToolTip]$toolTip1 = $null
[System.Windows.Forms.GroupBox]$accountActionGroupbox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel6 = $null
[System.Windows.Forms.Label]$lockedLabel = $null
[System.Windows.Forms.LinkLabel]$unlockLinkLabel = $null
[System.Windows.Forms.Label]$enabledLabel = $null
[System.Windows.Forms.Panel]$savePanel = $null
[System.Windows.Forms.Label]$label12 = $null
[System.Windows.Forms.Label]$DcBox = $null
[System.Windows.Forms.Button]$cancelButton = $null
[System.Windows.Forms.Button]$editButton = $null
[System.Windows.Forms.Label]$validationLabel = $null
[System.Windows.Forms.LinkLabel]$validateLinkLabel = $null
[System.Windows.Forms.LinkLabel]$enableLinkLabel = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$accountInfoGroupbox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel5 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel4 = (New-Object -TypeName System.Windows.Forms.Panel)
$CRQTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label9 = (New-Object -TypeName System.Windows.Forms.Label)
$panel3 = (New-Object -TypeName System.Windows.Forms.Panel)
$nameTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$panel5 = (New-Object -TypeName System.Windows.Forms.Panel)
$descriptionTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$ownerInfoGroupbox = (New-Object -TypeName System.Windows.Forms.GroupBox)
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
$SearchGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$searchButton = (New-Object -TypeName System.Windows.Forms.Button)
$searchStringTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$resultDataGridView = (New-Object -TypeName System.Windows.Forms.DataGridView)
$NameColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$DistinguishedNameColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn)
$SelectColumn = (New-Object -TypeName System.Windows.Forms.DataGridViewButtonColumn)
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$errorProvider1 = (New-Object -TypeName System.Windows.Forms.ErrorProvider -ArgumentList @($components))
$toolTip1 = (New-Object -TypeName System.Windows.Forms.ToolTip -ArgumentList @($components))
$accountActionGroupbox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel6 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$validateLinkLabel = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$enableLinkLabel = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$validationLabel = (New-Object -TypeName System.Windows.Forms.Label)
$lockedLabel = (New-Object -TypeName System.Windows.Forms.Label)
$unlockLinkLabel = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$enabledLabel = (New-Object -TypeName System.Windows.Forms.Label)
$savePanel = (New-Object -TypeName System.Windows.Forms.Panel)
$label12 = (New-Object -TypeName System.Windows.Forms.Label)
$DcBox = (New-Object -TypeName System.Windows.Forms.Label)
$cancelButton = (New-Object -TypeName System.Windows.Forms.Button)
$editButton = (New-Object -TypeName System.Windows.Forms.Button)
$accountInfoGroupbox.SuspendLayout()
$tableLayoutPanel5.SuspendLayout()
$panel4.SuspendLayout()
$panel3.SuspendLayout()
$panel5.SuspendLayout()
$ownerInfoGroupbox.SuspendLayout()
$tableLayoutPanel4.SuspendLayout()
$panel11.SuspendLayout()
$panel10.SuspendLayout()
$tableLayoutPanel3.SuspendLayout()
$panel9.SuspendLayout()
$panel8.SuspendLayout()
$panel7.SuspendLayout()
$SearchGroupBox.SuspendLayout()
$tableLayoutPanel1.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$resultDataGridView).BeginInit()
([System.ComponentModel.ISupportInitialize]$errorProvider1).BeginInit()
$accountActionGroupbox.SuspendLayout()
$tableLayoutPanel6.SuspendLayout()
$savePanel.SuspendLayout()
$EditSVCForm.SuspendLayout()
#
#label1
#
$label1.AutoSize = $true
$label1.Dock = [System.Windows.Forms.DockStyle]::Top
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]15.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$label1.Name = [System.String]'label1'
$label1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]20))
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]291,[System.Int32]45))
$label1.TabIndex = [System.Int32]10
$label1.Text = [System.String]'Edit Service Account Form'
#
#accountInfoGroupbox
#
$accountInfoGroupbox.AutoSize = $true
$accountInfoGroupbox.Controls.Add($tableLayoutPanel5)
$accountInfoGroupbox.Dock = [System.Windows.Forms.DockStyle]::Top
$accountInfoGroupbox.ForeColor = [System.Drawing.SystemColors]::Control
$accountInfoGroupbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]392))
$accountInfoGroupbox.Name = [System.String]'accountInfoGroupbox'
$accountInfoGroupbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1086,[System.Int32]159))
$accountInfoGroupbox.TabIndex = [System.Int32]11
$accountInfoGroupbox.TabStop = $false
$accountInfoGroupbox.Text = [System.String]'Acount Information'
$accountInfoGroupbox.Visible = $false
#
#tableLayoutPanel5
#
$tableLayoutPanel5.AutoSize = $true
$tableLayoutPanel5.ColumnCount = [System.Int32]2
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel5.Controls.Add($panel4,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel5.Controls.Add($panel3,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel5.Controls.Add($panel5,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel5.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]22))
$tableLayoutPanel5.Name = [System.String]'tableLayoutPanel5'
$tableLayoutPanel5.RowCount = [System.Int32]2
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1080,[System.Int32]134))
$tableLayoutPanel5.TabIndex = [System.Int32]1
#
#panel4
#
$panel4.Controls.Add($CRQTextbox)
$panel4.Controls.Add($label9)
$panel4.Dock = [System.Windows.Forms.DockStyle]::Top
$panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]543,[System.Int32]3))
$panel4.Name = [System.String]'panel4'
$panel4.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]534,[System.Int32]61))
$panel4.TabIndex = [System.Int32]1
#
#CRQTextbox
#
$CRQTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$CRQTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$CRQTextbox.MaxLength = [System.Int32]15
$CRQTextbox.Name = [System.String]'CRQTextbox'
$CRQTextbox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$CRQTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]514,[System.Int32]26))
$CRQTextbox.TabIndex = [System.Int32]62
$CRQTextbox.Tag = [System.String]'Mandatory'
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
#panel3
#
$panel3.Controls.Add($nameTextbox)
$panel3.Controls.Add($label2)
$panel3.Dock = [System.Windows.Forms.DockStyle]::Top
$panel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel3.Name = [System.String]'panel3'
$panel3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]534,[System.Int32]61))
$panel3.TabIndex = [System.Int32]0
#
#nameTextbox
#
$nameTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$nameTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$nameTextbox.MaxLength = [System.Int32]20
$nameTextbox.Name = [System.String]'nameTextbox'
$nameTextbox.ReadOnly = $true
$nameTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]514,[System.Int32]26))
$nameTextbox.TabIndex = [System.Int32]58
$nameTextbox.Tag = [System.String]'Mandatory'
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
#panel5
#
$tableLayoutPanel5.SetColumnSpan($panel5,[System.Int32]2)
$panel5.Controls.Add($descriptionTextbox)
$panel5.Controls.Add($label3)
$panel5.Dock = [System.Windows.Forms.DockStyle]::Top
$panel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]70))
$panel5.Name = [System.String]'panel5'
$panel5.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1074,[System.Int32]61))
$panel5.TabIndex = [System.Int32]2
#
#descriptionTextbox
#
$descriptionTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$descriptionTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$descriptionTextbox.Name = [System.String]'descriptionTextbox'
$descriptionTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1054,[System.Int32]26))
$descriptionTextbox.TabIndex = [System.Int32]60
$descriptionTextbox.Tag = [System.String]'Mandatory'
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
#ownerInfoGroupbox
#
$ownerInfoGroupbox.AutoSize = $true
$ownerInfoGroupbox.Controls.Add($tableLayoutPanel4)
$ownerInfoGroupbox.Controls.Add($tableLayoutPanel3)
$ownerInfoGroupbox.Dock = [System.Windows.Forms.DockStyle]::Top
$ownerInfoGroupbox.ForeColor = [System.Drawing.SystemColors]::Control
$ownerInfoGroupbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]551))
$ownerInfoGroupbox.Name = [System.String]'ownerInfoGroupbox'
$ownerInfoGroupbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1086,[System.Int32]160))
$ownerInfoGroupbox.TabIndex = [System.Int32]12
$ownerInfoGroupbox.TabStop = $false
$ownerInfoGroupbox.Text = [System.String]'Owner Information'
$ownerInfoGroupbox.Visible = $false
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
$tableLayoutPanel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1080,[System.Int32]65))
$tableLayoutPanel4.TabIndex = [System.Int32]1
#
#panel11
#
$panel11.Controls.Add($emailTextbox)
$panel11.Controls.Add($label8)
$panel11.Dock = [System.Windows.Forms.DockStyle]::Top
$panel11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]363,[System.Int32]3))
$panel11.Name = [System.String]'panel11'
$panel11.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]714,[System.Int32]59))
$panel11.TabIndex = [System.Int32]1
#
#emailTextbox
#
$emailTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$emailTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$emailTextbox.Name = [System.String]'emailTextbox'
$emailTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]694,[System.Int32]26))
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
$panel10.Dock = [System.Windows.Forms.DockStyle]::Top
$panel10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel10.Name = [System.String]'panel10'
$panel10.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]354,[System.Int32]59))
$panel10.TabIndex = [System.Int32]0
#
#phoneTextbox
#
$phoneTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$phoneTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$phoneTextbox.MaxLength = [System.Int32]12
$phoneTextbox.Name = [System.String]'phoneTextbox'
$phoneTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]334,[System.Int32]26))
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
$tableLayoutPanel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1080,[System.Int32]70))
$tableLayoutPanel3.TabIndex = [System.Int32]0
#
#panel9
#
$panel9.Controls.Add($officeSymbolTextbox)
$panel9.Controls.Add($label6)
$panel9.Dock = [System.Windows.Forms.DockStyle]::Top
$panel9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]736,[System.Int32]3))
$panel9.Name = [System.String]'panel9'
$panel9.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]341,[System.Int32]64))
$panel9.TabIndex = [System.Int32]2
#
#officeSymbolTextbox
#
$officeSymbolTextbox.Dock = [System.Windows.Forms.DockStyle]::Top
$officeSymbolTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$officeSymbolTextbox.Name = [System.String]'officeSymbolTextbox'
$officeSymbolTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]321,[System.Int32]26))
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
$panel8.Dock = [System.Windows.Forms.DockStyle]::Top
$panel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]428,[System.Int32]3))
$panel8.Name = [System.String]'panel8'
$panel8.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]302,[System.Int32]64))
$panel8.TabIndex = [System.Int32]1
#
#unitCombobox
#
$unitCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$unitCombobox.FormattingEnabled = $true
$unitCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]30))
$unitCombobox.Name = [System.String]'unitCombobox'
$unitCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]282,[System.Int32]28))
$unitCombobox.TabIndex = [System.Int32]1
$unitCombobox.Tag = [System.String]'Mandatory'
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
$panel7.Dock = [System.Windows.Forms.DockStyle]::Top
$panel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$panel7.Name = [System.String]'panel7'
$panel7.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]10,[System.Int32]20,[System.Int32]0))
$panel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]419,[System.Int32]64))
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
$baseNameCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]399,[System.Int32]28))
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
#SearchGroupBox
#
$SearchGroupBox.AutoSize = $true
$SearchGroupBox.Controls.Add($tableLayoutPanel1)
$SearchGroupBox.Dock = [System.Windows.Forms.DockStyle]::Top
$SearchGroupBox.ForeColor = [System.Drawing.SystemColors]::Control
$SearchGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]45))
$SearchGroupBox.Name = [System.String]'SearchGroupBox'
$SearchGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1086,[System.Int32]347))
$SearchGroupBox.TabIndex = [System.Int32]57
$SearchGroupBox.TabStop = $false
$SearchGroupBox.Text = [System.String]'Service Account Searcher'
#
#tableLayoutPanel1
#
$tableLayoutPanel1.ColumnCount = [System.Int32]3
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]25)))
$tableLayoutPanel1.Controls.Add($searchButton,[System.Int32]2,[System.Int32]0)
$tableLayoutPanel1.Controls.Add($searchStringTextBox,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel1.Controls.Add($resultDataGridView,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel1.Controls.Add($button2,[System.Int32]2,[System.Int32]2)
$tableLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Top
$tableLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]22))
$tableLayoutPanel1.Name = [System.String]'tableLayoutPanel1'
$tableLayoutPanel1.RowCount = [System.Int32]3
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]83.33334)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]16.66667)))
$tableLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1080,[System.Int32]322))
$tableLayoutPanel1.TabIndex = [System.Int32]0
#
#searchButton
#
$searchButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$searchButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$searchButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$searchButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$searchButton.ForeColor = [System.Drawing.Color]::Black
$searchButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]813,[System.Int32]3))
$searchButton.Name = [System.String]'searchButton'
$searchButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]264,[System.Int32]30))
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
$searchStringTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]804,[System.Int32]26))
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
$resultDataGridView.RowHeadersWidth = [System.Int32]62
$resultDataGridView.RowTemplate.DefaultCellStyle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$resultDataGridView.RowTemplate.DefaultCellStyle.ForeColor = [System.Drawing.Color]::Black
$resultDataGridView.RowTemplate.DefaultCellStyle.SelectionForeColor = [System.Drawing.Color]::Black
$resultDataGridView.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$resultDataGridView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1074,[System.Int32]232))
$resultDataGridView.TabIndex = [System.Int32]7
$resultDataGridView.add_CellContentClick($resultDataGridView_CellContentClick)
#
#NameColumn
#
$NameColumn.FillWeight = [System.Single]80
$NameColumn.HeaderText = [System.String]'Name'
$NameColumn.MinimumWidth = [System.Int32]8
$NameColumn.Name = [System.String]'NameColumn'
$NameColumn.ReadOnly = $true
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
$SelectColumn.FillWeight = [System.Single]30
$SelectColumn.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$SelectColumn.HeaderText = [System.String]''
$SelectColumn.MinimumWidth = [System.Int32]8
$SelectColumn.Name = [System.String]'SelectColumn'
$SelectColumn.ReadOnly = $true
#
#button2
#
$button2.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$button2.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$button2.Dock = [System.Windows.Forms.DockStyle]::Fill
$button2.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$button2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold))
$button2.ForeColor = [System.Drawing.Color]::Black
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]813,[System.Int32]277))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]264,[System.Int32]42))
$button2.TabIndex = [System.Int32]8
$button2.Text = [System.String]'Cancel'
$button2.UseVisualStyleBackColor = $false
#
#errorProvider1
#
$errorProvider1.ContainerControl = $EditSVCForm
#
#toolTip1
#
$toolTip1.add_Popup($toolTip1_Popup)
#
#accountActionGroupbox
#
$accountActionGroupbox.AutoSize = $true
$accountActionGroupbox.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$accountActionGroupbox.Controls.Add($tableLayoutPanel6)
$accountActionGroupbox.Dock = [System.Windows.Forms.DockStyle]::Top
$accountActionGroupbox.ForeColor = [System.Drawing.SystemColors]::Control
$accountActionGroupbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]711))
$accountActionGroupbox.Name = [System.String]'accountActionGroupbox'
$accountActionGroupbox.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]10,[System.Int32]3,[System.Int32]3))
$accountActionGroupbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1086,[System.Int32]92))
$accountActionGroupbox.TabIndex = [System.Int32]66
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
$tableLayoutPanel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]29))
$tableLayoutPanel6.Name = [System.String]'tableLayoutPanel6'
$tableLayoutPanel6.RowCount = [System.Int32]3
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1080,[System.Int32]60))
$tableLayoutPanel6.TabIndex = [System.Int32]0
#
#validateLinkLabel
#
$validateLinkLabel.AutoSize = $true
$validateLinkLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$validateLinkLabel.LinkColor = [System.Drawing.Color]::White
$validateLinkLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]40))
$validateLinkLabel.Name = [System.String]'validateLinkLabel'
$validateLinkLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]945,[System.Int32]20))
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
$enableLinkLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]0))
$enableLinkLabel.Name = [System.String]'enableLinkLabel'
$enableLinkLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]945,[System.Int32]20))
$enableLinkLabel.TabIndex = [System.Int32]12
$enableLinkLabel.TabStop = $true
$enableLinkLabel.Text = [System.String]'Enable/Disable Account'
$enableLinkLabel.add_LinkClicked($enableLinkLabel_LinkClicked)
#
#validationLabel
#
$validationLabel.AutoSize = $true
$validationLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$validationLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]40))
$validationLabel.Name = [System.String]'validationLabel'
$validationLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]123,[System.Int32]20))
$validationLabel.TabIndex = [System.Int32]11
$validationLabel.Text = [System.String]'Validated: False'
#
#lockedLabel
#
$lockedLabel.AutoSize = $true
$lockedLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$lockedLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]20))
$lockedLabel.Name = [System.String]'lockedLabel'
$lockedLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]123,[System.Int32]20))
$lockedLabel.TabIndex = [System.Int32]2
$lockedLabel.Text = [System.String]'Locked: False'
#
#unlockLinkLabel
#
$unlockLinkLabel.AutoSize = $true
$unlockLinkLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$unlockLinkLabel.Enabled = $false
$unlockLinkLabel.LinkColor = [System.Drawing.Color]::White
$unlockLinkLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]20))
$unlockLinkLabel.Name = [System.String]'unlockLinkLabel'
$unlockLinkLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]945,[System.Int32]20))
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
$enabledLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]123,[System.Int32]20))
$enabledLabel.TabIndex = [System.Int32]4
$enabledLabel.Text = [System.String]'Enabled: True'
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
$savePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]803))
$savePanel.Name = [System.String]'savePanel'
$savePanel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5,[System.Int32]40,[System.Int32]0,[System.Int32]10))
$savePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1086,[System.Int32]105))
$savePanel.TabIndex = [System.Int32]65
$savePanel.Visible = $false
#
#label12
#
$label12.AutoSize = $true
$label12.ForeColor = [System.Drawing.Color]::White
$label12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]526,[System.Int32]45))
$label12.Name = [System.String]'label12'
$label12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]140,[System.Int32]20))
$label12.TabIndex = [System.Int32]13
$label12.Text = [System.String]'Connected to DC: '
#
#DcBox
#
$DcBox.AutoSize = $true
$DcBox.ForeColor = [System.Drawing.Color]::White
$DcBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]526,[System.Int32]75))
$DcBox.Name = [System.String]'DcBox'
$DcBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]74,[System.Int32]20))
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
#EditSVCForm
#
$EditSVCForm.AutoScroll = $true
$EditSVCForm.AutoSize = $true
$EditSVCForm.AutoValidate = [System.Windows.Forms.AutoValidate]::EnableAllowFocusChange
$EditSVCForm.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]79)),([System.Int32]([System.Byte][System.Byte]93)),([System.Int32]([System.Byte][System.Byte]117)))

$EditSVCForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1103,[System.Int32]621))
$EditSVCForm.Controls.Add($savePanel)
$EditSVCForm.Controls.Add($accountActionGroupbox)
$EditSVCForm.Controls.Add($ownerInfoGroupbox)
$EditSVCForm.Controls.Add($accountInfoGroupbox)
$EditSVCForm.Controls.Add($SearchGroupBox)
$EditSVCForm.Controls.Add($label1)
$EditSVCForm.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$EditSVCForm.ForeColor = [System.Drawing.Color]::White
$EditSVCForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$EditSVCForm.Name = [System.String]'EditSVCForm'
$EditSVCForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$EditSVCForm.Text = [System.String]'Edit Service Account Form v1.0'
$EditSVCForm.add_Load($form_Load)
$accountInfoGroupbox.ResumeLayout($false)
$accountInfoGroupbox.PerformLayout()
$tableLayoutPanel5.ResumeLayout($false)
$panel4.ResumeLayout($false)
$panel4.PerformLayout()
$panel3.ResumeLayout($false)
$panel3.PerformLayout()
$panel5.ResumeLayout($false)
$panel5.PerformLayout()
$ownerInfoGroupbox.ResumeLayout($false)
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
$SearchGroupBox.ResumeLayout($false)
$tableLayoutPanel1.ResumeLayout($false)
$tableLayoutPanel1.PerformLayout()
([System.ComponentModel.ISupportInitialize]$resultDataGridView).EndInit()
([System.ComponentModel.ISupportInitialize]$errorProvider1).EndInit()
$accountActionGroupbox.ResumeLayout($false)
$accountActionGroupbox.PerformLayout()
$tableLayoutPanel6.ResumeLayout($false)
$tableLayoutPanel6.PerformLayout()
$savePanel.ResumeLayout($false)
$savePanel.PerformLayout()
$EditSVCForm.ResumeLayout($false)
$EditSVCForm.PerformLayout()
Add-Member -InputObject $EditSVCForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name panel3 -Value $panel3 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name nameTextbox -Value $nameTextbox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name panel4 -Value $panel4 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name CRQTextbox -Value $CRQTextbox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name panel5 -Value $panel5 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name descriptionTextbox -Value $descriptionTextbox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name tableLayoutPanel4 -Value $tableLayoutPanel4 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name panel11 -Value $panel11 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name emailTextbox -Value $emailTextbox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name panel10 -Value $panel10 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name phoneTextbox -Value $phoneTextbox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name tableLayoutPanel3 -Value $tableLayoutPanel3 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name panel9 -Value $panel9 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name officeSymbolTextbox -Value $officeSymbolTextbox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name panel8 -Value $panel8 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name unitCombobox -Value $unitCombobox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name panel7 -Value $panel7 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name baseNameCombobox -Value $baseNameCombobox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name SearchGroupBox -Value $SearchGroupBox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name tableLayoutPanel1 -Value $tableLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name searchButton -Value $searchButton -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name searchStringTextBox -Value $searchStringTextBox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name resultDataGridView -Value $resultDataGridView -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name NameColumn -Value $NameColumn -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name DistinguishedNameColumn -Value $DistinguishedNameColumn -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name SelectColumn -Value $SelectColumn -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name tableLayoutPanel5 -Value $tableLayoutPanel5 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name accountInfoGroupbox -Value $accountInfoGroupbox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name ownerInfoGroupbox -Value $ownerInfoGroupbox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name errorProvider1 -Value $errorProvider1 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name toolTip1 -Value $toolTip1 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name accountActionGroupbox -Value $accountActionGroupbox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name tableLayoutPanel6 -Value $tableLayoutPanel6 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name lockedLabel -Value $lockedLabel -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name unlockLinkLabel -Value $unlockLinkLabel -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name enabledLabel -Value $enabledLabel -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name savePanel -Value $savePanel -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name label12 -Value $label12 -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name DcBox -Value $DcBox -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name cancelButton -Value $cancelButton -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name editButton -Value $editButton -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name validationLabel -Value $validationLabel -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name validateLinkLabel -Value $validateLinkLabel -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name enableLinkLabel -Value $enableLinkLabel -MemberType NoteProperty
Add-Member -InputObject $EditSVCForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
