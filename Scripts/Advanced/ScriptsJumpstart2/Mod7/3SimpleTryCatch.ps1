$Computer='notonline'
Try{
    $os=Get-Wmiobject -ComputerName $Computer -Class Win32_OperatingSystem `
     -ErrorAction Stop -ErrorVariable CurrentError
             
}
Catch{
    Write-warning "You done made a boo-boo with computer $Computer"            
}