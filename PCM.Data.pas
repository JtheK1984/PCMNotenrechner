unit PCM.Data;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  System.ImageList, Vcl.ImgList, Vcl.Controls, cxImageList, cxGraphics,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,VCL.Dialogs,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Forms,Winapi.Windows,inifiles,system.uitypes;

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
    procedure con_PCMBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    sServer,sStyle,sDesign: String;
    iDBType: integer;
    iIDBenutzerPCM: integer;
    blogin: boolean;
    bClose: boolean;
    bNewLiceneCheck: Boolean;
    iScale: double;
    int_optionenRecht: integer;
    int_NotenRight: integer;
    bStyle: Boolean;
    bAlleBenutzer: boolean;
    Firma, Nummer: string;
    bDemo: boolean;
    bAppTerm: boolean;
    dtGueltig,dtCurrDate: Tdate;
    bAutologin: boolean;
    sUSerAutologin: string;
    function Autologin: boolean;
    function CheckAutologin: String;
    function ReadServerAdress: boolean;
    function CheckLizenz: boolean;
    function GetAppVersionLizenz: string;
    procedure CheckLizenzNew;
  end;

var
  dm_PCM: Tdm_PCM;

const
  DB_MYSQL = 0;
  DB_MSSQL = 1;
  DB_ADS = 2;
  DB_FB = 3;

  {$IFDEF WIN64}
  PCM_Programmname = 'PCM - Notenrechner 64-Bit';
  {$else}
  PCM_Programmname =  'PCM - Notenrechner 32-Bit';
  {$ENDIF}
  PCM_Connectionname =  'notenrechner';
  PCM_Logname =  'PCMNotenrechner';
  PCM_Programmnummer =  2;
  sDefaultLayoutText =  'Wollen Sie das Layout des Suchgitters wirklich zurücksetzen? ' +
                        'Ihre eigenen Einstellungen gehen dabei verloren.';
  sDefaultLayoutHeader = 'Layout zurücksetzen';
  GV_NOTENKOMPRIMIERT = 2;
  GV_NOTENDETAIL = 3;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses PCM.Main,PCM.Functions,
     PCM.Functions.Lizenz;

function Tdm_PCM.Autologin: boolean;
begin
  Result:= false;
  sUSerAutologin := CheckAutologin;
  if sUSerAutologin <> '' then
  begin
    Result:= true;
  end;
end;

function Tdm_PCM.CheckAutologin: String;
begin
  Result:= '';
  dm_pcm.qry_Work.SQL.Text:= 'SELECT ID,Benutzer FROM benutzer WHERE benutzer  = :Benutzer and Autologin = True';
  dm_pcm.qry_Work.ParamByName('Benutzer').asString:= frm_PCM_System.GetCurrentUsername;
  dm_pcm.qry_Work.Open;
  if dm_pcm.qry_Work.RecordCount > 0 then
  begin
    Result := dm_pcm.qry_Work.FieldByName('Benutzer').AsString;
    iIDBenutzerPCM:= dm_pcm.qry_Work.FieldByName('ID').AsInteger;
  end;
  dm_pcm.qry_Work.Close;
end;

