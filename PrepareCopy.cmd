echo "Kopiere Datei ins Setupverzeichnis"
copy /y /v Win32\Release\PCMNotenrechner.exe "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v Win64\Release\PCMNotenrechner.exe "e:\Inno\Setupfiles\Programme\PCMNotenrechner_x64"

copy /y /v Win64\Release\PCMNotenrechner.DE "e:\Inno\Setupfiles\Programme\PCMNotenrechner_x64"
copy /y /v Win64\Release\PCMNotenrechner.EN "e:\Inno\Setupfiles\Programme\PCMNotenrechner_x64"

copy /y /v PCMNotenrechner.docx "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v PCMNotenrechner.pdf "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v PCMNotenrechner.htm "e:\Inno\Setupfiles\Programme\PCMNotenrechner"

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Notenrechner /1.0 /E:\Inno\Setupfiles\Programme\PCMNotenrechner