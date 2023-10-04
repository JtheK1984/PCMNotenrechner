unit PCMNotenrechner.Modul.A_User;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxBar, cxClasses, System.ImageList,
  Vcl.ImgList, cxImageList, cxMaskEdit, cxDropDownEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.StdCtrls, cxRadioGroup, cxCheckBox, cxTextEdit, cxLabel,
  cxButtons, dxGDIPlusClasses, cxImage, cxGroupBox, cxPC,inifiles, Vcl.Themes,system.UITypes,
  cxDBLookupComboBox, cxDBEdit, cxLookupEdit, cxDBLookupEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,PCM.Functions, dxSkinWXI;

type
  Tfrm_User = class(TForm)
    pnl_right: TcxGroupBox;
    AB_pc_Rights: TcxPageControl;
    ts_User: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox8: TcxGroupBox;
    btn_OptionChangePassword: TcxButton;
    edt_OptionName: TcxDBTextEdit;
    edt_OptionPassword: TcxDBTextEdit;
    edt_OptionSurName: TcxDBTextEdit;
    edt_OptionUser: TcxDBTextEdit;
    lucbx_OptionRights: TcxDBLookupComboBox;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    ts_rights: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBTableView1Vokabeluebersicht: TcxGridDBColumn;
    cxGridDBTableView1Vokabeltest: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox9: TcxGroupBox;
    ckbx_OptionAlluser: TcxDBCheckBox;
    edt_OptionRight: TcxDBTextEdit;
    lucbx_OptionOption: TcxDBLookupComboBox;
    lucbx_OptionVokabelDetail: TcxDBLookupComboBox;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    qBenutzer: TFDQuery;
    qRechte: TFDQuery;
    qRechte_Detail: TFDQuery;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl1: TdxBarDockControl;
    btn_OptionNewUser: TdxBarLargeButton;
    btn_OptionSaveUser: TdxBarLargeButton;
    btn_OptionCancelUser: TdxBarLargeButton;
    btn_OptionDeleteUser: TdxBarLargeButton;
    btn_OptionNewRight: TdxBarLargeButton;
    btn_OptionSaveRight: TdxBarLargeButton;
    btn_optioncancelRight: TdxBarLargeButton;
    btn_OptionDeleteRight: TdxBarLargeButton;
    dsBenutzer: TDataSource;
    dsRechte: TDataSource;
    dsRechte_Detail: TDataSource;
    procedure SetbettonsEnableVisible(DataSet: TDataSet);
    procedure edt_OptionPasswordEnter(Sender: TObject);
    procedure btn_OptionCancelUserClick(Sender: TObject);
    procedure btn_OptionSaveRightClick(Sender: TObject);
    procedure btn_optioncancelRightClick(Sender: TObject);
    procedure btn_OptionDeleteRightClick(Sender: TObject);
    procedure btn_OptionChangePasswordClick(Sender: TObject);
    procedure edt_OptionPasswordExit(Sender: TObject);
    procedure btn_OptionNewRightClick(Sender: TObject);
    procedure lucbx_BenutzerverwaltungPropertiesChange(Sender: TObject);
    procedure lucbx_VokabelDetailPropertiesChange(Sender: TObject);
    procedure btn_OptionNewUserClick(Sender: TObject);
    procedure btn_OptionSaveUserClick(Sender: TObject);
    procedure btn_OptionDeleteUserClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
    SaveGridViewUser,SaveGridViewRight: TSavedGridView;
    procedure SetGridViews(Show:boolean);
    procedure SetButtons;
    procedure OPendata;
    procedure InitializeRights;
  public
    { Public-Deklarationen }
  end;

var
  frm_User: Tfrm_User;

implementation

{$R *.dfm}

uses PCM.Main, PCM.Data,PCM.Functions.ChangePW;

procedure Tfrm_User.SetButtons;
begin
  if dm_PCM.int_optionenRight >= 2 then
  begin
    // Benutzer
    btn_OptionSaveUser.Enabled := qBenutzer.State in [dsInsert, dsEdit];
    btn_OptionCancelUser.Enabled := qBenutzer.State in [dsInsert, dsEdit];
    //Rechte
    btn_OptionSaveRight.Enabled := qRechte.State in [dsInsert, dsEdit];
    btn_OptionCancelRight.Enabled := qRechte.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.int_optionenRight = 3 then
  begin
    // Benutzer
    btn_OptionDeleteUser.Enabled := (not qBenutzer.Eof) and not (qBenutzer.State in [dsInsert, dsEdit]);
    //Rechte
    btn_OptionDeleteRight.Enabled := (not qRechte.Eof) and not (qRechte.State in [dsInsert, dsEdit]);
  end;
end;
procedure Tfrm_User.edt_OptionPasswordEnter(Sender: TObject);
begin
  if Length(edt_OptionPassword.Text) > 0 then
    edt_OptionPassword.Properties.ReadOnly:= true
  else
    edt_OptionPassword.Properties.ReadOnly:= false;
