configuration CopyFileTest
{

   param( 

     [Parameter(Mandatory=$true)]  

     [String[]]$Servers,  

     [Parameter(Mandatory=$true)]  

     [String]$SourceFile,  

     [Parameter(Mandatory=$true)]  

     [String]$DestinationFile

  ) 
    # One can evaluate expressions to get the node list
    # E.g: $AllNodes.Where("Role -eq Web").NodeName
    node $Servers
    {
        # Call Resource Provider
        File Copy
        {
            Ensure          = "Present"
            SourcePath      = $SourcePath
            DestinationPath = $DestinationPath
            
        }       
    }
}

CopyFileTest  -Servers @("DESKTOP-G4K3SBE")  -SourceFile  "C:\demo\DSC\source"  -DestinationFile   "C:\demo\DSC\destination"  -OutputPath  "C:\demo\DSC\mof"

Start-DscConfiguration  -Path "C:\demo\DSC\mof"
Test-DscConfiguration  -Path "C:\demo\DSC\mof"