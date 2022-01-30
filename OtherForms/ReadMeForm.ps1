#Event Triggered when form loads
$form_Load = {
	$richTextBox1.LoadFile( (Join-Path $resourcesFolder 'ReadMeForm.rtf') )
}

#Show GUI
. (Join-Path $PSScriptRoot 'ReadMeForm.designer.ps1')
$ReadMeForm.ShowDialog()