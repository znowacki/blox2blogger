rem powershell -Command "(gc fce.xml) -replace '<item>', '<entry>' | Out-File blogger.xml"

powershell -ExecutionPolicy ByPass -File replacer.ps1

pause
rem  -replace '(?<=<center>).*?(?=</center>)', 'This is my new text.'