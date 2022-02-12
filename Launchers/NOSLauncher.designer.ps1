[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$NOSLauncher = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TableLayoutPanel]$welcomePanel = $null
[System.Windows.Forms.TreeView]$forestSelector = $null
[System.Windows.Forms.Panel]$welcomePanel3 = $null
[System.Windows.Forms.TableLayoutPanel]$backMenuPanel = $null
[System.Windows.Forms.Button]$CreateUser = $null
[System.Windows.Forms.Button]$CreateAdmin = $null
[System.Windows.Forms.Button]$CreateSVC = $null
[System.Windows.Forms.Button]$CreateGroup = $null
[System.Windows.Forms.Button]$CreateComputer = $null
[System.Windows.Forms.Button]$EditAdmin = $null
[System.Windows.Forms.Button]$EditSVC = $null
[System.Windows.Forms.Button]$EditUser = $null
[System.Windows.Forms.StatusStrip]$statusStrip1 = $null
[System.Windows.Forms.ToolStripStatusLabel]$credentialStatusLabel = $null
[System.Windows.Forms.ToolStripDropDownButton]$toolStripSplitButton1 = $null
[System.Windows.Forms.ToolStripMenuItem]$unbindCredentialsToolStripMenuItem = $null
[System.Windows.Forms.ToolStripSeparator]$toolStripSeparator1 = $null
[System.Windows.Forms.ToolStripMenuItem]$bindCredentialsToolStripMenuItem = $null
[System.Windows.Forms.ToolTip]$toolTip1 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.Panel]$welcomePanel2 = $null
[System.Windows.Forms.Panel]$domainInfoBackground = $null
[System.Windows.Forms.TextBox]$domainInfoTextbox = $null
[System.Windows.Forms.Label]$welcomeLabel = $null
[System.Windows.Forms.Button]$helpButton = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
[System.Windows.Forms.TreeNode]$treeNode1 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'ACC.ACCROOT.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode2 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'ACCROOT.DS.AF.SMIL.MIL',[System.Windows.Forms.TreeNode[]]@($treeNode1)))
[System.Windows.Forms.TreeNode]$treeNode3 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'AETC.AETCROOT.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode4 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'AETCROOT.DS.AF.SMIL.MIL',[System.Windows.Forms.TreeNode[]]@($treeNode3)))
[System.Windows.Forms.TreeNode]$treeNode5 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'AFMC.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode6 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'AFSPC-S.AFSCP.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode7 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'AFSPC.DS.AF.SMIL.MIL',[System.Windows.Forms.TreeNode[]]@($treeNode6)))
[System.Windows.Forms.TreeNode]$treeNode8 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'AMCHUB.AMC.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode9 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'AMC.DS.AF.SMIL.MIL',[System.Windows.Forms.TreeNode[]]@($treeNode8)))
[System.Windows.Forms.TreeNode]$treeNode10 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'ANDERSEN.PACAF.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode11 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'DIEGO.PACAF.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode12 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'EIELSON.PACAF.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode13 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'ELMENDORF.PACAF.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode14 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'HICKAM.PACAF.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode15 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'KADENA.PACAF.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode16 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'KUNSAN.PACAF.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode17 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'MISAWA.PACAF.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode18 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'NOSC.PACAF.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode19 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'OSAN.PACAF.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode20 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'YOKOTA.PACAF.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode21 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'PACAF.DS.AF.SMIL.MIL',[System.Windows.Forms.TreeNode[]]@($treeNode10,$treeNode11,$treeNode12,$treeNode13,$treeNode14,$treeNode15,$treeNode16,$treeNode17,$treeNode18,$treeNode19,$treeNode20)))
[System.Windows.Forms.TreeNode]$treeNode22 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'USAFE.USAFEROOT.DS.AF.SMIL.MIL'))
[System.Windows.Forms.TreeNode]$treeNode23 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'USAFEROOT.DS.AF.SMIL.MIL',[System.Windows.Forms.TreeNode[]]@($treeNode22)))
[System.Windows.Forms.TreeNode]$treeNode24 = (New-Object -TypeName System.Windows.Forms.TreeNode -ArgumentList @([System.String]'Home.Domain'))
$welcomePanel = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$forestSelector = (New-Object -TypeName System.Windows.Forms.TreeView)
$welcomePanel3 = (New-Object -TypeName System.Windows.Forms.Panel)
$backMenuPanel = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$helpButton = (New-Object -TypeName System.Windows.Forms.Button)
$CreateUser = (New-Object -TypeName System.Windows.Forms.Button)
$CreateAdmin = (New-Object -TypeName System.Windows.Forms.Button)
$CreateSVC = (New-Object -TypeName System.Windows.Forms.Button)
$CreateGroup = (New-Object -TypeName System.Windows.Forms.Button)
$CreateComputer = (New-Object -TypeName System.Windows.Forms.Button)
$EditAdmin = (New-Object -TypeName System.Windows.Forms.Button)
$EditSVC = (New-Object -TypeName System.Windows.Forms.Button)
$EditUser = (New-Object -TypeName System.Windows.Forms.Button)
$welcomePanel2 = (New-Object -TypeName System.Windows.Forms.Panel)
$domainInfoBackground = (New-Object -TypeName System.Windows.Forms.Panel)
$domainInfoTextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$welcomeLabel = (New-Object -TypeName System.Windows.Forms.Label)
$statusStrip1 = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$toolStripSplitButton1 = (New-Object -TypeName System.Windows.Forms.ToolStripDropDownButton)
$unbindCredentialsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$toolStripSeparator1 = (New-Object -TypeName System.Windows.Forms.ToolStripSeparator)
$bindCredentialsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$credentialStatusLabel = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$toolTip1 = (New-Object -TypeName System.Windows.Forms.ToolTip -ArgumentList @($components))
$welcomePanel.SuspendLayout()
$welcomePanel3.SuspendLayout()
$backMenuPanel.SuspendLayout()
$welcomePanel2.SuspendLayout()
$domainInfoBackground.SuspendLayout()
$statusStrip1.SuspendLayout()
$NOSLauncher.SuspendLayout()
#
#welcomePanel
#
$welcomePanel.BackColor = [System.Drawing.Color]::Black
$welcomePanel.ColumnCount = [System.Int32]2
$welcomePanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$welcomePanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$welcomePanel.Controls.Add($forestSelector,[System.Int32]0,[System.Int32]0)
$welcomePanel.Controls.Add($welcomePanel3,[System.Int32]0,[System.Int32]1)
$welcomePanel.Controls.Add($welcomePanel2,[System.Int32]1,[System.Int32]0)
$welcomePanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$welcomePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$welcomePanel.Name = [System.String]'welcomePanel'
$welcomePanel.RowCount = [System.Int32]2
$welcomePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$welcomePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$welcomePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$welcomePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1151,[System.Int32]639))
$welcomePanel.TabIndex = [System.Int32]1
#
#forestSelector
#
$forestSelector.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]191)),([System.Int32]([System.Byte][System.Byte]192)),([System.Int32]([System.Byte][System.Byte]192)))

