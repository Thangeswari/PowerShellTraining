Get-Process | select ID,Name | Export-Csv -Path "c:\demo\exceldemo.csv" -NoTypeInformation 
Invoke-Item "c:\demo\exceldemo.csv"