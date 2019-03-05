$content = [System.IO.File]::ReadAllText("wordPress.xml").Replace("item>","entry>")
$content = $content.Replace("<rss xmlns:content=""http://purl.org/rss/1.0/modules/content/"" xmlns:excerpt=""http://wordpress.org/export/1.2/excerpt/"" xmlns:wp=""http://wordpress.org/export/1.2/"" version=""2.0"">","")
$content = $content.Replace("<channel>","<feed  xmlns=""http://www.w3.org/2005/Atom"">")
$content = $content.Replace("</channel>","</feed>")
$content = $content.Replace("<wp:wxr_version>1.2</wp:wxr_version>","<generator version='7.00' uri='https://www.blogger.com'>Blogger</generator><title type='text'>Title</title><id>https://blox.pl/</id><link rel='self' type='application/atom+xml' href='https://booklinki.blox.pl'/>")
$content = $content.Replace("</channel>","</feed>")
$content = $content.Replace("<wp:author>","<author><name>")
$content = $content.Replace("</wp:author>","</name></author>")
$content = $content.Replace("<title>","<title type='html'>")
$content = $content -creplace "<description>.*</description>",""
$content = $content.Replace("<pubDate>","<published>")
$content = $content.Replace("</pubDate>","Z</published>")
$content = $content.Replace("wp:post_date_gmt>","id>")
$content = $content.Replace("<content:encoded>"," <content type='html'>")
$content = $content.Replace("</content:encoded>","</content>")
$content = $content -creplace "<excerpt:encoded>.*</excerpt:encoded>",""
$content = $content.Replace("<wp:status>publish</wp:status>","")
$content = $content.Replace("<wp:post_type>post</wp:post_type>","<category scheme=""http://schemas.google.com/g/2005#kind"" term=""http://schemas.google.com/blogger/2008/kind#post"" />")
$content = $content.Replace("<category domain=""category"" nicename=","<category scheme=""http://www.blogger.com/atom/ns#"" term=")
$content = $content -creplace """>.*</category>","""/>"
$content = $content -creplace "<category domain=""post_tag"" nicename="".*""/>",""
$content = $content.Replace("hrefhttp","href=http")
$content = $content.Replace("</rss>","")
$content = $content -creplace '\r\n', ' '
[System.IO.File]::WriteAllText("blogger.xml", $content)
