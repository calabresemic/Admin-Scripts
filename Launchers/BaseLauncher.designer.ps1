[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$BaseLauncher = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.FlowLayoutPanel]$flowLayoutPanel1 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Button]$UserCreateButton = $null
[System.Windows.Forms.Button]$AdminCreateButton = $null
[System.Windows.Forms.Button]$GroupCreateButton = $null
[System.Windows.Forms.Button]$ComputerCreateButton = $null
[System.Windows.Forms.Button]$UserEditButton = $null
[System.Windows.Forms.Button]$AdminEditButton = $null
[System.Windows.Forms.Button]$SVCEditButton = $null
[System.Windows.Forms.ComboBox]$baseSelectorCombobox = $null
[System.Windows.Forms.Button]$reportButton = $null
[System.Windows.Forms.Button]$helpButton = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$flowLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.FlowLayoutPanel)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$baseSelectorCombobox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$UserCreateButton = (New-Object -TypeName System.Windows.Forms.Button)
$UserEditButton = (New-Object -TypeName System.Windows.Forms.Button)
$GroupCreateButton = (New-Object -TypeName System.Windows.Forms.Button)
$ComputerCreateButton = (New-Object -TypeName System.Windows.Forms.Button)
$AdminCreateButton = (New-Object -TypeName System.Windows.Forms.Button)
$AdminEditButton = (New-Object -TypeName System.Windows.Forms.Button)
$SVCEditButton = (New-Object -TypeName System.Windows.Forms.Button)
$reportButton = (New-Object -TypeName System.Windows.Forms.Button)
$helpButton = (New-Object -TypeName System.Windows.Forms.Button)
$flowLayoutPanel1.SuspendLayout()
$BaseLauncher.SuspendLayout()
#
#flowLayoutPanel1
#
$flowLayoutPanel1.AutoSize = $true
$flowLayoutPanel1.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$flowLayoutPanel1.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]79)),([System.Int32]([System.Byte][System.Byte]93)),([System.Int32]([System.Byte][System.Byte]117)))

