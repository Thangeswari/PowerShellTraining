#1. GridView
Get-ChildItem $HOME | Out-GridView
#2. HTML
Get-ChildItem $HOME | ConvertTo-Html -Title "Files in Your Path" -Property Name | Out-File "FilesInHome.html" 