end;
procedure Tfrm_User.edt_OptionPasswordExit(Sender: TObject);
var
  astr_password: string;
begin
  if (edt_OptionPassword.text <> '') and (Length(edt_OptionPassword.text) < 32) then
  begin
    astr_password:= GetMD5Hash(edt_OptionPassword.text);
    edt_OptionPassword.text:= astr_password;
    btn_OptionSaveUser.Click;
  end;
end;
procedure Tfrm_User.FormDestroy(Sender: TObject);
begin
  SetGridViews(false);
end;
procedure Tfrm_User.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewUser := TSavedGridView.Create(GV_Benutzer,dm_PCM.iIDBenutzerPCM, cxGridDBTableView3);
    SaveGridViewUser.LoadView;
    SaveGridViewRight := TSavedGridView.Create(GV_Recht,dm_PCM.iIDBenutzerPCM, cxGridDBTableView1);
    SaveGridViewRight.LoadView;
  end
  else begin
    SaveGridViewUser.SaveView(0);
    SaveGridViewUser.Free;
    SaveGridViewRight.SaveView(0);
    SaveGridViewRight.Free;
  end;
end;
procedure Tfrm_User.FormShow(Sender: TObject);
begin
  Opendata;
  InitializeRights;
  Setbuttons;
	SetGridViews(True);
end;
procedure Tfrm_User.InitializeRights;
begin
  // Benutzerverwaltung / Lesen
  if dm_PCM.int_optionenRight = 1 then
  begin
    //// Benutzer
    // Toolbar
    btn_OptionNewUser.Enabled:= false;
    btn_OptionSaveUser.Enabled:= false;
    btn_OptionCancelUser.Enabled:= false;
    btn_OptionDeleteUser.Enabled:= false;
    // Editfelder
    edt_OptionUser.Enabled:= false;
    edt_OptionPassword.Enabled:= false;
    edt_OptionName.Enabled:= false;
    edt_OptionSurName.Enabled:= false;
    lucbx_OptionRights.Enabled:= false;
    // Button
    btn_OptionChangePassword.Enabled:= false;
    //// Rechte
    // Toolbar
    btn_OptionNewRight.Enabled:= false;
    btn_OptionSaveRight.Enabled:= false;
    btn_OptionCancelRight.Enabled:= false;
    btn_OptionDeleteRight.Enabled:= false;
    // Editfelder
    edt_OptionRight.Enabled:= false;
    lucbx_OptionOption.Enabled:= false;
    lucbx_OptionRights .Enabled:= false;
    lucbx_OptionVokabelDetail.Enabled:= false;
    ckbx_OptionAlluser.Enabled:= false;
  end;
  // Benutzerverwaltung / Ändern
  if dm_PCM.int_optionenRight = 2 then
  begin
    //// Benutzer
    // Toolbar
    btn_OptionNewUser.Enabled:= true;
    btn_OptionSaveUser.Enabled:= true;
    btn_OptionCancelUser.Enabled:= true;
    btn_OptionDeleteUser.Enabled:= false;
    // Editfelder
    edt_OptionUser.Enabled:= true;
    edt_OptionPassword.Enabled:= true;
    edt_OptionName.Enabled:= true;
    edt_OptionSurName.Enabled:= true;
    lucbx_OptionRights.Enabled:= true;
    // Button
    btn_OptionChangePassword.Enabled:= true;
    //// Rechte
    // Toolbar
    btn_OptionNewRight.Enabled:= true;
    btn_OptionSaveRight.Enabled:= true;
    btn_OptionCancelRight.Enabled:= true;
    btn_OptionDeleteRight.Enabled:= false;
    // Editfelder
    edt_OptionRight.Enabled:= true;
    lucbx_OptionOption.Enabled:= true;
    lucbx_OptionRights .Enabled:= true;
    lucbx_OptionVokabelDetail.Enabled:= true;
    ckbx_OptionAlluser.Enabled:= true;
  end;
  // Benutzerverwaltung / Voll
  if dm_PCM.int_optionenRight = 3 then
  begin
    //// Benutzer
    // Toolbar
    btn_OptionNewUser.Enabled:= true;
    btn_OptionSaveUser.Enabled:= true;
    btn_OptionCancelUser.Enabled:= true;
    btn_OptionDeleteUser.Enabled:= true;
    // Editfelder
    edt_OptionUser.Enabled:= true;
    edt_OptionPassword.Enabled:= true;
    edt_OptionName.Enabled:= true;
    edt_OptionSurName.Enabled:= true;
    lucbx_OptionRights.Enabled:= true;
    // Button
    btn_OptionChangePassword.Enabled:= true;
    //// Rechte
    // Toolbar
    btn_OptionNewRight.Enabled:= true;
    btn_OptionSaveRight.Enabled:= true;
    btn_OptionCancelRight.Enabled:= true;
    btn_OptionDeleteRight.Enabled:= true;
    // Editfelder
    edt_OptionRight.Enabled:= true;
    lucbx_OptionOption.Enabled:= true;
    lucbx_OptionRights .Enabled:= true;
    lucbx_OptionVokabelDetail.Enabled:= true;
    ckbx_OptionAlluser.Enabled:= true;
  end;
