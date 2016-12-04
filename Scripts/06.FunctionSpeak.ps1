function Speak-Text($goodQualities)
{
Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Speak("You are $goodQualities")
}

Speak-Text calm,strong,perfect
