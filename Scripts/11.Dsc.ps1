#Local resources
Get-DscResource -ov r | measure
#Latest resources
Find-DscResource -ov fr | measure
$fr | Out-GridView
#x->Experiemental
