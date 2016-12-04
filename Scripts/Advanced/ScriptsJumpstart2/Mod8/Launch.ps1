
#Importing module from current location
Import-Module C:\scripts\mod3\DiskInfo.psm1

#Remove module and re-import during testing
Remove-Module Diskinfo;Import-Module C:\scripts\mod3\DiskInfo.psm1

#Putting the module in its proper place
$Path=$env:PSModulePath -split ";"
$Path[0] 

$ModulePath=$Path[0] + "\diskInfo"
$ModulePath

New-Item $ModulePath -ItemType directory
Copy-Item C:\Scripts\mod3\DiskInfo.psm1 -Destination $ModulePath -Force