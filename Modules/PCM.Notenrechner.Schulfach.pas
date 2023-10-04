unit PCM.Notenrechner.Schulfach;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, ComCtrls, ToolWin, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxCore,
  cxCheckBox, cxCheckComboBox, dxDateRanges,
  dxScrollbarAnnotations, dxSkinMetropolisDark, cxContainer, dxSkinBasic,
  dxSkinMetropolis, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxBar, dxSkinWXI;

type
  Tfrm_Notenrechner_Schulfach = class(TForm)
    dsData: TDataSource;
    cxGrid3: TcxGrid;
    tvData: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    tvDataBezeichnung: TcxGridDBColumn;
    tvDataVorrueckung: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    qnotenfach: TFDQuery;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_NotenNew: TdxBarLargeButton;
    btn_NotenCancel: TdxBarLargeButton;
    btn_NotenSave: TdxBarLargeButton;
    btn_NotenDelete: TdxBarLargeButton;
    tbtn_Noten_Detailliert_Close: TdxBarLargeButton;
    procedure tbtn_Noten_Detailliert_CloseClick(Sender: TObject);
    procedure btn_NotenNewClick(Sender: TObject);
    procedure btn_NotenSaveClick(Sender: TObject);
    procedure btn_NotenCancelClick(Sender: TObject);
    procedure btn_NotenDeleteClick(Sender: TObject);
    procedure SetbuttonsEnableVisible(DataSet: TDataSet);
  private
    { Private-Deklarationen }
    iRecht: Integer;
    procedure Setbuttons;
  public
    { Public-Deklarationen }
    function Execute(Caption: string; Recht: integer) : boolean;
  end;

var
  frm_Notenrechner_Schulfach: Tfrm_Notenrechner_Schulfach;
  sTable: string;

implementation


{$R *.dfm}

uses  PCM.MAIN, PCM.Data;

procedure Tfrm_Notenrechner_Schulfach.btn_NotenCancelClick(Sender: TObject);
begin
  qnotenfach.Cancel;
end;
procedure Tfrm_Notenrechner_Schulfach.btn_NotenDeleteClick(Sender: TObject);
begin
  if qnotenfach.FieldByName('ID').AsInteger > 0 then
  begin
    qnotenfach.Delete;
  end
end;
procedure Tfrm_Notenrechner_Schulfach.btn_NotenNewClick(Sender: TObject);
begin
  if qnotenfach.State in [dsInsert, dsedit] then
    qnotenfach.Post;
  qnotenfach.Append;
  qnotenfach.Insert;
  qnotenfach.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
end;
procedure Tfrm_Notenrechner_Schulfach.btn_NotenSaveClick(Sender: TObject);
begin
  if qnotenfach.State in [dsInsert, dsEdit] then
  begin
    qnotenfach.Post;
  end;
end;
function Tfrm_Notenrechner_Schulfach.Execute(Caption: string; Recht: integer) : boolean;
begin
  qnotenfach.open;
  iRecht:= Recht;
  Self.Caption := Caption;
  // Lesen
  if Recht = 1  then
  begin
    btn_NotenNew.Enabled:= false;
    btn_NotenSave.Enabled:= false;
    btn_NotenCancel.Enabled:= false;
    btn_NotenDelete.Enabled:= false;
  end;
  // Ändern
  if Recht = 2  then
  begin
    btn_NotenNew.Enabled:= true;
    btn_NotenSave.Enabled:= true;
    btn_NotenCancel.Enabled:= true;
    btn_NotenDelete.Enabled:= False;
  end;
  // Vollugriff
  if Recht = 3  then
  begin
    btn_NotenNew.Enabled:= true;
    btn_NotenSave.Enabled:= true;
    btn_NotenCancel.Enabled:= true;
    btn_NotenDelete.Enabled:= true;
  end;
  Setbuttons;
  ShowModal;
  result:= true;
  Release;
end;
procedure Tfrm_Notenrechner_Schulfach.Setbuttons;
begin
 if dm_PCM.int_NotenRight >= 2 then
  begin
    //Noten
    btn_NotenSave.Enabled := qnotenfach.State in [dsInsert, dsEdit];
    btn_NotenCancel.Enabled := qnotenfach.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.int_NotenRight = 3 then
  begin
    //Noten
    btn_NotenDelete.Enabled := (not qnotenfach.Eof) and not (qnotenfach.State in [dsInsert, dsEdit]);
  end;
end;
procedure Tfrm_Notenrechner_Schulfach.SetbuttonsEnableVisible(DataSet: TDataSet);
begin
  Setbuttons;
end;
procedure Tfrm_Notenrechner_Schulfach.tbtn_Noten_Detailliert_CloseClick(Sender: TObject);
begin
  close;
end;

end.

