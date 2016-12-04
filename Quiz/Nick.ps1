"Please paste the following in PowerShell ISE and execute"
$newline = "`r`n"
$message = ""
$message = $message +"`r`n"+[char[]][int[]](67,79,78,71,82,65,84,85,76,65,84,73,79,78,83)

$message = $message +"`r`n"+[char[]][int[]](69,84,69,82,78,65,76,32,83,85,67,67,69,83,83)

$message = $message +"`r`n"+"abcbestabcwishes".Replace("abc"," ")

$message = $message +"`r`n"+"You are soo brigxt ! Otxers need sunglasses!".Replace('x','h') 

$message = $message +"`r`n"+"Wish u days full of qoney!".Replace('q','m')

$message = $message +"`r`n"+"May you always mile".Insert(15,'s')

$message = $message +"`r`n"+[char[]][int[]](72,97,112,112,121,32,70,111,114,101,118,101,114)

$message = $message +"`r`n"+[char[]][int[]](66,111,114,110,32,116,111,32,87,105,110)

$message = $message +"`r`n"+[char[]][int[]](69,116,101,114,110,97,108,32,83,116,114,101,110,110,103,116,104)

$message = $message +"`r`n"+[char[]][int[]](84,104,97,110,107,32,89,111,117)

Write-Host $message