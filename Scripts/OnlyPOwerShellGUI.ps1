#Load Assemblies

[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null

[System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") | Out-Null

$net = New-Object -ComObject Wscript.Network

 

#Define Butten Click Function

Function DisplayHelloWorldText{

Add-Type -AssemblyName System.Windows.Forms

#Create Hello World text

$Label = New-Object System.Windows.Forms.Label

$Label.Text = "Welcome to GUI from PowerShell"

$Label.AutoSize = $True

$Label.Location = new-object System.Drawing.Size(88,73)

$Form.Controls.Add($Label)

}

 

#Draw form

$Form = New-Object System.Windows.Forms.Form

 $Form.width = 525

 $Form.height = 350

 $Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::Fixed3D

 $Form.Text = "Hello World"

 $Form.maximumsize = New-Object System.Drawing.Size(525,350)

 $Form.startposition = "centerscreen"

 $Form.KeyPreview = $True

 $Form.Add_KeyDown({if ($_.KeyCode -eq "Enter") {}})

 $Form.Add_KeyDown({if ($_.KeyCode -eq "Escape")

     {$Form.Close()}})

 

#Create button

 $Button1 = new-object System.Windows.Forms.Button

 $Button1.Location = new-object System.Drawing.Size(249,132)

 $Button1.Size = new-object System.Drawing.Size(80,20)

 $Button1.Text = "Click"

 $Button1.Add_Click({DisplayHelloWorldText})

 

 

#Create the Form

$Form.Controls.Add($Button1)

$Form.Add_Shown({$Form.Activate()})

$Form.ShowDialog()
