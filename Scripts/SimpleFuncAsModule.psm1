function CountArgs{
If ($args -ne $null) {
"You specified: $args"
"Argument number: $($args.count)"
$i=0;
$args | ForEach-Object { $i++; "$i. Argument: $_" }
} Else {
"You haven't specified any arguments!"
}
}