$forestSelector.Dock = [System.Windows.Forms.DockStyle]::Fill
$forestSelector.HideSelection = $false
$forestSelector.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$forestSelector.Name = [System.String]'forestSelector'
$treeNode1.Name = [System.String]'ACC.ACCROOT.DS.AF.SMIL.MIL'
$treeNode1.Tag = [System.String]'DOMAIN'
$treeNode1.Text = [System.String]'ACC.ACCROOT.DS.AF.SMIL.MIL'
$treeNode2.Name = [System.String]'ACCROOT.DS.AF.SMIL.MIL'
$treeNode2.Tag = [System.String]'Forest'
$treeNode2.Text = [System.String]'ACCROOT.DS.AF.SMIL.MIL'
$treeNode3.Name = [System.String]'AETC.AETCROOT.DS.AF.SMIL.MIL'
$treeNode3.Tag = [System.String]'DOMAIN'
$treeNode3.Text = [System.String]'AETC.AETCROOT.DS.AF.SMIL.MIL'
$treeNode4.Name = [System.String]'AETCROOT.DS.AF.SMIL.MIL'
$treeNode4.Tag = [System.String]'Forest'
$treeNode4.Text = [System.String]'AETCROOT.DS.AF.SMIL.MIL'
$treeNode5.Name = [System.String]'AFMC.DS.AF.SMIL.MIL'
$treeNode5.Tag = [System.String]'FLATDOMAIN'
$treeNode5.Text = [System.String]'AFMC.DS.AF.SMIL.MIL'
$treeNode6.Name = [System.String]'AFSPC-S.AFSCP.DS.AF.SMIL.MIL'
$treeNode6.Tag = [System.String]'DOMAIN'
$treeNode6.Text = [System.String]'AFSPC-S.AFSCP.DS.AF.SMIL.MIL'
$treeNode7.Name = [System.String]'AFSPC.DS.AF.SMIL.MIL'
$treeNode7.Tag = [System.String]'Forest'
$treeNode7.Text = [System.String]'AFSPC.DS.AF.SMIL.MIL'
$treeNode8.ImageIndex = [System.Int32]1
$treeNode8.Name = [System.String]'AMCHUB.AMC.DS.AF.SMIL.MIL'
$treeNode8.Tag = [System.String]'DOMAIN'
$treeNode8.Text = [System.String]'AMCHUB.AMC.DS.AF.SMIL.MIL'
$treeNode8.ToolTipText = [System.String]'"AM-CHUB"'
$treeNode9.ImageIndex = [System.Int32]1
$treeNode9.Name = [System.String]'AMC.DS.AF.SMIL.MIL'
$treeNode9.Tag = [System.String]'Forest'
$treeNode9.Text = [System.String]'AMC.DS.AF.SMIL.MIL'
$treeNode10.Name = [System.String]'ANDERSEN.PACAF.DS.AF.SMIL.MIL'
$treeNode10.Tag = [System.String]'DOMAIN'
$treeNode10.Text = [System.String]'ANDERSEN.PACAF.DS.AF.SMIL.MIL'
$treeNode11.Name = [System.String]'DIEGO.PACAF.DS.AF.SMIL.MIL'
$treeNode11.Tag = [System.String]'DOMAIN'
$treeNode11.Text = [System.String]'DIEGO.PACAF.DS.AF.SMIL.MIL'
$treeNode12.Name = [System.String]'EIELSON.PACAF.DS.AF.SMIL.MIL'
$treeNode12.Tag = [System.String]'DOMAIN'
$treeNode12.Text = [System.String]'EIELSON.PACAF.DS.AF.SMIL.MIL'
$treeNode13.Name = [System.String]'ELMENDORF.PACAF.DS.AF.SMIL.MIL'
$treeNode13.Tag = [System.String]'DOMAIN'
$treeNode13.Text = [System.String]'ELMENDORF.PACAF.DS.AF.SMIL.MIL'
$treeNode14.Name = [System.String]'HICKAM.PACAF.DS.AF.SMIL.MIL'
$treeNode14.Tag = [System.String]'DOMAIN'
$treeNode14.Text = [System.String]'HICKAM.PACAF.DS.AF.SMIL.MIL'
$treeNode15.Name = [System.String]'KADENA.PACAF.DS.AF.SMIL.MIL'
$treeNode15.Tag = [System.String]'DOMAIN'
$treeNode15.Text = [System.String]'KADENA.PACAF.DS.AF.SMIL.MIL'
$treeNode16.Name = [System.String]'KUNSAN.PACAF.DS.AF.SMIL.MIL'
$treeNode16.Tag = [System.String]'DOMAIN'
$treeNode16.Text = [System.String]'KUNSAN.PACAF.DS.AF.SMIL.MIL'
$treeNode17.Name = [System.String]'MISAWA.PACAF.DS.AF.SMIL.MIL'
$treeNode17.Tag = [System.String]'DOMAIN'
$treeNode17.Text = [System.String]'MISAWA.PACAF.DS.AF.SMIL.MIL'
$treeNode18.Name = [System.String]'NOSC.PACAF.DS.AF.SMIL.MIL'
$treeNode18.Tag = [System.String]'DOMAIN'
$treeNode18.Text = [System.String]'NOSC.PACAF.DS.AF.SMIL.MIL'
$treeNode19.Name = [System.String]'OSAN.PACAF.DS.AF.SMIL.MIL'
$treeNode19.Tag = [System.String]'DOMAIN'
$treeNode19.Text = [System.String]'OSAN.PACAF.DS.AF.SMIL.MIL'
$treeNode20.Name = [System.String]'YOKOTA.PACAF.DS.AF.SMIL.MIL'
$treeNode20.Tag = [System.String]'DOMAIN'
$treeNode20.Text = [System.String]'YOKOTA.PACAF.DS.AF.SMIL.MIL'
$treeNode21.Name = [System.String]'PACAF.DS.AF.SMIL.MIL'
$treeNode21.Tag = [System.String]'Forest'
$treeNode21.Text = [System.String]'PACAF.DS.AF.SMIL.MIL'
$treeNode22.Name = [System.String]'USAFE.USAFEROOT.DS.AF.SMIL.MIL'
$treeNode22.Tag = [System.String]'DOMAIN'
$treeNode22.Text = [System.String]'USAFE.USAFEROOT.DS.AF.SMIL.MIL'
$treeNode23.Name = [System.String]'USAFEROOT.DS.AF.SMIL.MIL'
$treeNode23.Tag = [System.String]'Forest'
$treeNode23.Text = [System.String]'USAFEROOT.DS.AF.SMIL.MIL'
$treeNode24.Name = [System.String]'Home.Domain'
$treeNode24.Tag = [System.String]'FLATDOMAIN'
$treeNode24.Text = [System.String]'Home.Domain'
$forestSelector.Nodes.AddRange([System.Windows.Forms.TreeNode[]]@($treeNode2,$treeNode4,$treeNode5,$treeNode7,$treeNode9,$treeNode21,$treeNode23,$treeNode24))
$forestSelector.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]569,[System.Int32]313))
$forestSelector.TabIndex = [System.Int32]1
$forestSelector.add_BeforeSelect($forestSelector_BeforeSelect)
$forestSelector.add_AfterSelect($forestSelector_AfterSelect)
#
#welcomePanel3
#
$welcomePanel3.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]79)),([System.Int32]([System.Byte][System.Byte]93)),([System.Int32]([System.Byte][System.Byte]117)))

