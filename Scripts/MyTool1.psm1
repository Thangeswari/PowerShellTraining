Function Get-Money($rate)
{
Write-Host "You must get paid at least" $rate "dollar per hour for this project"
}

Function Get-MoreMoney([int]$rate,[int] $year)
{
$newRate = $rate * $year
Write-Host "You must get paid at least " $newRate "dollar per hour after " $year "years"
}
