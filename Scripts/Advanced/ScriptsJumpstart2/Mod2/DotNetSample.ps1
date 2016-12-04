$dateDotNet = New-Object -TypeName System.DateTime -ArgumentList @(2016,7,25,0,0,0) 
$message = "Welcome to your Home on " + $dateDotNet.ToLongDateString()
$message

$today = [System.DateTime]::Today
Write-Host $today.ToLongDateString()
Write-Host $today.ToString("MM/dd/yy")
Write-Host $today.AddDays(100).ToString("MMMM d")

$ie = New-Object -ComObject "InternetExplorer.Application"
$ie.Navigate("http://mva.microsoft.com")
$ie.Visible = $true