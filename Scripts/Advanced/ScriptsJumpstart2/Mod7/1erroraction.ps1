$ErrorActionPreference

Get-WmiObject win32_bios -ComputerName DC,NotOnline,Client

Get-WmiObject win32_bios -ComputerName DC,NotOnline,Client -EA SilentlyContinue -EV MyError
$MyError

Get-WmiObject win32_bios -ComputerName DC,NotOnline,Client -EA Stop

Get-WmiObject win32_bios -ComputerName DC,NotOnline,Client -EA Inquire

