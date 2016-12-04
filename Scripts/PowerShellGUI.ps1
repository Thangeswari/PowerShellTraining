#Required to load the XAML form and create the PowerShell Variables

./11.LoadDialog.ps1 -XamlPath 'simple.xaml'

 

#EVENT Handler

$button.add_Click({

$label.Content = "WElcome to GUI from PowerShell"

})

 

#Launch the window

$xamGUI.ShowDialog() | out-null
