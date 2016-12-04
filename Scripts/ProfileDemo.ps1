Test-Path $profile
#View profile
$profile
#Create a new profile
New-Item -path $profile -type file
#Update the profile file from $profile with updated location C:\Users\<>\Documents\WindowsPowerShell
#Set-Location C:\scripts