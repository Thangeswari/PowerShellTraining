#List DSC Resource
 Get-DscResource | select Name,Module,Properties | Ft -AutoSize 

 #Latest REsourse from http://www.powershellgallery.com/ and paste in folder below
  Get-ChildItem -Path Env:\PSModulePath | select value | fl *

 #Get the details of a resource
 Get-DSCResource File -syntax