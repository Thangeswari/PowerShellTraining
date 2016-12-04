Add-Type –assemblyName PresentationFramework
Add-Type –assemblyName PresentationCore
Add-Type –assemblyName WindowsBase

$window = New-Object Windows.Window
$window.Title = $window.Content = “Welcome.  Check out PowerShell and WPF Together.”
$window.SizeToContent = “WidthAndHeight”
$null = $window.ShowDialog()