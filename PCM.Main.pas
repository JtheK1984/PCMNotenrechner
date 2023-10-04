unit PCM.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxPCdxBarPopupMenu, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, Vcl.ComCtrls,
  Vcl.ToolWin, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxClasses, cxPC, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Menus, Data.FMTBcd, Data.SqlExpr,
  Data.DBXMySQL,Datasnap.DBClient, Datasnap.Provider,
  Vcl.DBCtrls, Vcl.Mask, dxGDIPlusClasses, Vcl.ExtCtrls,
  cxProgressBar, Vcl.Buttons, cxContainer, cxDBProgressBar,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox,  cxNavigator,
  dxNavBarBase, dxNavBarCollns, dxNavBar,inifiles,  vcl.Themes,
  dxBarBuiltInMenu,registry, cxMemo, cxRichEdit,
  cxDBRichEdit, cxDBEdit, cxCheckBox, dxDateRanges, dxScrollbarAnnotations, System.ImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLabel, cxCalendar, cxScrollBox,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxLocalization,system.UITypes,
  dxSkinsCore, dxSkinMetropolisDark, cxButtons, dxStatusBar, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, cxRadioGroup, cxImage,
  cxImageList, dxBar,
  PCM.Benutzerverwaltung,
  PCMNotenrechner.Modul.B_Config,
  PCMNotenrechner.Modul.C_Noten,PCM.Functions,PCM.Functions.AppInfo, cxGeometry,
  cxVariants, dxCustomData, cxCustomCanvas, dxCoreGraphics, dxChartCore,
  dxChartData, dxChartLegend, dxChartSimpleDiagram, dxChartXYDiagram,
  dxChartXYSeriesLineView, dxChartXYSeriesAreaView, dxChartMarkers,
  dxChartXYSeriesBarView, dxChartDBData, cxSplitter, dxCoreClasses,
  dxChartControl, dxSkinWXI;

type
  Tfrm_PCM_Main = class(TForm)
    nb_main: TdxNavBar;
    nb_Optionen: TdxNavBarGroup;
    nb_Noten: TdxNavBarGroup;
    nb_Programm: TdxNavBarGroup;
    nbi_User: TdxNavBarItem;
    nbi_Noten: TdxNavBarItem;
    nbi_Systeminfo: TdxNavBarItem;
    nb_Programminfo: TdxNavBarItem;
    nbi_Beenden: TdxNavBarItem;
    nb_mainGroup1: TdxNavBarGroup;
    nb_Passwortchange: TdxNavBarItem;
    nb_Abmelden: TdxNavBarItem;
    loc_Lang: TcxLocalizer;
    lafCtrl_Main: TcxLookAndFeelController;
    nb_mainItem1: TdxNavBarItem;
    pnl_MainRight: TcxGroupBox;
    pcmain: TcxPageControl;
    TrayIcon1: TTrayIcon;
    ppm_Main: TPopupMenu;
    ppmbtn_Konfiguration: TMenuItem;
    ppmbtn_Trenn1: TMenuItem;
    ppmbtn_Contacts: TMenuItem;
    ppmbtn_Trenn2: TMenuItem;
    ppmbtn_Systeminfo: TMenuItem;
    ppmbtn_Programminfo: TMenuItem;
    ppmbtn_Trenn6: TMenuItem;
    ppmbtn_Beenden: TMenuItem;
    ts_B_Cal_TodoChart: TcxTabSheet;
    pnl_DashboardContacts: TcxGroupBox;
    pnl_Contactmiddle: TcxGroupBox;
    chartctrl_Contact: TdxChartControl;
    chartctrl_ContactChart: TdxChartSimpleDiagram;
    chartctrl_ContactSeries: TdxChartSimpleSeries;
    pnl_Contactright: TcxGroupBox;
    chartctrl_Adresses: TdxChartControl;
    chartctrl_AdressesChart: TdxChartSimpleDiagram;
    chartctrl_AdressesSeries: TdxChartSimpleSeries;
    spl_ChartContactsLeft: TcxSplitter;
    pnl_ContactTop: TcxGroupBox;
    chartctrl_Birthday: TdxChartControl;
    chartctrl_BirthdayChart: TdxChartSimpleDiagram;
    chartctrl_BirthdaySeries: TdxChartSimpleSeries;
    spl_ChartContactsMain: TcxSplitter;
    procedure FormShow(Sender: TObject);
    procedure nbi_BeendenClick(Sender: TObject);
    procedure nbi_SysteminfoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure nb_AbmeldenClick(Sender: TObject);
    procedure nb_mainItem1Click(Sender: TObject);
    procedure nbi_NotenClick(Sender: TObject);
    procedure ppmbtn_KonfigurationClick(Sender: TObject);
    procedure ppmbtn_ContactsClick(Sender: TObject);
    procedure ppmbtn_SysteminfoClick(Sender: TObject);
    procedure ppmbtn_ProgramminfoClick(Sender: TObject);
    procedure ppmbtn_BeendenClick(Sender: TObject);
    procedure nb_ProgramminfoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure nbi_UserClick(Sender: TObject);
  private
    FfrmModulUser: array of Tfrm_USer;
    FfrmModulConfig: array of Tfrm_config;
    FfrmModulNoten: array of Tfrm_Noten;
    FfrmModulSysinfo: array of Tfrm_PCM_System;
    FfrmModulAppinfo: array of Tfrm_PCM_InfoApp;
    bAbmelden: Boolean;
    bol_Close: boolean;
    procedure InitializeRights;
    procedure Abmelden;
    procedure AddTabsheet(APageControl: TcxPAgeCOntrol; ACaption: string;ATag: Integer);
    function CheckTabExist(sTabName: String) : integer;
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    procedure LoadSQLs;
  end;

