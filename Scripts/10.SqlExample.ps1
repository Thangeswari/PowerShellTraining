try{ 

$sqlCOnnection = New-Object System.Data.SqlClient.SqlConnection 

$sqlCOnnection.ConnectionString="Data Source=W15-SP;Initial Catalog=master;Integrated Security=True" 

$sqlCommand =New-Object System.Data.SqlClient.SqlCommand 

$sqlCommand.CommandText="select top 10 name from sys.tables" 

$sqlCommand.Connection=$sqlCOnnection 

$sqlCOnnection.Open() 

$sqlCommand.ExecuteNonQuery() 

$sqlAdapter= New-Object System.Data.SqlClient.SqlDataAdapter 

$dataSet= New-Object System.Data.DataSet 

$sqlAdapter.SelectCommand=$sqlCommand 

$sqlAdapter.Fill($dataSet); 

$sqlCOnnection.Close() 

$dataSet.Tables[0] 

} 

catch [System.Data.SqlClient.SqlException] 

{ 

#change master to master1 

"Connection failed" 

"Message details:: $_" 

}  
