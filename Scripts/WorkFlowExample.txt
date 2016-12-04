workflow paralleltest {

 parallel {

   Get-CimInstance –ClassName Win32_OperatingSystem

   Get-Process –Name PowerShell*

   Get-CimInstance –ClassName Win32_ComputerSystem

   Get-Service –Name note*

  }

}
