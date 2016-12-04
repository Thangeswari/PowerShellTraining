#Enable-PSRemoting
Enable-PSRemoting
#SQL Connection variables
$sqlServer = "w15-sp"
$sqlDatabase = "AdventureWorks2012"
$sqlUser = "sa"
$sqlPassword = "pass@word1"

#Start a new PSSesssion
$sqlSession = New-PSSession -ComputerName $sqlServer -Name "SQL"
$sqlSession.GetType().Name
#Invoke command using Invoke-Command for running the scripts on remote PC
#Invoke-Command -Session $sqlSession -Script{ Import-Module SQLPS -ErrorAction Stop}
Import-Module SQLPS -ErrorAction Stop


#Specify the Server name , instnace,Database,User,Password
#Store the object in Object/DataSet use foreach
$dataSet = Invoke-SQLCMd -ServerInstance $sqlServer -Database `
        $sqlDatabase -Username $sqlUser -Password $sqlPassword `
        -Query  "select * from Person.Person"

$dataSet.Count
$dataSet.GetType()

$dataSet |select * -First 1

foreach ($item in $dataSet)
       {
          $item.FirstName
       }

$strLocation = "c:\demo\sql1.sql"

$dataSet|select * -first 1



