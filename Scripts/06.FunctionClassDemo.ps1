# Define a class
class TypeName
{
   # Property with validate set
   [ValidateSet("val1", "Val2")]
   [string] $P1

   # Static property
   static [hashtable] $P2

   # Hidden property does not show as result of Get-Member
   hidden [int] $P3

   # Constructor
   TypeName ([string] $s)
   {
       $this.P1 = $s       
   }

   # Static method
   static [void] MemberMethod1([hashtable] $h)
   {
       [TypeName]::P2 = $h
   }

   # Instance method
   [int] MemberMethod2([int] $i)
   {
       $this.P3 = $i
       return $this.P3
   }
}

#Static member call
[TypeName]::P2
[TypeName]::P2 = @{"Orange"="Orange"}
[typeName]::MemberMethod1(@{"Apple"="Green"})
[TypeName]::P2
#New instance
$newInstance = new-Object TypeName("val1");
$newInstance.P1
$newInstance.P1 = "New Value"
$newInstance.P1 = "val2"
$newInstance.P1 
#Hidden Variable
$newInstance.P3
$newInstance.MemberMethod2(3)
$newInstance.P3
