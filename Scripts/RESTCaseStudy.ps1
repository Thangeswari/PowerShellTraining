#Reading feeds from PowerShell team blog
$feeds = Invoke-RestMethod "http://blogs.msdn.com/b/powershell/atom.aspx"
#Filtering and Formatting results
$feeds | ForEach {
[PSCustomObject]@{
Title=$_.title;
}
} | ConvertTo-Json


#Convert From JSON
$jsonString = $feeds | ForEach {
[PSCustomObject]@{
Title=$_.title;
}
} | ConvertTo-Json

$jsonString | ConvertFrom-Json
