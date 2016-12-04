# Start with a command 
# I like to start in the console
Get-WmiObject -class Win32_logicalDisk -Filter "DeviceID='C:'" -ComputerName 'localhost'
# The new CIM version if you like
Get-CimInstance -ClassName win32_logicalDisk -Filter "DeviceID='C:'" -ComputerName 'localhost'
#Might even dress it up
Get-WmiObject -Class Win32_logicalDisk -Filter "DeviceID='C:'" -ComputerName 'Localhost' | 
    Select PSComputerName, DeviceID
        @{n='Size(GB)';e={$_.size / 1gb -as [int]}},
        @{n='Free(GB)';e={$_.Freespace / 1gb -as [int]}}


