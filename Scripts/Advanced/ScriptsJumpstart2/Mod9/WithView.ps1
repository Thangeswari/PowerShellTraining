<#
.Synopsis
This function will gather basic computer information
.Description
This function will gather basic computer information
From multiple computers and provide error logging information
.Parameter ComputerName
This parameter supports multiple computer names to gather
Data from. This parameter is Mandatory
.Example
Getting information from the local computer
Get-CompInfo -ComputerName .
.Example
Getting information form remote computers
Get-CompInfo -ComputerName comp1, comp2
.Example
Getting information form computers in a text file
Get-Content c:\servers.txt | Get-CompInfo
#>
Function Get-CompInfo{
    [CmdletBinding()]
    Param(
        #Want to support multiple computers
        [Parameter(Mandatory=$True,
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true)]
        [String[]]$ComputerName,
        
        #Switch to turn on Error logging
        [Switch]$ErrorLog,
        [String]$LogFile = 'c:\errorlog.txt'
    )
    Begin{}
    Process{
        foreach($Computer in $ComputerName){
            $os=Get-Wmiobject -ComputerName $Computer -Class Win32_OperatingSystem
            $Disk=Get-WmiObject -ComputerName $Computer -class Win32_LogicalDisk -filter "DeviceID='c:'"
            
            $Prop=[ordered]@{ #With or without [ordered]
                'ComputerName'=$computer;
                'OS Name'=$os.caption;
                'OS Build'=$os.buildnumber;
                'FreeSpace'=$Disk.freespace / 1gb -as [int]
            }
        $Obj=New-Object -TypeName PSObject -Property $Prop
        $obj.PSObject.TypeNames.Insert(0,'Jason.InventoryObject') 
        Write-Output $Obj

        } 
    }
    End{}
}

function Set-VolLabel{
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    Param
    (
        [Parameter(Mandatory=$True)]
        [String]$ComputerName,
        [Parameter(Mandatory=$True)]
        [String]$Label
    )
    Process
    {
        if ($pscmdlet.ShouldProcess("$ComputerName - label change to $Label"))
        {
            $VolName=Get-WmiObject -Class Win32_LogicalDisk -Filter "DeviceID='c:'" -ComputerName $ComputerName 
            $VolName.VolumeName ="$Label"
            $VolName.Put() | Out-Null
        }     
    }
}

Function Get-JasonFun1 {
    Write-Output "PowerShell is fun!"
}

Function Get-JasonFun2 {
    Write-Output "PowerShell is REALLY fun!"
}