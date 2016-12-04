Function set-stuff{
    [cmdletbinding(SupportsShouldProcess=$true,
                    confirmImpact='Medium')]
    param(
        [Parameter(Mandatory=$True)]
        [string]$computername   
    )
    Process{
    
        If ($psCmdlet.shouldProcess("$Computername")){
            Write-Output 'Im changing something right now'
        }
    }
}