var
  frm_PCM_Main: Tfrm_PCM_Main;

implementation

{$R *.dfm}

uses  PCM.Data,
      PCM.Functions.Login;

function Tfrm_PCM_Main.CheckTabExist(sTabName: String) : integer;
var
  iCount: Integer;
begin
  Result := -1;
  for iCount := 0 to pcMain.PageCount -1 do
  begin
    if pcMain.Pages[iCount].Name = sTabName then
    begin
      Result := iCount;
      Break;
    end;
  end;
end;
procedure Tfrm_PCM_Main.AddTabsheet(APageControl: TcxPAgeControl; ACaption: string;ATag: Integer);
var
  ts_Create: TcxTabSheet;
begin
  ts_Create:= TcxTabSheet.Create(APageControl);
  ts_Create.Caption:= ACaption;
  ts_Create.Name:= 'tshModul_' + IntToStr(ATag);
  ts_Create.Tag:= ATag;
  ts_Create.PageIndex:= ATag;
  ts_Create.PageControl:= APageControl;
end;



procedure Tfrm_PCM_Main.InitializeRights;
begin
  dm_PCM.qry_work.SQL.Text:= 'SELECT vr.ID,vr.Benutzer,vr.nr_Noten,vr.Alle_Benutzer FROM benutzer vb '+
                             'LEFT OUTER JOIN rechte vr ON vr.ID = vb.ID_rechte ' +
                             'WHERE vb.id =  :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger := dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_work.Open;
  dm_PCM.int_NotenRight:= dm_PCM.qry_work.FieldByName('nr_Noten').asInteger;
  dm_PCM.bAlleBenutzer:= dm_PCM.qry_work.FieldByName('alle_benutzer').AsBoolean;
  dm_PCM.qry_work.Close;
end;
procedure Tfrm_PCM_Main.Abmelden;
begin
  bAbmelden := True;
  Hide;
  Show;
  InitializeRights;
end;
procedure Tfrm_PCM_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WriteLog(PCM_Logname,'Programm beendet',0);
  bol_Close:= true
end;
procedure Tfrm_PCM_Main.FormDeactivate(Sender: TObject);
begin
  bol_Close:= true
end;
procedure Tfrm_PCM_Main.FormDestroy(Sender: TObject);
begin
  bol_Close:= true
end;
procedure Tfrm_PCM_Main.FormResize(Sender: TObject);
begin
  pnl_ContactTop.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_Contactmiddle.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_Contactright.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_Contactmiddle.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
  pnl_ContactRight.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
