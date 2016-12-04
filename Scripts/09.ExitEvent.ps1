#Simple example using Register-EngineEvent and PowerShell.Exiting engine event 
#([System.Management.Automation.PsEngineEvent]::Exiting)
Register-EngineEvent -SourceIdentifier PowerShell.Exiting -Action {
    "PowerShell exited at {0}" -f (Get-Date) |  Out-File -FilePath "C:\assignments\powershell.log" -Append
}