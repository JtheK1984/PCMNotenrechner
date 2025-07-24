unit PCM.Data;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  System.ImageList, Vcl.ImgList, Vcl.Controls, cxImageList, cxGraphics,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,VCL.Dialogs,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Forms,Winapi.Windows,inifiles,system.uitypes,
  cxClasses, dxLayoutLookAndFeels;

type
  Tdm_PCM = class(TDataModule)
    con_PCM: TFDConnection;
    imglst_16x16: TcxImageList;
    imglst_24x24: TcxImageList;
    imglst_32x32: TcxImageList;
    qry_work: TFDQuery;
    qnotenfach: TFDQuery;
    qnotentyp: TFDQuery;
    dsnotenfach: TDataSource;
    dsnotentyp: TDataSource;
    qry_ChartNotenFach: TFDQuery;
    ds_ChartNotenFach: TDataSource;
    qry_ChartNotentyp: TFDQuery;
    ds_ChartNotentyp: TDataSource;
    qry_Chartnoten: TFDQuery;
    ds_Chartnoten: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    procedure con_PCMBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    iModulTab: integer;
    slocale: String;
    sServer,sStyle,sDesign: String;
    iDBType: integer;
    iIDBenutzerPCM: integer;
    blogin: boolean;
    bClose: boolean;
    bNewLiceneCheck: Boolean;
    iScale: double;
    iBenutzer: integer;
    int_NotenRight: integer;
    bStyle: Boolean;
    bAlleBenutzer: boolean;
    Firma, Nummer: string;
    bDemo: boolean;
    bAppTerm: boolean;
    dtGueltig,dtCurrDate: Tdate;
    bAutologin: boolean;
    sUSerAutologin: string;
  end;

var
  dm_PCM: Tdm_PCM;

const
  DB_MYSQL = 0;
  DB_MSSQL = 1;
  DB_ADS = 2;
  DB_FB = 3;

  PCM_Alias = 'notenrechner';
  PCM_Connectionname =  'notenrechner';
  PCM_Logname =  'PCMNotenrechner';
  PCM_Programmnummer =  2;
  GV_NOTENKOMPRIMIERT = 2;
  GV_NOTENDETAIL = 3;

resourcestring
  {$IFDEF WIN64}
  PCM_Programmname = 'PCM - Notenrechner 64-Bit';
  {$else}
  PCM_Programmname =  'PCM - Notenrechner 32-Bit';
  {$ENDIF}

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses PCM.Main,
     PCM.Functions,
     PCM.Functions.Lizenz,
     PCM.SQL;

procedure Tdm_PCM.DataModuleCreate(Sender: TObject);
begin
  iScale := Screen.PrimaryMonitor.PixelsPerInch /96;
end;
procedure Tdm_PCM.con_PCMBeforeConnect(Sender: TObject);
begin
  con_PCM.LoginPrompt := False;
  con_PCM.Params.Clear;
  case iDBType of
    DB_MYSQL:
    begin
      con_PCM.Params.Add('Database=pcm');
      con_PCM.Params.Add('User_Name=root');
      con_PCM.Params.Add('Password=pcm');
      con_PCM.Params.Add('Server='+ sServer);
      con_PCM.Params.Add('Port=3307');
      con_PCM.Params.Add('DriverID=MySQL');
    end;
    DB_MSSQL:
    begin
      con_PCM.Params.Add('OSAuthent=No');
      con_PCM.Params.Add('User_Name=sa');
      con_PCM.Params.Add('Password=Nh2020+5');
      con_PCM.Params.Add('Server='+ sServer);
      con_PCM.Params.Add('Database=pcm');
      con_PCM.Params.Add('DriverID=MSSQL');
    end;
    DB_ADS:
     begin
      con_PCM.Params.Add('Alias=pcm');
      con_PCM.Params.Add('ServerTypes=REMOTE|LOCAL');
      con_PCM.Params.Add('User_Name=adssys');
      con_PCM.Params.Add('Password=pcm');
      con_PCM.Params.Add('DriverID=ADS');
     end;
  end;
end;


end.
