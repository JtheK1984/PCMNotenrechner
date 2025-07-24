unit PCM.Notenrechner.Notentyp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, ComCtrls, ToolWin, cxNavigator, dxCore,
  cxCheckBox, cxCheckComboBox, cxMaskEdit,
  dxDateRanges, dxScrollbarAnnotations, cxContainer,
  cxGroupBox,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxBar, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxUIAClasses;

type
  Tfrm_Notenrechner_Notentyp = class(TForm)
    dsData: TDataSource;
    cxGrid3: TcxGrid;
    tvData: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    tvDataBezeichnung: TcxGridDBColumn;
    tvDataFaktor: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_NotenNew: TdxBarLargeButton;
    btn_NotenCancel: TdxBarLargeButton;
    btn_NotenSave: TdxBarLargeButton;
    btn_NotenDelete: TdxBarLargeButton;
    qnotentyp: TFDQuery;
    tbtn_Noten_Detailliert_Close: TdxBarLargeButton;
    procedure tbtn_Noten_Detailliert_CloseClick(Sender: TObject);
    procedure btn_NotenNewClick(Sender: TObject);
    procedure btn_NotenSaveClick(Sender: TObject);
    procedure btn_NotenCancelClick(Sender: TObject);
    procedure btn_NotenDeleteClick(Sender: TObject);
    procedure SetbuttonsEnableVisible(DataSet: TDataSet);
  private
    { Private-Deklarationen }
    iRecht:Integer;
    procedure Setbuttons;
  public
    { Public-Deklarationen }
    function Execute(Caption: string; Recht: integer) : boolean;
  end;

var
  frm_Notenrechner_Notentyp: Tfrm_Notenrechner_Notentyp;
  sTable: string;

implementation


{$R *.dfm}

uses  PCM.Main, PCM.Data, PCM.Strings;

procedure Tfrm_Notenrechner_Notentyp.btn_NotenCancelClick(Sender: TObject);
begin
  qnotentyp.Cancel;
end;
procedure Tfrm_Notenrechner_Notentyp.btn_NotenDeleteClick(Sender: TObject);
begin
  if qnotentyp.FieldByName('ID').AsInteger > 0 then
  begin
    qnotentyp.Delete;
  end
end;
procedure Tfrm_Notenrechner_Notentyp.btn_NotenNewClick(Sender: TObject);
begin
  if qnotentyp.State in [dsInsert, dsedit] then
    qnotentyp.Post;
  qnotentyp.Append;
  qnotentyp.Insert;
  qnotentyp.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
end;
procedure Tfrm_Notenrechner_Notentyp.btn_NotenSaveClick(Sender: TObject);
begin
  if qnotentyp.State in [dsInsert, dsEdit] then
  begin
    qnotentyp.Post;
  end;
end;
function Tfrm_Notenrechner_Notentyp.Execute(Caption: string; Recht: integer) : boolean;
begin
  tvDataFaktor.Caption:= rs_PCMNotenrechner_Faktor;
  qnotentyp.open;
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
procedure Tfrm_Notenrechner_Notentyp.Setbuttons;
begin
 if iRecht >= 2 then
  begin
    //Noten
    btn_NotenSave.Enabled := qnotentyp.State in [dsInsert, dsEdit];
    btn_NotenCancel.Enabled := qnotentyp.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.int_NotenRight = 3 then
  begin
    //Noten
    btn_NotenDelete.Enabled := (not qnotentyp.Eof) and not (qnotentyp.State in [dsInsert, dsEdit]);
  end;
end;
procedure Tfrm_Notenrechner_Notentyp.SetbuttonsEnableVisible(DataSet: TDataSet);
begin
  Setbuttons;
end;

procedure Tfrm_Notenrechner_Notentyp.tbtn_Noten_Detailliert_CloseClick(Sender: TObject);
begin
  Close;
end;

end.