$welcomePanel3.Controls.Add($backMenuPanel)
$welcomePanel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$welcomePanel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]322))
$welcomePanel3.Name = [System.String]'welcomePanel3'
$welcomePanel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]569,[System.Int32]314))
$welcomePanel3.TabIndex = [System.Int32]2
#
#backMenuPanel
#
$backMenuPanel.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]79)),([System.Int32]([System.Byte][System.Byte]93)),([System.Int32]([System.Byte][System.Byte]117)))

$backMenuPanel.ColumnCount = [System.Int32]2
$backMenuPanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$backMenuPanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$backMenuPanel.Controls.Add($helpButton,[System.Int32]1,[System.Int32]4)
$backMenuPanel.Controls.Add($CreateUser,[System.Int32]0,[System.Int32]0)
$backMenuPanel.Controls.Add($CreateAdmin,[System.Int32]0,[System.Int32]1)
$backMenuPanel.Controls.Add($CreateSVC,[System.Int32]0,[System.Int32]2)
$backMenuPanel.Controls.Add($CreateGroup,[System.Int32]0,[System.Int32]3)
$backMenuPanel.Controls.Add($CreateComputer,[System.Int32]0,[System.Int32]4)
$backMenuPanel.Controls.Add($EditAdmin,[System.Int32]1,[System.Int32]1)
$backMenuPanel.Controls.Add($EditSVC,[System.Int32]1,[System.Int32]2)
$backMenuPanel.Controls.Add($EditUser,[System.Int32]1,[System.Int32]0)
$backMenuPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$backMenuPanel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$backMenuPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$backMenuPanel.Name = [System.String]'backMenuPanel'
$backMenuPanel.RowCount = [System.Int32]5
$backMenuPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$backMenuPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$backMenuPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$backMenuPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$backMenuPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$backMenuPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$backMenuPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$backMenuPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$backMenuPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$backMenuPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$backMenuPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]569,[System.Int32]314))
$backMenuPanel.TabIndex = [System.Int32]1
#
#helpButton
#
$helpButton.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$helpButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$helpButton.Enabled = $false
$helpButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$helpButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287,[System.Int32]251))
$helpButton.Name = [System.String]'helpButton'
$helpButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]279,[System.Int32]60))
$helpButton.TabIndex = [System.Int32]10
$helpButton.Text = [System.String]'Show Help'
$helpButton.UseVisualStyleBackColor = $false
$helpButton.add_Click($HelpButton_Click)
#
#CreateUser
#
$CreateUser.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$CreateUser.Dock = [System.Windows.Forms.DockStyle]::Fill
$CreateUser.Enabled = $false
$CreateUser.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$CreateUser.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$CreateUser.Name = [System.String]'CreateUser'
$CreateUser.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]278,[System.Int32]56))
$CreateUser.TabIndex = [System.Int32]0
$CreateUser.Text = [System.String]'Create User'
$CreateUser.UseVisualStyleBackColor = $false
$CreateUser.add_Click($createUser_Click)
#
#CreateAdmin
#
$CreateAdmin.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$CreateAdmin.Dock = [System.Windows.Forms.DockStyle]::Fill
$CreateAdmin.Enabled = $false
$CreateAdmin.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$CreateAdmin.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]65))
$CreateAdmin.Name = [System.String]'CreateAdmin'
$CreateAdmin.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]278,[System.Int32]56))
$CreateAdmin.TabIndex = [System.Int32]1
$CreateAdmin.Text = [System.String]'Create Admin'
$CreateAdmin.UseVisualStyleBackColor = $false
$CreateAdmin.add_Click($createAdmin_Click)
#
#CreateSVC
#
$CreateSVC.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$CreateSVC.Dock = [System.Windows.Forms.DockStyle]::Fill
$CreateSVC.Enabled = $false
$CreateSVC.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$CreateSVC.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]127))
$CreateSVC.Name = [System.String]'CreateSVC'
$CreateSVC.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]278,[System.Int32]56))
$CreateSVC.TabIndex = [System.Int32]2
$CreateSVC.Text = [System.String]'Create SVC'
$CreateSVC.UseVisualStyleBackColor = $false
$CreateSVC.add_Click($createSVC_Click)
#
#CreateGroup
#
$CreateGroup.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$CreateGroup.Dock = [System.Windows.Forms.DockStyle]::Fill
$CreateGroup.Enabled = $false
$CreateGroup.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$CreateGroup.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]189))
$CreateGroup.Name = [System.String]'CreateGroup'
$CreateGroup.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]278,[System.Int32]56))
$CreateGroup.TabIndex = [System.Int32]3
$CreateGroup.Text = [System.String]'Create Group'
$CreateGroup.UseVisualStyleBackColor = $false
$CreateGroup.add_Click($createGroup_Click)
#
#CreateComputer
#
$CreateComputer.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$CreateComputer.Dock = [System.Windows.Forms.DockStyle]::Fill
$CreateComputer.Enabled = $false
$CreateComputer.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$CreateComputer.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]251))
$CreateComputer.Name = [System.String]'CreateComputer'
$CreateComputer.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]278,[System.Int32]60))
$CreateComputer.TabIndex = [System.Int32]4
$CreateComputer.Text = [System.String]'Create Computer'
$CreateComputer.UseVisualStyleBackColor = $false
$CreateComputer.add_Click($createComputer_Click)
#
#EditAdmin
#
$EditAdmin.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$EditAdmin.Dock = [System.Windows.Forms.DockStyle]::Fill
$EditAdmin.Enabled = $false
$EditAdmin.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$EditAdmin.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287,[System.Int32]65))
$EditAdmin.Name = [System.String]'EditAdmin'
$EditAdmin.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]279,[System.Int32]56))
$EditAdmin.TabIndex = [System.Int32]6
$EditAdmin.Text = [System.String]'Edit Admin'
$EditAdmin.UseVisualStyleBackColor = $false
$EditAdmin.add_Click($editAdmin_Click)
#
#EditSVC
#
$EditSVC.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$EditSVC.Dock = [System.Windows.Forms.DockStyle]::Fill
$EditSVC.Enabled = $false
$EditSVC.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$EditSVC.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287,[System.Int32]127))
$EditSVC.Name = [System.String]'EditSVC'
$EditSVC.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]279,[System.Int32]56))
$EditSVC.TabIndex = [System.Int32]7
$EditSVC.Text = [System.String]'Edit SVC'
$EditSVC.UseVisualStyleBackColor = $false
$EditSVC.add_Click($editSVC_Click)
#
#EditUser
#
$EditUser.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]239)),([System.Int32]([System.Byte][System.Byte]131)),([System.Int32]([System.Byte][System.Byte]84)))