function Tdm_PCM.CheckLizenz: boolean;
var
  iProgramm: integer;
  iGeburtTagMonat: integer;
  iGeburtjahr: integer;
  iDevjahr: integer;

  procedure MakeBitMatrix;
  var
    i, j, v, addr: Integer;
    mask: Integer;
    c: Char;
  begin
    for i := 1 to Length(Nummer) do
    begin
      // Zeichen umwandeln in Zahl
      c := Nummer[i];
      if (c >= '0') and (c <= '9') then
        v := Ord(c) - 48
      else
        v := Ord(c) - 65 + 10;
      mask := 1;
      for j := 0 to 4 do
      begin
        addr := (i - 1) * 5 + j;
        if addr <= High(frm_PCM_Lizenz.arrbolBitMatrix) then
        begin
          if (v and mask) <> 0 then
            frm_PCM_Lizenz.arrbolBitMatrix[addr] := True
          else
            frm_PCM_Lizenz.arrbolBitMatrix[addr] := False;
        end;
        mask := mask * 2;
      end;
    end;
  end;

  function MakeString(Length: Integer): string;
  var
    i, j, n, v, mask, addr: Integer;
  begin
    n := (Length + 4) div 5;
    Result := '';

    for i := 0 to n - 1 do
    begin
      // Wert von 5 Bits holen
      v := 0;
      mask := 1;
      for j := 0 to 4 do
      begin
        addr := i * 5 + j;
        if addr >= Length then
          Break;
        if frm_PCM_Lizenz.arrbolBitMatrix[i * 5 + j] then
          v := v or mask;
        mask := mask * 2;
      end;

      // in Buchstabe wandeln
      if (v >= 0) and (v <= 9) then
        Result := Result + Chr(v + 48)
      else
        Result := Result + Chr((v - 10) + 65);
    end;
  end;

  procedure ByteCrc(data: Byte; var crc: Word);
  var
    i: Byte;
  begin
    for i := 0 to 7 do
    begin
      if ((data and $01) xor (crc and $0001) <> 0) then
      begin
        crc := crc shr 1;
        crc := crc xor $A001;
      end
      else
        crc := crc shr 1;
      data := data shr 1;
    end;
  end;

  function StringCrc16(s: string): Word;
  var
    len, i: integer;
  begin
    result := 0;
    len := length(s);
    for i := 1 to len do
      bytecrc(ord(s[i]), result);
  end;

  function GetBits(Position, Length: Integer): Integer;
  var
    i: Integer;
    mask: Integer;
  begin
    Result := 0;
    mask := 1;

    for i := Position to Position + Length - 1 do
    begin
      if frm_PCM_Lizenz.arrbolBitMatrix[i] then
        Result := Result or mask;
      mask := mask * 2;
    end;
  end;

  function CheckCheckSum: Boolean;
  var
    v, chk: Integer;
  begin
    v := StringCrc16(Firma + frm_PCM_Lizenz.sVersion + MakeString(Length(frm_PCM_Lizenz.arrbolBitMatrix) - 16));
    chk := GetBits(High(frm_PCM_Lizenz.arrbolBitMatrix) - 15, 16);
    Result := v = chk;
  end;

  procedure ScrambleBits;
  var
    i, v, mask: Integer;
  begin
    mask := 1;
    v := StringCrc16(Firma);

    for i := 0 to High(frm_PCM_Lizenz.arrbolBitMatrix) do
    begin
      if i mod 16 = 0 then
        mask := 1
      else
        mask := mask * 2;
      frm_PCM_Lizenz.arrbolBitMatrix[i] := (v and mask <> 0) xor (frm_PCM_Lizenz.arrbolBitMatrix[i]);
    end;
  end;

begin
  frm_PCM_Lizenz.sVersion:= GetAppVersionLizenz;
  qry_work.SQL.Text:= 'Select Benutzer , Lizenz From notenrechner_lizenz';
  qry_work.open;
  Firma := qry_work.FieldByName('Benutzer').AsString;
  Nummer := Stringreplace(qry_work.FieldByName('Lizenz').AsString, '-','',[rfReplaceAll]);
  qry_work.close;
  Result := False;

  // Überprüfe Länge
  if Length(Nummer) <> 20 then Exit;

  MakeBitMatrix;
  ScrambleBits;

  Result := CheckCheckSum;
  bNewLiceneCheck:= true;
  if Result then
  begin
    bDemo := Boolean(GetBits(0, 1));
    iProgramm := GetBits(1, 8);
    if iProgramm <> PCM_Programmnummer then
    begin
      bNewLiceneCheck:= false;
    end;
    iGeburtTagMonat:= GetBits(17,16);
    if iGeburtTagMonat <> 2402 then
    begin
      bNewLiceneCheck:= false;
    end;

    iGeburtJahr:= GetBits(33, 16);
    if iGeburtJahr <> 1984 then
    begin
      bNewLiceneCheck:= false;
    end;

    iDevJahr:= GetBits(49, 16);
    if iDevJahr <> 2015 then
    begin
      bNewLiceneCheck:= false;
    end;

    dtGueltig:= EncodeDate(2005, 1, 1) + GetBits(65, 16);
    if bdemo then
    begin
      dtCurrDate := StrToDate(DateToStr(Now));
      if dtGueltig < dtCurrDate then
      begin
        bNewLiceneCheck:= false;
      end
    end;
    if bNewLiceneCheck = false then
    begin

      Application.CreateForm(Tfrm_PCM_lizenz,frm_PCM_lizenz);
      frm_PCM_lizenz.ShowModal;
      frm_PCM_lizenz.Free;
    end
    else begin
      bNewLiceneCheck:= true;
    end;
  end
  else begin
    Application.CreateForm(Tfrm_PCM_lizenz,frm_PCM_lizenz);
    frm_PCM_lizenz.ShowModal;
    frm_PCM_lizenz.Free;
  end;
