[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ReadMeForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.RichTextBox]$richTextBox1 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$richTextBox1 = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$ReadMeForm.SuspendLayout()
#
#richTextBox1
#
$richTextBox1.Dock = [System.Windows.Forms.DockStyle]::Fill
$richTextBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$richTextBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$richTextBox1.Name = [System.String]'richTextBox1'
$richTextBox1.ReadOnly = $true
$richTextBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1184,[System.Int32]761))
$richTextBox1.TabIndex = [System.Int32]0
$richTextBox1.Text = [System.String]''
#
#ReadMeForm
#
$ReadMeForm.AutoSize = $true
$ReadMeForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1184,[System.Int32]761))
$ReadMeForm.Controls.Add($richTextBox1)
$ReadMeForm.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ReadMeForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ReadMeForm.Name = [System.String]'ReadMeForm'
$ReadMeForm.Text = [System.String]'Adminsitrative Forms Help'
$ReadMeForm.add_Load($form_Load)
$ReadMeForm.ResumeLayout($false)
Add-Member -InputObject $ReadMeForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ReadMeForm -Name richTextBox1 -Value $richTextBox1 -MemberType NoteProperty
Add-Member -InputObject $ReadMeForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
