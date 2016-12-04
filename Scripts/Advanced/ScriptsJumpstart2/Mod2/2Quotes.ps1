#Quotation Markes

#Double quotes resolve the variable
$i="PowerShell"

"This is the variable $i, and $i Rocks!"
'This is the variable $i, and $i Rocks!'
"This is the variable `$i, and $i Rocks!"

$computerName="Client"
Get-service -name bits -ComputerName "$ComputerName" | 
    Select MachineName, Name, Status