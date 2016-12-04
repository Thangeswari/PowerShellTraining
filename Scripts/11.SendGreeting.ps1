Workflow Send-Greetings
{
[CmdletBinding()]
Param([string] $Name)
"Hello, $Name"
}
Send-Greetings –Name Lakshmi
