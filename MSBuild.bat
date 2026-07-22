call "C:\Program Files (x86)\Embarcadero\Studio\37.0\bin\rsvars.bat"
echo "Build erstellen"
msbuild E:/Projekte/Windows/PCMNotenrechner/PCMNotenrechner.dproj /t:Clean;Build;Localize;CompressWin32 /p:config=Release /p:platform=Win32
msbuild E:/Projekte/Windows/PCMNotenrechner/PCMNotenrechner.dproj /t:Clean;Build;Localize;CompressWin64 /p:config=Release /p:platform=Win64

echo "Kopiere Datei ins Setupverzeichnis 32-Bit"
copy /y /v E:\Projekte\Windows\PCMNotenrechner\Win32\Release\PCMNotenrechner.exe "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v E:\Projekte\Windows\PCMNotenrechner\Win32\Release\PCMNotenrechner.DE "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v E:\Projekte\Windows\PCMNotenrechner\Win32\Release\PCMNotenrechner.EN "e:\Inno\Setupfiles\Programme\PCMNotenrechner"

echo "Kopiere Datei ins Setupverzeichnis 64-Bit"
copy /y /v E:\Projekte\Windows\PCMNotenrechner\Win64\Release\PCMNotenrechner.exe "e:\Inno\Setupfiles\Programme\PCMNotenrechner_x64"
copy /y /v E:\Projekte\Windows\PCMNotenrechner\Win64\Release\PCMNotenrechner.DE "e:\Inno\Setupfiles\Programme\PCMNotenrechner_x64"
copy /y /v E:\Projekte\Windows\PCMNotenrechner\Win64\Release\PCMNotenrechner.EN "e:\Inno\Setupfiles\Programme\PCMNotenrechner_x64"

echo "Kopiere Doku ins Setupverzeichnis"
copy /y /v E:\Projekte\Windows\PCMNotenrechner\PCMNotenrechner.docx "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v E:\Projekte\Windows\PCMNotenrechner\PCMNotenrechner.pdf "e:\Inno\Setupfiles\Programme\PCMNotenrechner"
copy /y /v E:\Projekte\Windows\PCMNotenrechner\PCMNotenrechner.htm "e:\Inno\Setupfiles\Programme\PCMNotenrechner"

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Notenrechner /1.0 /E:\Inno\Setupfiles\Programme\PCMNotenrechner_x64
