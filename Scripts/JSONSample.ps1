#Illustration of JSON
<#
{
"Title":"Sample",
"Technology:"Microsoft"
}
#>
Get-Date | ConvertTo-Json
(Get-UICulture).Calendar | ConvertTo-Json
@{Account="User01";Domain="Domain01";Admin="True"} | ConvertTo-Json -Compress


#Converting from JSON
$sample = "{'Title':'Sample','Technology':'Microsoft'}"
$sample |ConvertFrom-Json