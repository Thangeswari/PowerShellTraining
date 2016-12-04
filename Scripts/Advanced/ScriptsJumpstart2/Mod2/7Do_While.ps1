# Do loop
$i= 1
Do {
    Write-Output "PowerShell is Great! $i"
    $i=$i+1 # $i++
} While ($i -le 5) #Also Do-Until

# While Loop
$i=5
While ($i -ge 1) {
    Write-Output "Scripting is great! $i"
    $i--
}

