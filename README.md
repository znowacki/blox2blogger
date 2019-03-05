# blox2blogger

Simple Windows script to convert a wordPress.xml file produced by blox.pl site to blogger format.
No guarantees it will work for all other wordpress exports.

Quick and dirty solution, no XSLT, just replace text with other + a bt of regex.
Put script files to the same folder with wordpress.xml and run replace.cmd
The output file created is blogger.xml

My personal experience is that it works much better than google coverter.
Google converter can produce a file which does not meet blogger requirements. It also changes entry format,
which in turn makes blogger adding additional HTML tags.
This is why Blogger import takes long (in fact, it stucks at errors).

What blogger expects is sth like this:

<?xml version='1.0' encoding='UTF-8'?>
<feed xmlns='http://www.w3.org/2005/Atom'>

    <generator version='7.00' uri='https://www.blogger.com'>Blogger</generator>
    <author>
        <name>your name</name>
    </author>
    <link rel='self' type='application/atom+xml' href='https:/blox.pl'/>
    <entry>
        <title type='html'>Wstep2</title>
        <category scheme="http://schemas.google.com/g/2005#kind" term="http://schemas.google.com/blogger/2008/kind#post" />

        <published>2013-12-29T20:37:23Z</published>
        <id>https://blox.pl/entry1</id>
        <content type='html'><![CDATA[ Whatever. Your source entry here, no windows newlines! ]]>​</content>

    </entry>

</feed>
