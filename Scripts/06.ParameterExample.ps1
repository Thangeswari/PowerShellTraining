<#
.Synopsis
   This method gets the favorite color
.DESCRIPTION
   This method gets the favorite color
   Add-Type -TypeDefinition "public enum Color{Red,Green,Blue}"
   must be run before this function.
.EXAMPLE
   Get-YourFavColor -favColor Green
.EXAMPLE
   $myColor=Get-YourFavColor Red
#>
function Get-YourFavColor
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([string])]
    Param
    (
        # favColor holds your favorite color from RGB
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [Color]$favColor

        
    )

    try
    {
        $favColor.ToString()
    }
    catch [System.ArgumentNullException]
    {
        Write-Host $_.Exception.Message
    }
    catch [System.Exception]
    {
        Write-Host $_.Exception.Message
    }
   
    finally
    {
        Write-Host "cleaning up ..."
    }
}