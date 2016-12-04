#Choose values to replace with variables

[String]$ComputerName='Client'
[String]$Drive='c:'

Get-WmiObject -class Win32_logicalDisk -Filter "DeviceID='$Drive'" -ComputerName $ComputerName

