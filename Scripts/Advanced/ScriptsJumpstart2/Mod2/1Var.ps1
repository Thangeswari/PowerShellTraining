#Variables to store your stuff
#Assigning a variable
$MyVar=2
${My Var}="Hello"

#Output a variable
$MyVar
${My Var}
Write-Output $MyVar

#Strongly type a variable
[String]$MyName="Jason"
[int]$Oops="Jason"
[string]$ComputerName=Read-host "Enter Computer Name"
Write-Output $ComputerName