$EditUser.Dock = [System.Windows.Forms.DockStyle]::Fill
$EditUser.Enabled = $false
$EditUser.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$EditUser.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287,[System.Int32]3))
$EditUser.Name = [System.String]'EditUser'
$EditUser.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]279,[System.Int32]56))
$EditUser.TabIndex = [System.Int32]9
$EditUser.Text = [System.String]'Edit User'
$EditUser.UseVisualStyleBackColor = $false
$EditUser.add_Click($editUser_Click)
#
#welcomePanel2
#
$welcomePanel2.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]79)),([System.Int32]([System.Byte][System.Byte]93)),([System.Int32]([System.Byte][System.Byte]117)))

$welcomePanel2.Controls.Add($domainInfoBackground)
$welcomePanel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$welcomePanel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]578,[System.Int32]3))
$welcomePanel2.Name = [System.String]'welcomePanel2'
$welcomePanel.SetRowSpan($welcomePanel2,[System.Int32]2)
$welcomePanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]570,[System.Int32]633))
$welcomePanel2.TabIndex = [System.Int32]1
#
#domainInfoBackground
#
$domainInfoBackground.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]79)),([System.Int32]([System.Byte][System.Byte]93)),([System.Int32]([System.Byte][System.Byte]117)))

$domainInfoBackground.Controls.Add($domainInfoTextbox)
$domainInfoBackground.Controls.Add($welcomeLabel)
$domainInfoBackground.Dock = [System.Windows.Forms.DockStyle]::Fill
$domainInfoBackground.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$domainInfoBackground.Name = [System.String]'domainInfoBackground'
$domainInfoBackground.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]570,[System.Int32]633))
$domainInfoBackground.TabIndex = [System.Int32]1
#
#domainInfoTextbox
#
$domainInfoTextbox.Dock = [System.Windows.Forms.DockStyle]::Fill
$domainInfoTextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]40))
$domainInfoTextbox.Multiline = $true
$domainInfoTextbox.Name = [System.String]'domainInfoTextbox'
$domainInfoTextbox.ReadOnly = $true
$domainInfoTextbox.ScrollBars = [System.Windows.Forms.ScrollBars]::Vertical
$domainInfoTextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]570,[System.Int32]593))
$domainInfoTextbox.TabIndex = [System.Int32]2
#
#welcomeLabel
#
$welcomeLabel.Dock = [System.Windows.Forms.DockStyle]::Top
$welcomeLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]14,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$welcomeLabel.ForeColor = [System.Drawing.Color]::White
$welcomeLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$welcomeLabel.Name = [System.String]'welcomeLabel'
$welcomeLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]570,[System.Int32]40))
$welcomeLabel.TabIndex = [System.Int32]1
$welcomeLabel.Text = [System.String]'Domain/Forest Information'
$welcomeLabel.TextAlign = [System.Drawing.ContentAlignment]::TopCenter
#
#statusStrip1
#
$statusStrip1.ImageScalingSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]24,[System.Int32]24))
$statusStrip1.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($toolStripSplitButton1,$credentialStatusLabel))
$statusStrip1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]639))
$statusStrip1.Name = [System.String]'statusStrip1'
$statusStrip1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1151,[System.Int32]26))
$statusStrip1.TabIndex = [System.Int32]2
$statusStrip1.Text = [System.String]'statusStrip1'
#
#toolStripSplitButton1
#
$toolStripSplitButton1.DisplayStyle = [System.Windows.Forms.ToolStripItemDisplayStyle]::Text
$toolStripSplitButton1.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($unbindCredentialsToolStripMenuItem,$toolStripSeparator1,$bindCredentialsToolStripMenuItem))
$toolStripSplitButton1.Image = ([System.Drawing.Image]$resources.'toolStripSplitButton1.Image')
$toolStripSplitButton1.ImageTransparentColor = [System.Drawing.Color]::Magenta
$toolStripSplitButton1.Name = [System.String]'toolStripSplitButton1'
$toolStripSplitButton1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]147,[System.Int32]24))
$toolStripSplitButton1.Text = [System.String]'Credential Options'
#
#unbindCredentialsToolStripMenuItem
#
$unbindCredentialsToolStripMenuItem.Name = [System.String]'unbindCredentialsToolStripMenuItem'
$unbindCredentialsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]218,[System.Int32]26))
$unbindCredentialsToolStripMenuItem.Text = [System.String]'Unbind Credentials'
$unbindCredentialsToolStripMenuItem.add_Click($unbindCredentials_Click)
#
#toolStripSeparator1
#
$toolStripSeparator1.Name = [System.String]'toolStripSeparator1'
$toolStripSeparator1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]215,[System.Int32]6))
#
#bindCredentialsToolStripMenuItem
#
$bindCredentialsToolStripMenuItem.Name = [System.String]'bindCredentialsToolStripMenuItem'
$bindCredentialsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]218,[System.Int32]26))
$bindCredentialsToolStripMenuItem.Text = [System.String]'Bind Credentials'
$bindCredentialsToolStripMenuItem.add_Click($bindCredentials_Click)
#
#credentialStatusLabel
#
$credentialStatusLabel.DisplayStyle = [System.Windows.Forms.ToolStripItemDisplayStyle]::Text
$credentialStatusLabel.Name = [System.String]'credentialStatusLabel'
$credentialStatusLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]20))
$credentialStatusLabel.Text = [System.String]'Credentials: '
#
#NOSLauncher
#
$NOSLauncher.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1151,[System.Int32]665))
$NOSLauncher.Controls.Add($welcomePanel)
$NOSLauncher.Controls.Add($statusStrip1)
$NOSLauncher.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$NOSLauncher.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$NOSLauncher.Name = [System.String]'NOSLauncher'
$NOSLauncher.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$NOSLauncher.Text = [System.String]'NOS Launcher v1.0'
$NOSLauncher.add_Load($form_Load)
$welcomePanel.ResumeLayout($false)
$welcomePanel3.ResumeLayout($false)
$backMenuPanel.ResumeLayout($false)
$welcomePanel2.ResumeLayout($false)
$domainInfoBackground.ResumeLayout($false)
$domainInfoBackground.PerformLayout()
$statusStrip1.ResumeLayout($false)
$statusStrip1.PerformLayout()
$NOSLauncher.ResumeLayout($false)
$NOSLauncher.PerformLayout()
Add-Member -InputObject $NOSLauncher -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name welcomePanel -Value $welcomePanel -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name forestSelector -Value $forestSelector -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name welcomePanel3 -Value $welcomePanel3 -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name backMenuPanel -Value $backMenuPanel -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name CreateUser -Value $CreateUser -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name CreateAdmin -Value $CreateAdmin -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name CreateSVC -Value $CreateSVC -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name CreateGroup -Value $CreateGroup -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name CreateComputer -Value $CreateComputer -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name EditAdmin -Value $EditAdmin -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name EditSVC -Value $EditSVC -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name EditUser -Value $EditUser -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name statusStrip1 -Value $statusStrip1 -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name credentialStatusLabel -Value $credentialStatusLabel -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name toolStripSplitButton1 -Value $toolStripSplitButton1 -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name unbindCredentialsToolStripMenuItem -Value $unbindCredentialsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name toolStripSeparator1 -Value $toolStripSeparator1 -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name bindCredentialsToolStripMenuItem -Value $bindCredentialsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name toolTip1 -Value $toolTip1 -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name welcomePanel2 -Value $welcomePanel2 -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name domainInfoBackground -Value $domainInfoBackground -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name domainInfoTextbox -Value $domainInfoTextbox -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name welcomeLabel -Value $welcomeLabel -MemberType NoteProperty
Add-Member -InputObject $NOSLauncher -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
