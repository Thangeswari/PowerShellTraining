[Reflection.Assembly]::LoadWithPartialName(“System.Windows.Forms”)
 $windows= new-object Windows.Forms.Form
 $windows.text ="ABC"
 $button=new-object Windows.Forms.Button
 $button.text = "Click"
 $windows.Controls.Add($button)
 $windows.ShowDialog()
