#Read XML File
$xmlContent = "<Numbers><Number>1</Number><Number>2</Number></Numbers>"
[xml]$xmlString = $xmlContent
$xmlString.Numbers
$xmlString.Numbers.Number
$xmlString.ChildNodes
$xmlString.FirstChild
$xmlString.InnerXml