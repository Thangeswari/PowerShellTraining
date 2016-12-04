cd "C:\demopowershell"
dir
1 | out-file cmp1.txt -Force
2  | out-file cmp1.txt -Append
cat cmp1.txt
1 | out-file cmp2.txt -Force
comp cmp1.txt cmp2.txt

2| out-file cmp2.txt -Append
comp cmp1.txt cmp2.txt