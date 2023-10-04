program PCMNotenrechner;

uses
  inifiles,
  Vcl.Forms,
  System.SysUtils,
  PCM.Main in 'PCM.Main.pas' {frm_PCM_Main},
  Vcl.Themes,
  Vcl.Styles,
  PCM.Notenrechner.Schulfach in 'Modules\PCM.Notenrechner.Schulfach.pas' {frm_Notenrechner_Schulfach},
  PCM.Notenrechner.Notentyp in 'Modules\PCM.Notenrechner.Notentyp.pas' {frm_Notenrechner_Notentyp},
  PCM.Data in 'PCM.Data.pas' {dm_PCM: TDataModule},
  PCMNotenrechner.Modul.B_Config in 'Modules\PCMNotenrechner.Modul.B_Config.pas' {frm_Config},
  PCMNotenrechner.Modul.C_Noten in 'Modules\PCMNotenrechner.Modul.C_Noten.pas' {frm_Noten};

{$R *.res}

var
  iniFile: TIniFile;
  sStyle: String;

begin
  iniFile:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  sStyle:= iniFile.ReadString('PCMNotenrechner','Style','Windows');
  iniFile.Free;
  Application.Initialize;
  Application.Title:= 'PCM - Notenrechner';
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle(sStyle);
  Application.CreateForm(Tdm_PCM, dm_PCM);
  Application.CreateForm(Tfrm_PCM_Main, frm_PCM_Main);
  Application.Run;
end.
