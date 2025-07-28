echo "Kopiere Datei ins Setupverzeichnis 32-Bit"
copy /y /v Win32\Release\PCMNotenrechner.exe "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v Win32\Release\PCMNotenrechner.DE "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v Win32\Release\PCMNotenrechner.EN "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
echo "Kopiere Datei ins Setupverzeichnis 64-Bit"
copy /y /v Win64\Release\PCMNotenrechner.exe "e:\Inno\Setupfiles\Programme\PCMNotenrechner_x64"
copy /y /v Win64\Release\PCMNotenrechner.DE "e:\Inno\Setupfiles\Programme\PCMNotenrechner_x64"
copy /y /v Win64\Release\PCMNotenrechner.EN "e:\Inno\Setupfiles\Programme\PCMNotenrechner_x64"

echo "Kopiere Doku ins Setupverzeichnis"
copy /y /v PCMNotenrechner.docx "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v PCMNotenrechner.pdf "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v PCMNotenrechner.htm "e:\Inno\Setupfiles\Programme\PCMNotenrechner"

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Notenrechner /1.0 /E:\Inno\Setupfiles\Programme\PCMNotenrechner