end;
procedure Tfrm_User.lucbx_BenutzerverwaltungPropertiesChange(Sender: TObject);
begin
  case lucbx_OptionOption.ItemIndex of
  0:
    begin
      lucbx_OptionOption.Style.Color := ColorRed;
    end;
  1:
    begin
      lucbx_OptionOption.Style.Color := ColorOrange;
    end;
  2:
    begin
      lucbx_OptionOption.Style.Color := ColorYellow;
    end;
  3:
    begin
      lucbx_OptionOption.Style.Color := ColorGreen;
    end;
  end;
end;
procedure Tfrm_User.lucbx_VokabelDetailPropertiesChange(Sender: TObject);
begin
  case lucbx_OptionVokabelDetail.ItemIndex of
  0:
    begin
      lucbx_OptionVokabelDetail.Style.Color := ColorRed;
    end;
  1:
    begin
      lucbx_OptionVokabelDetail.Style.Color := ColorOrange;
    end;
  2:
    begin
      lucbx_OptionVokabelDetail.Style.Color := ColorYellow;
    end;
  3:
    begin
      lucbx_OptionVokabelDetail.Style.Color := ColorGreen;
    end;
  end;
end;
procedure Tfrm_User.OPendata;
begin
  qBenutzer.Open;
  qRechte.Open;
  qRechte_Detail.Open;
end;
procedure Tfrm_User.SetbettonsEnableVisible(DataSet: TDataSet);
begin
  SetButtons;
end;
procedure Tfrm_User.btn_optioncancelRightClick(Sender: TObject);
begin
  qrechte.Cancel;
end;
procedure Tfrm_User.btn_OptionCancelUserClick(Sender: TObject);
begin
  qBenutzer.Cancel;
end;
procedure Tfrm_User.btn_OptionChangePasswordClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_changePW,frm_PCM_changePW);
  frm_PCM_changePW.Show;
end;
procedure Tfrm_User.btn_OptionNewUserClick(Sender: TObject);
begin
  if qBenutzer.State in [dsInsert, dsedit] then
    qBenutzer.Post;
  qBenutzer.Append;
  qBenutzer.Insert;
  if dm_PCM.int_optionenRight = 2 then
    qBenutzer.FieldByName('ID_Rechte').AsInteger:= 2
  else
    qBenutzer.FieldByName('ID_Rechte').AsInteger:= 1;
  edt_OptionUser.SetFocus;
end;
procedure Tfrm_User.btn_OptionSaveRightClick(Sender: TObject);
begin
  if qRechte.State in [dsInsert, dsEdit] then
  begin
    edt_OptionRight.PostEditValue;
    qRechte.Post;
  end;
end;
procedure Tfrm_User.btn_OptionSaveUserClick(Sender: TObject);
begin
  if qBenutzer.State in [dsInsert, dsEdit] then
  begin
    edt_OptionUser.PostEditValue;
    edt_OptionPassword.PostEditValue;
    edt_OptionName.PostEditValue;
    edt_OptionSurName.PostEditValue;
    qBenutzer.Post;
  end;
end;
procedure Tfrm_User.btn_OptionDeleteRightClick(Sender: TObject);
begin
  if qRechte.FieldByName('ID').AsInteger > 4 then
  begin
    qRechte.Delete;
  end
  else begin
    MessageDlg('Die vordefinierten Rechte können nicht gelöscht werden!'  , mtWarning, [mbOk], 0);
  end;
end;
procedure Tfrm_User.btn_OptionDeleteUserClick(Sender: TObject);
begin
  if qBenutzer.FieldByName('ID').AsInteger > 1 then
  begin
    qBenutzer.Delete;
  end
  else begin
    MessageDlg('Der Haupbenutzer kann nicht gelöscht werden!'  , mtWarning, [mbOk], 0);
  end;
end;
procedure Tfrm_User.btn_OptionNewRightClick(Sender: TObject);
begin
  if qRechte.State in [dsInsert, dsedit] then
    qRechte.Post;
  qRechte.Append;
  qRechte.Insert;
  qRechte.FieldByName('Optionen_Benutzer').AsInteger:= 0;
  qRechte.FieldByName('Optionen_Noten').AsInteger:= 0;
  qRechte.FieldByName('Alle_Benutzer').asString:= 'false';
  edt_OptionRight.SetFocus;
end;


end.

