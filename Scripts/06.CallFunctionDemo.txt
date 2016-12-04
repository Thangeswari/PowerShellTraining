$original = 10;
Write-Host "Original Value is $original"
function CallByValue($a){$a=$a*10;$a}
CallByValue($original)
Write-Host "After call by value, Original Value is $original"
function CallByRef([REF]$a){$a.value=$a.value*10;$a}
CallByRef([REF]$original)
Write-Host "After call by reference, Original Value is $original"