end;
procedure Tdm_PCM.CheckLizenzNew;
var
  iRecordLizenz: integer;
begin
  qry_work.sql.Text:=  'Select Count(*)as Anzahl From notenrechner_lizenz';
  qry_work.open;
  iRecordLizenz:= qry_work.FieldByName('Anzahl').AsInteger;
  qry_work.close;

  if iRecordLizenz = 0 then
  begin
    Application.CreateForm(Tfrm_PCM_lizenz,frm_PCM_lizenz);
    frm_PCM_lizenz.btn_SaveLicence.Enabled:= false;
    frm_PCM_lizenz.Showmodal;
    frm_PCM_lizenz.Free;
  end
  else begin
    bNewLiceneCheck:= CheckLizenz;
  end;
end;
function Tdm_PCM.GetAppVersionLizenz: string;
var
  dwd_VerInfoSize: DWord;
  poi_VerInfo: Pointer;
  dwd_VerValueSize: DWord;
  ffi_VerValue: PVSFixedFileInfo;
  dwd_Dummy: DWord;
begin
  Result := '';
  dwd_VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), dwd_Dummy);
  if dwd_VerInfoSize = 0 then
    exit;
  GetMem(poi_VerInfo, dwd_VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, dwd_VerInfoSize, poi_VerInfo);
  VerQueryValue(poi_VerInfo, '\', Pointer(ffi_VerValue), dwd_VerValueSize);
  with ffi_VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + IntToStr(dwFileVersionMS and $FFFF);
    Application.CreateForm(Tfrm_PCM_Lizenz,frm_PCM_Lizenz);
    frm_PCM_Lizenz.str_Version:= Result;
    frm_PCM_Lizenz.free;
  end;
  FreeMem(poi_VerInfo, dwd_VerInfoSize);
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
procedure Tdm_PCM.DataModuleCreate(Sender: TObject);
begin
  iScale := Screen.PrimaryMonitor.PixelsPerInch /96;
end;
function Tdm_PCM.ReadServerAdress: boolean;
var
  iniFile: TIniFile;
begin
  iniFile:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  sServer:= iniFile.ReadString('PCM','Server','localhost');
  iniFile.Free;

  iniFile:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  sServer:= iniFile.ReadString('PCM','Server','localhost');
  sStyle:= iniFile.ReadString('PCMNotenrechner','Style','Windows10');
  sDesign:= iniFile.ReadString('PCMNotenrechner','Design','Basic');
  iDBType:=iniFile.ReadInteger('Database','Type',0);
  frm_PCM_main.lafCtrl_Main.SkinName:= sDesign;
  iniFile.Free;
  try
    con_PCM.Params.Values['Server'] := sServer;
    con_PCM.Connected:= True;
    result:= true;
  except
    MessageDlg('Es konnte keine Verbindung zur Datenbank hergestellt werden.'
    + 'Bitte überprüfen Sie die Serveraddresse in der Konfigurationsdatei:' + sLineBreak + GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini.' + sLineBreak
    + 'Das Programm wird beendet.', mtError, [mbOk], 0);
    result:= false;
  end;
end;

end.
