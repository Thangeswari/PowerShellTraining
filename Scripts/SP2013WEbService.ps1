#URL for the Webservice
$URI = "https://spthangu.sharepoint.com/_vti_bin/lists.asmx?WSDL" 
$cred = Get-Credential
#Call a proxy
$proxy = New-WebServiceProxy -Uri $URI -Credential $cred
#Get the list
$list = $proxy.GetListCollection()
#Display the list title
$list.Title
