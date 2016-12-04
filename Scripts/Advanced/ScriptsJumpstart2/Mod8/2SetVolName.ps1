function Set-VolLabel
{
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