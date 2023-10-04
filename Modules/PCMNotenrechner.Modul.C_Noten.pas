unit PCMNotenrechner.Modul.C_Noten;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, PCM.Functions,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, dxBarBuiltInMenu, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxDBLookupComboBox,
  Vcl.Menus, cxDropDownEdit, cxCalendar, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxTextEdit, cxMaskEdit, Vcl.StdCtrls, cxButtons, cxScrollBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC, cxGridCustomPopupMenu, cxGridPopupMenu, dxBar,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinWXI;

type
  Tfrm_Noten = class(TForm)
    cxGroupBox1: TcxGroupBox;
    AC_pc_Noten: TcxPageControl;
    ts_Noten_Durchschnitt: TcxTabSheet;
    cxGroupBox12: TcxGroupBox;
    grd_Noten_Durchschnitt: TcxGrid;
    tv_Noten_Durchschnitt: TcxGridDBTableView;
    tv_Noten_DurchschnittNachname1: TcxGridDBColumn;
    tv_Noten_DurchschnittBezeichnung1: TcxGridDBColumn;
    tv_Noten_DurchschnittNote_Durschschnitt1: TcxGridDBColumn;
    tv_Noten_DurchschnittVorrueckung1: TcxGridDBColumn;
    glvl_Noten_Durchschnitt: TcxGridLevel;
    ts_Noten_Detailliert: TcxTabSheet;
    cxScrollBox1: TcxScrollBox;
    cxGroupBox13: TcxGroupBox;
    grd_Noten_Detail: TcxGrid;
    tv_Noten_Detail: TcxGridDBTableView;
    tv_Noten_DetailID_Benutzer1: TcxGridDBColumn;
    tv_Noten_DetailID_Notenfach1: TcxGridDBColumn;
    tv_Noten_DetailID_Notentyp1: TcxGridDBColumn;
    tv_Noten_DetailNote1: TcxGridDBColumn;
    tv_Noten_DetailGeschrieben_Am1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox14: TcxGroupBox;
    btn_Noten_Detailliert_NewFach: TcxButton;
    btn_Noten_Detailliert_NewTyp: TcxButton;
    cbx_Noten_Note: TcxDBComboBox;
    cbx_Noten_notenart: TcxDBLookupComboBox;
    cbx_Schulfach: TcxDBLookupComboBox;
    dt_Noten_Geschrieben: TcxDBDateEdit;
    lbl_Noten_Detailliert_Geschriebenam: TcxLabel;
    lbl_Noten_Detailliert_Notenart: TcxLabel;
    lbl_Noten_Detailliert_Schulfach: TcxLabel;
    lbl_Noten_Detailliert_Schulnote: TcxLabel;
    dxBarManager1: TdxBarManager;
    pm_Noten_Durchschnitt: TcxGridPopupMenu;
    pm_Noten_Detail: TcxGridPopupMenu;
    qAverage: TFDQuery;
    qNoten: TFDQuery;
    dsAverage: TDataSource;
    dsNoten: TDataSource;
    dxBarManager1Bar1: TdxBar;
    qBenutzer: TFDQuery;
    dsBenutzer: TDataSource;
    btn_NotenNew: TdxBarLargeButton;
    btn_NotenDelete: TdxBarLargeButton;
    btn_NotenCancel: TdxBarLargeButton;
    btn_NotenSave: TdxBarLargeButton;
    dxBarDockControl1: TdxBarDockControl;
    procedure btn_Noten_Detailliert_NewFachClick(Sender: TObject);
    procedure btn_Noten_Detailliert_NewTypClick(Sender: TObject);
    procedure btn_NotenNewClick(Sender: TObject);
    procedure btn_NotenSaveClick(Sender: TObject);
    procedure btn_NotenCancelClick(Sender: TObject);
    procedure btn_NotenDeleteClick(Sender: TObject);
    procedure NewAverage(Sender: TObject);
    procedure tv_Noten_DurchschnittVorrueckung1GetDataText( Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SetButtonsEnableVisible(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
  private
    { Private-Deklarationen }
    SaveGridViewNoten,SaveGridViewNotenDet: TSavedGridView;
    procedure SetGridViews(Show:boolean);
    procedure SetButtons;
    procedure InitializeRights;
    procedure Opendata;

  public
    { Public-Deklarationen }
  end;

var
  frm_Noten: Tfrm_Noten;

implementation

{$R *.dfm}

uses  PCM.Data,PCM.Notenrechner.Schulfach,
      PCM.Notenrechner.Notentyp, PCM.Main;

procedure Tfrm_Noten.tv_Noten_DurchschnittVorrueckung1GetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  if AText = 'true' then
    AText:= 'Ja'
  else
    AText:= 'Nein';
end;
procedure Tfrm_Noten.SetButtons;
begin
  if dm_PCM.int_NotenRight >= 2 then
  begin
    //Noten
    btn_NotenSave.Enabled := qNoten.State in [dsInsert, dsEdit];
    btn_NotenCancel.Enabled := qNoten.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.int_NotenRight = 3 then
  begin
    //Noten
    btn_NotenDelete.Enabled := (not qNoten.Eof) and not (qNoten.State in [dsInsert, dsEdit]);
  end;
end;
procedure Tfrm_Noten.FormDestroy(Sender: TObject);
begin
  SetGridViews(False);
end;
procedure Tfrm_Noten.FormPaint(Sender: TObject);
begin
  opendata;
  InitializeRights;
  SetButtons;
  SetGridViews(True);
  if dm_PCM.bAlleBenutzer then
  begin
    qAverage.sql.Text:=  'Select SUM(n.Note * nt.Faktor)  / SUM(nt.faktor) as Summe,nf.Bezeichnung,nf.Vorrueckung, b.Benutzer ' +
                        'From notenrechner_noten n ' +
                        'LEFT OUTER JOIN Benutzer B ON b.ID= n.ID_Benutzer ' +
                        'LEFT OUTER JOIN Notenrechner_typ nt ON nt.ID = n.ID_NotenTyp ' +
                        'LEFT OUTER JOIN Notenrechner_Faecher nf ON nf.ID = n.ID_NotenFach ' +
                        'Group by nf.Bezeichnung, nf.Vorrueckung';
  end
  else begin
    qAverage.sql.Text:=  'Select SUM(n.Note * nt.Faktor)  / SUM(nt.faktor) as Summe,nf.Bezeichnung,nf.Vorrueckung, b.Benutzer ' +
                       'From Notenrechner_noten n ' +
                       'LEFT OUTER JOIN Benutzer B ON b.ID= n.ID_Benutzer ' +
                       'LEFT OUTER JOIN Notenrechner_typ nt ON nt.ID = n.ID_NotenTyp ' +
                       'LEFT OUTER JOIN Notenrechner_Faecher nf ON nf.ID = n.ID_NotenFach ' +
                       'Where n.ID_benutzer = :ID_Benutzer' +
                       ' Group by nf.Bezeichnung, nf.Vorrueckung';
    qAverage.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  end;
  qAverage.open;
end;

procedure Tfrm_Noten.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewNoten := TSavedGridView.Create(GV_Noten,dm_PCM.iIDBenutzerPCM, tv_Noten_Durchschnitt);
    SaveGridViewNoten.LoadView;
    SaveGridViewNotenDet := TSavedGridView.Create(GV_NotenDetail,dm_PCM.iIDBenutzerPCM, tv_Noten_Detail);
    SaveGridViewNotenDet.LoadView;
  end
  else begin
    SaveGridViewNoten.SaveView(0);
    SaveGridViewNoten.Free;
    SaveGridViewNotenDet.SaveView(0);
    SaveGridViewNotenDet.Free;
  end;
end;
procedure Tfrm_Noten.FormShow(Sender: TObject);
begin
  opendata;
  InitializeRights;
  SetButtons;
  SetGridViews(True);
  if dm_PCM.bAlleBenutzer then
  begin
    qAverage.sql.Text:=  'Select SUM(n.Note * nt.Faktor)  / SUM(nt.faktor) as Summe,nf.Bezeichnung,nf.Vorrueckung, b.Benutzer ' +
                        'From notenrechner_noten n ' +
                        'LEFT OUTER JOIN Benutzer B ON b.ID= n.ID_Benutzer ' +
                        'LEFT OUTER JOIN Notenrechner_typ nt ON nt.ID = n.ID_NotenTyp ' +
                        'LEFT OUTER JOIN Notenrechner_Faecher nf ON nf.ID = n.ID_NotenFach ' +
                        'Group by nf.Bezeichnung, nf.Vorrueckung';
  end
  else begin
    qAverage.sql.Text:=  'Select SUM(n.Note * nt.Faktor)  / SUM(nt.faktor) as Summe,nf.Bezeichnung,nf.Vorrueckung, b.Benutzer ' +
                       'From Notenrechner_noten n ' +
                       'LEFT OUTER JOIN Benutzer B ON b.ID= n.ID_Benutzer ' +
                       'LEFT OUTER JOIN Notenrechner_typ nt ON nt.ID = n.ID_NotenTyp ' +
                       'LEFT OUTER JOIN Notenrechner_Faecher nf ON nf.ID = n.ID_NotenFach ' +
                       'Where n.ID_benutzer = :ID_Benutzer' +
                       ' Group by nf.Bezeichnung, nf.Vorrueckung';
    qAverage.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  end;
  qAverage.open;
end;
procedure Tfrm_Noten.InitializeRights;
begin
  // Vokabelübersicht / Lesen
  if dm_PCM.int_NotenRight = 1 then
  begin
    btn_NotenNew.Enabled:= false;
    btn_NotenSave.Enabled:= false;
    btn_NotenCancel.Enabled:= false;
    btn_NotenDelete.Enabled:= false;
    cbx_Schulfach.Enabled:= false;
    btn_Noten_Detailliert_NewFach.Enabled:= False;
    cbx_Noten_notenart.Enabled:= False;
    btn_Noten_Detailliert_NewTyp.Enabled:= False;
    cbx_Noten_Note.Enabled:= False;
    dt_Noten_Geschrieben.Enabled:= False;
  end;
    // Vokabelübersicht / Ändern
  if dm_PCM.int_NotenRight = 2 then
  begin
    btn_NotenNew.Enabled:= true;
    btn_NotenSave.Enabled:= true;
    btn_NotenCancel.Enabled:= true;
    btn_NotenDelete.Enabled:= false;
    cbx_Schulfach.Enabled:= true;
    btn_Noten_Detailliert_NewFach.Enabled:= true;
    cbx_Noten_notenart.Enabled:= true;
    btn_Noten_Detailliert_NewTyp.Enabled:= true;
    cbx_Noten_Note.Enabled:= true;
    dt_Noten_Geschrieben.Enabled:= true;

  end;

	// Vokabelübersicht / Voll
  if dm_PCM.int_NotenRight = 3 then
  begin
    btn_NotenNew.Enabled:= true;
    btn_NotenSave.Enabled:= true;
    btn_NotenCancel.Enabled:= true;
    btn_NotenDelete.Enabled:= false;
    cbx_Schulfach.Enabled:= true;
    btn_Noten_Detailliert_NewFach.Enabled:= true;
    cbx_Noten_notenart.Enabled:= true;
    btn_Noten_Detailliert_NewTyp.Enabled:= true;
    cbx_Noten_Note.Enabled:= true;
    dt_Noten_Geschrieben.Enabled:= true;
  end;
end;
procedure Tfrm_Noten.SetButtonsEnableVisible(DataSet: TDataSet);
begin
  SetButtons;
end;



procedure Tfrm_Noten.btn_NotenCancelClick(Sender: TObject);
begin
  qNoten.cancel;
end;
procedure Tfrm_Noten.btn_NotenDeleteClick(Sender: TObject);
begin
  if qNoten.FieldByName('ID').AsInteger > 0 then
  begin
    qNoten.Delete;
  end;
end;
procedure Tfrm_Noten.btn_NotenNewClick(Sender: TObject);
begin
  if qnoten.State in [dsInsert, dsedit] then
    qnoten.Post;
  qnoten.Append;
  qnoten.Insert;
  qnoten.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
end;
procedure Tfrm_Noten.NewAverage(Sender: TObject);
begin
  if dm_PCM.bAlleBenutzer then
  begin
    qAverage.sql.Text:= 'Select SUM(n.Note * nt.Faktor)  / SUM(nt.faktor) as Summe,nf.Bezeichnung,nf.Vorrueckung, b.Benutzer ' +
                            'From notenrechner_noten n ' +
                            'LEFT OUTER JOIN Benutzer B ON b.ID= n.ID_Benutzer ' +
                            'LEFT OUTER JOIN Notenrechner_typ nt ON nt.ID = n.ID_NotenTyp ' +
                            'LEFT OUTER JOIN Notenrechner_Faecher nf ON nf.ID = n.ID_NotenFach ' +
                            'Group by nf.Bezeichnung, nf.Vorrueckung';
  end
  else begin
    qAverage.sql.Text:= 'Select SUM(n.Note * nt.Faktor)  / SUM(nt.faktor) as Summe,nf.Bezeichnung,nf.Vorrueckung, b.Benutzer ' +
                           'From Notenrechner_noten n ' +
                           'LEFT OUTER JOIN Benutzer B ON b.ID= n.ID_Benutzer ' +
                           'LEFT OUTER JOIN Notenrechner_typ nt ON nt.ID = n.ID_NotenTyp ' +
                           'LEFT OUTER JOIN Notenrechner_Faecher nf ON nf.ID = n.ID_NotenFach ' +
                           'Where n.ID_benutzer = :ID_Benutzer' +
                           ' Group by nf.Bezeichnung, nf.Vorrueckung';
    qAverage.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  end;
  qAverage.open;
end;
procedure Tfrm_Noten.Opendata;
begin
  qNoten.Open;


  if dm_PCM.bAlleBenutzer = false then
  begin
    dm_PCM.qnotenfach.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qnotenfach.Filtered:= true;
    dm_PCM.qnotentyp.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qnotentyp.Filtered:= true;
    qnoten.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qnoten.Filtered:= true;
  end;
  qNoten.Filtered:= true;
  dm_PCM.qnotenfach.Open;
  dm_PCM.qnotentyp.Open;
  qBenutzer.Open;
end;

procedure Tfrm_Noten.btn_NotenSaveClick(Sender: TObject);
begin
  if qnoten.State in [dsInsert, dsEdit] then
  begin
    qnoten.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    qnoten.Post;
    NewAverage(Sender);
    frm_PCM_Main.LoadSQLs;
  end;
end;

procedure ShowListEditor_Schulfach(Caption: string; Right: Integer);
begin
  Application.CreateForm(Tfrm_Notenrechner_Schulfach, frm_Notenrechner_Schulfach);
  frm_Notenrechner_Schulfach.Execute(Caption, Right);
  dm_PCM.qnotenfach.refresh;
end;
procedure Tfrm_Noten.btn_Noten_Detailliert_NewFachClick(Sender: TObject);
begin
  ShowListEditor_Schulfach('Schulfach', dm_PCM.int_NotenRight);
end;
procedure ShowListEditor_Notentyp(Caption: string; Right: Integer );
begin
   Application.CreateForm(Tfrm_Notenrechner_Notentyp, frm_Notenrechner_Notentyp);
   frm_Notenrechner_Notentyp.Execute(Caption,Right);
   dm_PCM.qnotentyp.refresh;
end;
procedure Tfrm_Noten.btn_Noten_Detailliert_NewTypClick(Sender: TObject);
begin
  ShowListEditor_Notentyp('Art der Note',dm_PCM.int_NotenRight );
end;

end.
