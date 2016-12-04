function Enable-ProcessCreationEvent
{
   $query = New-Object System.Management.WqlEventQuery "__InstanceCreationEvent", (New-Object TimeSpan 0,0,1), "TargetInstance isa 'Win32_Process'"
   $processWatcher = New-Object System.Management.ManagementEventWatcher $query
   $identifier = "WMI.ProcessCreated"
   Register-ObjectEvent $processWatcher "EventArrived" -SupportEvent $identifier -Action 
   {
      [void] (New-Event -sourceID "PowerShell.ProcessCreated" -Sender $args[0] –EventArguments $args[1].SourceEventArgs.NewEvent.TargetInstance)
   }
   
}