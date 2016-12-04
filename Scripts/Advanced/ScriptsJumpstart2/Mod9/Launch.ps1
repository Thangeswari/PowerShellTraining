
#Importing module from current location
Import-Module C:\scripts\mod9\MyTools.psm1

# Listing the commands
Get-Command -Module MyTools

#Remove module and re-import during testing
Remove-Module MyTools;Import-Module C:\scripts\mo93\DiskInfo.psm1

#Putting the module in its proper place
$Path=$env:PSModulePath -split ";"
$Path[0] 

$ModulePath=$Path[0] + "\MyTools"
$ModulePath

New-Item $ModulePath -ItemType Directory
Copy-Item C:\Scripts\mod9\MyTools.psm1 -Destination $ModulePath -Force