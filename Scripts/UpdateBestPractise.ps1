$ConfirmPreference
#User Verbose to view the output and the actual process is executed
set-stuff -computername . -Verbose
#User whatif to view the output and the actual process is not executed
set-stuff -computername . -whatif
#ASking the user to confirm the operations
set-stuff -Confirm -computername .