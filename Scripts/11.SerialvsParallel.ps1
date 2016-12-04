<#
Simple comparison of a serial foreach loop versus a parallel foreach loop
When run on my workstation with $NumberOfIterations=50 this was my output:
    elapsed time (serial foreach loop): 20.2380236
    elapsed time (parallel foreach loop): 9.7779777
Simply copy and paste into Powershell ISE and hit F5 (needs Powershell v3 or above)
Jamie Thomson, 2014-12-09
https://gist.githubusercontent.com/jamiekt/f586e47cb96b93dacbe5/raw/954b5f7ef18c42187e5a800681a648867404a20a/Parallel-vs-Serial.ps1
#>
workflow workflow1{
    Param($NumberofIterations)
    "======================================================="
    $array = 1..$NumberofIterations
    $Uri = "http://www.bbc.com"
    
    function DoRequest($i,$Uri){
        "$i starting";$response = Invoke-WebRequest -Uri $Uri;"$i ending"
    }

    "Serial"
    "======"
    $startTime = get-date
    foreach ($i in $array) {DoRequest $i $Uri}
    $serialElapsedTime = "elapsed time (serial foreach loop): " + ((get-date) - $startTime).TotalSeconds
    #versus
    "======================================================="
    "Parallel"
    "========"
    $startTime = get-date
    foreach -parallel ($i in $array) {DoRequest $i $Uri}
    $parallelElapsedTime = "elapsed time (parallel foreach loop): " + ((get-date) - $startTime).TotalSeconds
    $serialElapsedTime
    $parallelElapsedTime
    "======================================================="
}
cls
workflow1 5
