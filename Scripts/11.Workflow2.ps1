Import-Module PSWorkflow

workflow Test-Workflow2 {

    #InlineScript{
    $obj = New-Object -TypeName PSObject
    $obj | Add-Member -MemberType NoteProperty `
                      -Name ExampleProperty `
                      -Value 'Hello!'
    $obj | Get-Member
    #}
}

Test-Workflow2