end;
procedure Tfrm_PCM_Main.FormShow(Sender: TObject);
var
  iIndex: integer;
begin
  TrayIcon1.Hint:= PCM_Programmname;
  if not dm_PCM.ReadServerAdress then
  begin
    Application.Terminate;
  end
  else begin
    try
      loc_lang.LoadFromFile(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\cxLocalLang.ini');
      loc_lang.LanguageIndex := 1;
    except
      on e:Exception do
      begin
        MessageDlg('Sprachdatei kann nicht geladen werden.', mtWarning, [mbOk], 0);
      end
    end;
    if dm_PCM.bStyle then
    begin
      iIndex:= CheckTabExist('tshModul_2');
      if iIndex <> -1 then
      begin
        pcMain.ActivePageIndex:= iIndex;
        Screen.Cursor:= crDefault;
      end
      else begin
        AddTabsheet(pcMain,'Konfiguration',2);
        SetLength(FfrmModulConfig, Length(FfrmModulConfig) +1);
        FfrmModulConfig[High(FfrmModulConfig)] := Tfrm_Config.Create(Self);
        FfrmModulConfig[High(FfrmModulConfig)].BorderStyle := bsNone;
        FfrmModulConfig[High(FfrmModulConfig)].ALign:= ALCLient;
        FfrmModulConfig[High(FfrmModulConfig)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
        FfrmModulConfig[High(FfrmModulConfig)].Show;
        pcMain.ActivePageIndex:= pcMain.PageCount -1;
      end;
    end
    else begin
      dm_PCM.bNewLiceneCheck:= false;
      dm_PCM.CheckLizenzNew;
      if dm_PCM.bNewLiceneCheck = false then
        Application.Terminate;


      if not bAbmelden then
        dm_PCM.bLogin := dm_pcm.Autologin
      else
        dm_PCM.bLogin := false;

      if not dm_PCM.blogin then
      begin
        Application.CreateForm(Tfrm_PCM_Login, frm_PCM_Login);
        dm_PCM.blogin := frm_pcm_login.Login_User;
        frm_PCM_Login.Free;
      end;
      if not dm_PCM.blogin then
			begin
        Application.Terminate;
				exit;
			end;
      InitializeRights;
      bAbmelden:= False;
      loc_lang.LoadFromFile(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\cxLocalLang.ini');
      loc_lang.LanguageIndex := 1;
      LoadSQLs;
      FormResize(Self);
      WriteLog(PCM_Logname,'Programm gestartet',0);
      Caption:=PCM_Programmname;
      if dm_PCM.bDemo then
        Caption:=PCM_Programmname + ' - Demolizenz gültig bis ' + DateTostr(dm_PCM.dtGueltig);
    end;
  end;
  TrayIcon1.PopupMenu:= ppm_main;
end;
procedure Tfrm_PCM_Main.LoadSQLs;
begin
  if dm_PCM.qry_ChartNotenFach.Active then
  begin
    dm_PCM.qry_ChartNotenFach.Refresh
  end
  else begin
    dm_PCM.qry_ChartNotenFach.Open;
    dm_PCM.qry_ChartNotenFach.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartNotenFach.Filtered:= true;
  end;
  if dm_PCM.qry_ChartNotentyp.Active then
  begin
    dm_PCM.qry_ChartNotentyp.Refresh
  end
  else begin
    dm_PCM.qry_ChartNotentyp.Open;
    dm_PCM.qry_ChartNotentyp.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartNotentyp.Filtered:= true;
  end;
  if dm_PCM.qry_ChartNoten.Active then
  begin
    dm_PCM.qry_ChartNoten.Refresh
  end
  else begin
    dm_PCM.qry_ChartNoten.Open;
    dm_PCM.qry_ChartNoten.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartNoten.Filtered:= true;
  end;
end;
procedure Tfrm_PCM_Main.nbi_BeendenClick(Sender: TObject);
begin
  bol_close:= true;
  Application.Terminate;
end;
procedure Tfrm_PCM_Main.nbi_NotenClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_3');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'Notenübersicht',3);
    SetLength(FfrmModulNoten, Length(FfrmModulNoten) +1);
    FfrmModulNoten[High(FfrmModulNoten)] := Tfrm_Noten.Create(Self);
    FfrmModulNoten[High(FfrmModulNoten)].BorderStyle := bsNone;
    FfrmModulNoten[High(FfrmModulNoten)].ALign:= ALCLient;
    FfrmModulNoten[High(FfrmModulNoten)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    FfrmModulNoten[High(FfrmModulNoten)].Show;
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    pcmain.ActivePage.ImageIndex:= 79;
  end;
end;

procedure Tfrm_PCM_Main.nbi_SysteminfoClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_9');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'Systeminformation',9);
    SetLength(FfrmModulSysinfo, Length(FfrmModulSysinfo) +1);
    FfrmModulSysinfo[High(FfrmModulSysinfo)] := Tfrm_PCM_System.Create(Self);
    FfrmModulSysinfo[High(FfrmModulSysinfo)].BorderStyle := bsNone;
    FfrmModulSysinfo[High(FfrmModulSysinfo)].ALign:= ALCLient;
    FfrmModulSysinfo[High(FfrmModulSysinfo)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulSysinfo[High(FfrmModulSysinfo)].Show;
    pcmain.ActivePage.ImageIndex:= 21;
  end;
end;
procedure Tfrm_PCM_Main.nbi_UserClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_1');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'Benutzerverwaltung',1);
    SetLength(FfrmModulUser, Length(FfrmModulUser) +1);
    FfrmModulUser[High(FfrmModulUser)] := Tfrm_User.Create(Self);
    FfrmModulUser[High(FfrmModulUser)].BorderStyle := bsNone;
    FfrmModulUser[High(FfrmModulUser)].ALign:= ALCLient;
    FfrmModulUser[High(FfrmModulUser)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    FfrmModulUser[High(FfrmModulUser)].Show;
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    pcmain.ActivePage.ImageIndex:= 1;
  end;

end;

procedure Tfrm_PCM_Main.nb_AbmeldenClick(Sender: TObject);
begin
  Abmelden;
end;
procedure Tfrm_PCM_Main.nb_mainItem1Click(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_2');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'Konfiguration',2);
    SetLength(FfrmModulConfig, Length(FfrmModulConfig) +1);
    FfrmModulConfig[High(FfrmModulConfig)] := Tfrm_Config.Create(Self);
    FfrmModulConfig[High(FfrmModulConfig)].BorderStyle := bsNone;
    FfrmModulConfig[High(FfrmModulConfig)].ALign:= ALCLient;
    FfrmModulConfig[High(FfrmModulConfig)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    FfrmModulConfig[High(FfrmModulConfig)].Show;
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    pcmain.ActivePage.ImageIndex:= 2;
  end;
end;



procedure Tfrm_PCM_Main.nb_ProgramminfoClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_10');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'Programminfo',10);
    SetLength(FfrmModulAppinfo, Length(FfrmModulAppinfo) +1);
    FfrmModulAppinfo[High(FfrmModulAppinfo)] := Tfrm_PCM_InfoApp.Create(Self);
    FfrmModulAppinfo[High(FfrmModulAppinfo)].BorderStyle := bsNone;
    FfrmModulAppinfo[High(FfrmModulAppinfo)].ALign:= ALCLient;
    FfrmModulAppinfo[High(FfrmModulAppinfo)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulAppinfo[High(FfrmModulAppinfo)].Show;
    pcmain.ActivePage.ImageIndex:= 7;
  end;
end;

procedure Tfrm_PCM_Main.ppmbtn_BeendenClick(Sender: TObject);
begin
  nbi_BeendenClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_ContactsClick(Sender: TObject);
begin
  nbi_NotenClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_KonfigurationClick(Sender: TObject);
begin
  nb_mainItem1Click(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_ProgramminfoClick(Sender: TObject);
begin
  nb_ProgramminfoClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_SysteminfoClick(Sender: TObject);
begin
  nbi_SysteminfoClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

end.