$flowLayoutPanel1.Controls.Add($label1)
$flowLayoutPanel1.Controls.Add($baseSelectorCombobox)
$flowLayoutPanel1.Controls.Add($UserCreateButton)
$flowLayoutPanel1.Controls.Add($UserEditButton)
$flowLayoutPanel1.Controls.Add($GroupCreateButton)
$flowLayoutPanel1.Controls.Add($ComputerCreateButton)
$flowLayoutPanel1.Controls.Add($AdminCreateButton)
$flowLayoutPanel1.Controls.Add($AdminEditButton)
$flowLayoutPanel1.Controls.Add($SVCEditButton)
$flowLayoutPanel1.Controls.Add($reportButton)
$flowLayoutPanel1.Controls.Add($helpButton)
$flowLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$flowLayoutPanel1.FlowDirection = [System.Windows.Forms.FlowDirection]::TopDown
$flowLayoutPanel1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$flowLayoutPanel1.ForeColor = [System.Drawing.Color]::White
$flowLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$flowLayoutPanel1.Name = [System.String]'flowLayoutPanel1'
$flowLayoutPanel1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]7))
$flowLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]353,[System.Int32]604))
$flowLayoutPanel1.TabIndex = [System.Int32]0
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]7))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]58))
$label1.TabIndex = [System.Int32]0
$label1.Text = [System.String]'Press a button below to launch a form.'
#
#baseSelectorCombobox
#
$baseSelectorCombobox.Dock = [System.Windows.Forms.DockStyle]::Top
$baseSelectorCombobox.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$baseSelectorCombobox.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$baseSelectorCombobox.FormattingEnabled = $true
$baseSelectorCombobox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]68))
$baseSelectorCombobox.Name = [System.String]'baseSelectorCombobox'
$baseSelectorCombobox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]37))
$baseSelectorCombobox.TabIndex = [System.Int32]9
$baseSelectorCombobox.Visible = $false
$baseSelectorCombobox.add_SelectedIndexChanged($baseSelectorCombobox_SelectedIndexChanged)
#
#UserCreateButton
#
$UserCreateButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$UserCreateButton.Dock = [System.Windows.Forms.DockStyle]::Top
$UserCreateButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$UserCreateButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$UserCreateButton.ForeColor = [System.Drawing.Color]::Black
$UserCreateButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]98))
$UserCreateButton.Name = [System.String]'UserCreateButton'
$UserCreateButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]45))
$UserCreateButton.TabIndex = [System.Int32]1
$UserCreateButton.Text = [System.String]'Create User Account'
$UserCreateButton.UseVisualStyleBackColor = $false
$UserCreateButton.add_Click($createUser_Click)
#
#UserEditButton
#
$UserEditButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$UserEditButton.Dock = [System.Windows.Forms.DockStyle]::Top
$UserEditButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$UserEditButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$UserEditButton.ForeColor = [System.Drawing.Color]::Black
$UserEditButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]149))
$UserEditButton.Name = [System.String]'UserEditButton'
$UserEditButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]45))
$UserEditButton.TabIndex = [System.Int32]5
$UserEditButton.Text = [System.String]'Edit User Account'
$UserEditButton.UseVisualStyleBackColor = $false
$UserEditButton.add_Click($editUser_Click)
#
#GroupCreateButton
#
$GroupCreateButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$GroupCreateButton.Dock = [System.Windows.Forms.DockStyle]::Top
$GroupCreateButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$GroupCreateButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$GroupCreateButton.ForeColor = [System.Drawing.Color]::Black
$GroupCreateButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]200))
$GroupCreateButton.Name = [System.String]'GroupCreateButton'
$GroupCreateButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]45))
$GroupCreateButton.TabIndex = [System.Int32]3
$GroupCreateButton.Text = [System.String]'Create Security Group'
$GroupCreateButton.UseVisualStyleBackColor = $false
$GroupCreateButton.add_Click($createGroup_Click)
#
#ComputerCreateButton
#
$ComputerCreateButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$ComputerCreateButton.Dock = [System.Windows.Forms.DockStyle]::Top
$ComputerCreateButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$ComputerCreateButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ComputerCreateButton.ForeColor = [System.Drawing.Color]::Black
$ComputerCreateButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]251))
$ComputerCreateButton.Name = [System.String]'ComputerCreateButton'
$ComputerCreateButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]45))
$ComputerCreateButton.TabIndex = [System.Int32]4
$ComputerCreateButton.Text = [System.String]'Create Computer'
$ComputerCreateButton.UseVisualStyleBackColor = $false
$ComputerCreateButton.add_Click($createComputer_Click)
#
#AdminCreateButton
#
$AdminCreateButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$AdminCreateButton.Dock = [System.Windows.Forms.DockStyle]::Top
$AdminCreateButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$AdminCreateButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$AdminCreateButton.ForeColor = [System.Drawing.Color]::Black
$AdminCreateButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]302))
$AdminCreateButton.Name = [System.String]'AdminCreateButton'
$AdminCreateButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]45))
$AdminCreateButton.TabIndex = [System.Int32]2
$AdminCreateButton.Text = [System.String]'Create Admin Account'
$AdminCreateButton.UseVisualStyleBackColor = $false
$AdminCreateButton.Visible = $false
$AdminCreateButton.add_Click($createAdmin_Click)
#
#AdminEditButton
#
$AdminEditButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$AdminEditButton.Dock = [System.Windows.Forms.DockStyle]::Top
$AdminEditButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$AdminEditButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$AdminEditButton.ForeColor = [System.Drawing.Color]::Black
$AdminEditButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]353))
$AdminEditButton.Name = [System.String]'AdminEditButton'
$AdminEditButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]45))
$AdminEditButton.TabIndex = [System.Int32]6
$AdminEditButton.Text = [System.String]'Edit Admin Account'
$AdminEditButton.UseVisualStyleBackColor = $false
$AdminEditButton.Visible = $false
$AdminEditButton.add_Click($editAdmin_Click)
#
#SVCEditButton
#
$SVCEditButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$SVCEditButton.Dock = [System.Windows.Forms.DockStyle]::Top
$SVCEditButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$SVCEditButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$SVCEditButton.ForeColor = [System.Drawing.Color]::Black
$SVCEditButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]404))
$SVCEditButton.Name = [System.String]'SVCEditButton'
$SVCEditButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]45))
$SVCEditButton.TabIndex = [System.Int32]7
$SVCEditButton.Text = [System.String]'Edit Service Account'
$SVCEditButton.UseVisualStyleBackColor = $false
$SVCEditButton.Visible = $false
$SVCEditButton.add_Click($editSVC_Click)
#
#reportButton
#
$reportButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$reportButton.Dock = [System.Windows.Forms.DockStyle]::Top
$reportButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$reportButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$reportButton.ForeColor = [System.Drawing.Color]::Black
$reportButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]455))
$reportButton.Name = [System.String]'reportButton'
$reportButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]45))
$reportButton.TabIndex = [System.Int32]11
$reportButton.Text = [System.String]'Show Non-Compliant Objects'
$reportButton.UseVisualStyleBackColor = $false
$reportButton.add_Click($reportButton_Click)
#
#helpButton
#
$helpButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$helpButton.Dock = [System.Windows.Forms.DockStyle]::Top
$helpButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$helpButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$helpButton.ForeColor = [System.Drawing.Color]::Black
$helpButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]506))
$helpButton.Name = [System.String]'helpButton'
$helpButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]45))
$helpButton.TabIndex = [System.Int32]12
$helpButton.Text = [System.String]'Show Help'
$helpButton.UseVisualStyleBackColor = $false
$helpButton.add_Click($helpButton_Click)
#
#BaseLauncher
#
$BaseLauncher.AutoSize = $true
$BaseLauncher.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$BaseLauncher.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]353,[System.Int32]604))
$BaseLauncher.Controls.Add($flowLayoutPanel1)
$BaseLauncher.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$BaseLauncher.Name = [System.String]'BaseLauncher'
$BaseLauncher.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$BaseLauncher.Text = [System.String]'Admin Script Launcher v1.0'
$BaseLauncher.add_Load($form_Load)
$flowLayoutPanel1.ResumeLayout($false)
$flowLayoutPanel1.PerformLayout()
$BaseLauncher.ResumeLayout($false)
$BaseLauncher.PerformLayout()
Add-Member -InputObject $BaseLauncher -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name flowLayoutPanel1 -Value $flowLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name UserCreateButton -Value $UserCreateButton -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name AdminCreateButton -Value $AdminCreateButton -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name GroupCreateButton -Value $GroupCreateButton -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name ComputerCreateButton -Value $ComputerCreateButton -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name UserEditButton -Value $UserEditButton -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name AdminEditButton -Value $AdminEditButton -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name SVCEditButton -Value $SVCEditButton -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name baseSelectorCombobox -Value $baseSelectorCombobox -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name reportButton -Value $reportButton -MemberType NoteProperty
Add-Member -InputObject $BaseLauncher -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
