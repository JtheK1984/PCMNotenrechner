program PCMNotenrechner;

uses
  inifiles,
  NtTranslator,
  System.SysUtils,
  uWvLoader,
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  Windows,
  PCM.Main in 'PCM.Main.pas' {frm_PCM_Main},
  PCM.Data in 'PCM.Data.pas' {dm_PCM: TDataModule},
  PCM.Notenrechner.Schulfach in 'Modules\PCM.Notenrechner.Schulfach.pas' {frm_Notenrechner_Schulfach},
  PCM.Notenrechner.Notentyp in 'Modules\PCM.Notenrechner.Notentyp.pas' {frm_Notenrechner_Notentyp},
  PCMNotenrechner.Modul.C_Noten in 'Modules\PCMNotenrechner.Modul.C_Noten.pas' {frm_Noten};

{$R *.res}

{$SetPEOptFlags IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE}
{$SetPEFlags IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP or IMAGE_FILE_LARGE_ADDRESS_AWARE}

var
  ifini: TIniFile;
  sStyle: String;
  slocale: String;

begin
  ifini:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  sStyle:=ifini.ReadString('PCMNotenrechner','Style','Windows');
  slocale:=ifini.ReadString('PCMBackup','Language','de');
  ifini.Free;
  GlobalWebView2Loader                := TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
  GlobalWebView2Loader.StartWebView2;
  Application.Initialize;
  TStyleManager.TrySetStyle(sStyle);
  {$IFDEF WIN64}
  Application.Title:= 'PCM - Notenrechner 64-Bit';
  TNtTranslator.SetNew(slocale,[],'de');
  {$else}
  Application.Title:= 'PCM - Notenrechner 32-Bit';
  {$ENDIF}
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_PCM,dm_PCM);
  Application.CreateForm(Tfrm_PCM_Main,frm_PCM_Main);
  Application.Run;
end.
