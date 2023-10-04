echo "Kopiere Datei ins Setupverzeichnis"
copy /y /v Win32\Release\PCMNotenrechner.exe "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v Win64\Release\PCMNotenrechner.exe "e:\Inno\Setupfiles\Programme\PCMNotenrechner_x64"

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-PCMNotenrechner /1.6 /E:\Inno\Setupfiles\Programme\PCMNotenrechner