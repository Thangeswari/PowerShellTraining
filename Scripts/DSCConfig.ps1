Configuration DeployHostFile    

{   

   param( 

     [Parameter(Mandatory=$true)]  

     [String[]]$Servers,  

     [Parameter(Mandatory=$true)]  

     [String]$SourceFile,  

     [Parameter(Mandatory=$true)]  

     [String]$DestinationFile

  ) 

 

   Node $Servers

  {  

     File  CopyHostFile 

    {  

        Ensure = "Present" 

        Type = "File" 

        SourcePath = $SourceFile

        DestinationPath = $DestinationFile

    }  

  } 
}

DeployHostFile  -Servers @("w15-sp","w15-dc")  -SourceFile  "\\Share\Hosts"  -DestinationFile   "C:\demo"  -OutputPath  "C:\DeployHostFile\"

DeployHostFile  -Servers @("DESKTOP-G4K3SBE")  -SourceFile  "C:\demo\DSC\source"  -DestinationFile   "C:\demo\DSC\destination"  -OutputPath  "C:\demo\DSC\mof"

Start-DscConfiguration  -Path "C:\demo\DSC\mof" 