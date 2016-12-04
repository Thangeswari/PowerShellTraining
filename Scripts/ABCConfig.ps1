# Define a configuration
Configuration ABCConfig
{
       Node localhost 
       {
              File TestFile {
                     Ensure = "Present"
                     DestinationPath = "C:\demo\DSC\source\abc.txt"
                     Contents = "ABC"
              }
       }
}
# Apply configuration 
ABCConfig 
Start-DscConfiguration -Wait -Verbose -Path .\ABCConfig

