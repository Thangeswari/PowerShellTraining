function Search-RSSLink () {
   $wc = New-Object Net.Webclient
   $url = "http://dawn.jpl.nasa.gov/rss/dawnenews.xml"
   ([xml]$wc.downloadstring($url)).rss.channel.item
}

Search-RSSLink | select title,description | Format-Table -Wrap
