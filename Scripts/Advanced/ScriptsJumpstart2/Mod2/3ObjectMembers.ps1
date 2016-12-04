#Object Members and variables
#Variables are very flexible
$Service=Get-Service -Name bits
$Service | GM
$Service.Status
$service.Stop()
$Msg="Service Name is $($service.name.ToUpper())"
$msg
#Working with multiple objects
$Services=Get-Service
$services[0]
$services[0].Status
$Services[-1].Name
"Service Name is $($services[4].DisplayName)"
"Service Name is $($services[4].name.ToUpper())"



