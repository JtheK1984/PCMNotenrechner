unit PCM.Main;

interface

uses
  {$Region Uses}
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
  cxDBLookupComboBox,  cxNavigator, NTTranslator,
  dxNavBarBase, dxNavBarCollns, dxNavBar,inifiles,  vcl.Themes,
  dxBarBuiltInMenu,registry, cxMemo, cxRichEdit, Strutils,
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
  cxImageList, dxBar, cxGeometry,
  cxVariants, dxCustomData, cxCustomCanvas, dxCoreGraphics, dxChartCore,
  dxChartData, dxChartLegend, dxChartSimpleDiagram, dxChartXYDiagram,
  dxChartXYSeriesLineView, dxChartXYSeriesAreaView, dxChartMarkers,
  dxChartXYSeriesBarView, dxChartDBData, cxSplitter, dxCoreClasses,
  dxChartControl, dxSkinWXI, dxBarExtItems;
  {$EndRegion Uses}
type
  {$Region Type}
  TdxBarControlAccess = class(TdxBarControl);
  TdxBarAccess = class(TdxBar);
  TdxBarManagerAccess = class(TdxBarManager);
  TMethod = procedure of object;
  TModuleType = (mtForm, mtEvent);
  TModule = class(TCollectionItem)
  protected
    FFormClass: TFormClass;
    FInstance: Pointer;
    FEvent: TMethod;
    FType: TModuleType;
    FRight: Integer;
    FModuleName: String;
    FImageIndex: Integer;

    procedure SetFormClass(Value: TFormClass);
    procedure SetEvent(Value: TMethod);
  public
    property FormClass: TFormClass read FFormClass write SetFormClass;
    property Instance: Pointer read FInstance write FInstance;
    property Event: TMethod read FEvent write SetEvent;
    property Typ: TModuleType read FType;
    property Right: Integer read FRight write FRight;
    property ModuleName: String read FModuleName write FModuleName;
    property ImageIndex: Integer read FImageIndex write FImageIndex;
  end;

  Tfrm_PCM_Main = class(TForm)
    navbr_main: TdxNavBar;
    nb_Optionen: TdxNavBarGroup;
    nb_Noten: TdxNavBarGroup;
    nb_Programm: TdxNavBarGroup;
    nbi_User: TdxNavBarItem;
    nbi_Noten: TdxNavBarItem;
    nbi_Systeminfo: TdxNavBarItem;
    nb_Programminfo: TdxNavBarItem;
    nbi_Beenden: TdxNavBarItem;
    navbr_mainGroup1: TdxNavBarGroup;
    nb_Passwortchange: TdxNavBarItem;
    nb_Abmelden: TdxNavBarItem;
    loc_Lang: TcxLocalizer;
    lafCtrl_Main: TcxLookAndFeelController;
    navbr_mainItem1: TdxNavBarItem;
    pnl_MainRight: TcxGroupBox;
    pc_main: TcxPageControl;
    trayic_main: TTrayIcon;
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
    brmgr_main: TdxBarManager;
    tb_Main: TdxBar;
    brstc_OpenModule: TdxBarStatic;
    btn_Modulleiste: TdxBarLargeButton;
    btn_RefreshRights: TdxBarLargeButton;
    btn_CloseModul: TdxBarLargeButton;
    brstc_User: TdxBarStatic;
    procedure btn_CloseModulClick(Sender: TObject);
    procedure btn_ModulleisteClick(Sender: TObject);
    procedure btn_RefreshRightsClick(Sender: TObject);
    procedure pc_mainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure iSpracheClick(Sender: TObject);
    procedure NavBarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nbi_BeendenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppmbtn_KonfigurationClick(Sender: TObject);
    procedure ppmbtn_ContactsClick(Sender: TObject);
    procedure ppmbtn_SysteminfoClick(Sender: TObject);
    procedure ppmbtn_ProgramminfoClick(Sender: TObject);
    procedure ppmbtn_BeendenClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    Modules: TCollection;
    function CurrentModule: TForm;
    procedure Abmelden;
    procedure CloseModules;

    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    bAbmelden: Boolean;
    bol_Close: boolean;
    procedure LoadData;
  end;
  {$EndRegion Type}
var
  frm_PCM_Main: Tfrm_PCM_Main;

implementation

{$R *.dfm}

uses  PCM.Benutzerverwaltung,
      PCM.Data,
      PCM.Design,
      PCM.Functions,
      PCM.Functions.Appinfo,
      PCM.Functions.ChangePW,
      PCM.Functions.Languages,
      PCM.Functions.Lizenz,
      PCM.Functions.Login,
      PCM.Functions.Synch.Wait,
      PCM.Handbuch,
      PCM.Helper,
      PCMNotenrechner.Modul.B_Config,
      PCMNotenrechner.Modul.C_Noten,
      PCM.SQL,
			PCM.Strings;

////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Helperfunctions}
function Tfrm_PCM_Main.CurrentModule: TForm;
begin
  if pc_Main.ControlCount > 0 then
    Result := TForm(pc_Main.ActivePage.Controls[0])
  else
    Result := nil;
end;
procedure TModule.SetEvent(Value: TMethod);
begin
  if @Value <> @FEvent then
  begin
    FEvent := Value;
    FType := mtEvent;
  end;
end;
procedure TModule.SetFormClass(Value: TFormClass);
begin
  if Value <> FFormClass then
  begin
    FFormClass := Value;
    FType := mtForm;
  end;
end;
procedure Tfrm_PCM_Main.Abmelden;
begin
  bAbmelden := True;
  dm_PCM.bLogin := false;
  dm_PCM.bStyle:= false;
  Hide;
  Show;
end;
procedure Tfrm_PCM_Main.CloseModules;
var
  iPage: Integer;
begin
  for iPage := pc_Main.PageCount - 1 downto 0 do
  begin
    try
      TForm(pc_Main.Pages[iPage].Controls[0]).Close;
      TForm(pc_Main.Pages[iPage].Controls[0]).Free;
    except
    end;
    pc_Main.Pages[iPage].Free;
  end;
end;
procedure Tfrm_PCM_Main.LoadData;
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
{$EndRegion Helperfunctions}
////////////////////////////////////////////////////////////////////////////////
// Toolbar                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Toolbar}
procedure Tfrm_PCM_Main.btn_CloseModulClick(Sender: TObject);
begin
  if pc_Main.PageCount > 0 then
  begin
    if pc_Main.PageCount > 1 then
    begin
      brstc_OpenModule.Caption:= 'Bitte Modul wählen'
    end;
    TForm(pc_Main.ActivePage.Controls[0]).Close;
    TForm(pc_Main.ActivePage.Controls[0]).Free;
    pc_Main.ActivePage.Free;
  end;
end;
procedure Tfrm_PCM_Main.btn_ModulleisteClick(Sender: TObject);
begin
  navbr_main.Visible := not navbr_main.Visible;
  if navbr_main.Visible then
    btn_Modulleiste.Caption := rs_PCM_Modulliste_verstecken
  else
    btn_Modulleiste.Caption := rs_PCM_Modulliste_anzeigen;
end;
procedure Tfrm_PCM_Main.btn_RefreshRightsClick(Sender: TObject);
var
  Item: TdxNavBarItem;
  Module: TModule;
begin
  btn_RefreshRights.Enabled := False;
  try
    if pc_Main.PageCount > 0 then
    begin
      Module := TModule(Modules.FindItemID(pc_Main.ActivePage.Tag));
      if Module.Typ = mtForm then
      begin
        Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(Module.ModuleName).index];
        TForm(pc_Main.ActivePage.Controls[0]).Close;
        TForm(pc_Main.ActivePage.Controls[0]).Free;
        pc_Main.ActivePage.Free;
        NavBarClick(Item);
      end;
    end;
  finally
    btn_RefreshRights.Enabled := True;
  end;
end;
procedure Tfrm_PCM_Main.pc_mainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  brstc_OpenModule.Caption := NewPage.Caption;
end;
{$EndRegion Toolbar}
////////////////////////////////////////////////////////////////////////////////
// Navbarfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Navbar}
procedure Tfrm_PCM_Main.iSpracheClick(Sender: TObject);
var
  iniFile: TIniFile;
begin
  Application.CreateForm(Tfrm_Language,frm_Language);
  frm_Language.Position:= poScreenCenter;
  frm_Language.ClientHeight:= 214;
  frm_Language.ShowModal;
  TNtTranslator.SetNew(dm_PCM.slocale,[],'de');
  TNtTranslator.TranslateForms;
  iniFile := TIniFile.Create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  try
    iniFile.WriteString(PCM_Logname, 'Language', dm_PCm.sLocale);
  finally
    iniFile.Free;
  end;
  Caption:= PCM_Programmname;
  trayic_Main.popupmenu:= ppm_Main;
  LoadData;
  btn_RefreshRightsClick(Self);
end;
procedure Tfrm_PCM_Main.NavBarClick(Sender: TObject);
var
  Module: TModule;
  fTabForm: TForm;
  iPageIndex: Integer;

  function TabExist(sTabName: String): Integer;
  var
    iCount: Integer;
  begin
    Result := -1;
    for iCount := 0 to pc_Main.PageCount -1 do
    begin
      if pc_Main.Pages[iCount].Name = sTabName then
      begin
        Result := iCount;
        Break;
      end;
    end;
  end;

  function CreateNewTabSheet(sTabName: String): Integer;
  var
    tshNew: TcxTabSheet;
  begin
    tshNew := TcxTabSheet.Create(pc_Main);
    tshNew.PageControl := pc_Main;
    tshNew.Name := sTabName;
    pc_Main.ActivePage := tshNew;
    Result := pc_Main.ActivePageIndex;
  end;
var
  sModul,sModulCaption: String;
begin
  if navbr_main.Enabled then
  begin
    navbr_main.Enabled := False;
    TRY
      Module := TModule(Modules.FindItemID((Sender AS TdxNavBarItem).Tag));
      if Assigned(Module) then
      begin
        sModul:= Module.ModuleName;
        sModulCaption:= Module.ModuleName;
        case AnsiIndexStr(sModul, ['iBenutzerverwaltung','iDesign','iAudioplayer','iWebradio','iVideoplayer','iFotos','iSysteminfo','iInfo','iHandbuch']) of

        0:
          begin
            sModulCaption := 'i'  + rs_PCM_Benutzerverwaltung;
            dm_PCM.iModulTab:= 1;
          end;
        1:
          begin
            sModulCaption := 'i'  + rs_PCM_Konfiguration ;
            dm_PCM.iModulTab:= 1;
          end;
        2:
          begin
            sModul:= 'Mediacenter';
            sModulCaption := 'i'  + rs_PCMMediacenter_Musikplayer;
            dm_PCM.iModulTab:= 1;
          end;

        3:
          begin
            sModul:= 'Mediacenter';
            sModulCaption := 'i'  + rs_PCMMediacenter_Webradio;
            dm_PCM.iModulTab:= 2;
          end;
        4:
          begin
            sModul:= 'Mediacenter';
            sModulCaption := 'i'  + rs_PCMMediacenter_Videoplayer;
            dm_PCM.iModulTab:= 3;
          end;
        5:
          begin
            sModul:= 'Mediacenter';
            sModulCaption := 'i'  + rs_PCMMediacenter_Fotos;
            dm_PCM.iModulTab:= 4;
          end;
        6:
          begin
            sModulCaption := 'i'  + rs_PCM_Systeminformation;
            dm_PCM.iModulTab:= 3;
          end;
        7:
          begin
            sModulCaption := 'i'  + rs_PCM_Programminfo;
            dm_PCM.iModulTab:= 3;
          end;
				8:
					begin
            sModulCaption := 'i'  + rs_PCM_Handbuch;
            dm_PCM.iModulTab:= 3;
          end;
        end;
        iPageIndex := TabExist('tsh' + sModul);
        if iPageIndex > -1 then
        begin
          pc_Main.ActivePageIndex := iPageIndex;
          fTabForm := CurrentModule;
          if fTabForm <> nil then
            if not fTabForm.Focused then
              if Assigned(fTabForm.OnActivate) then
              begin
                fTabForm.OnActivate(Sender);
                brstc_OpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
              end;
          Exit;
        end;
        if Module.Typ = mtForm then
        begin
          Screen.Cursor := crHourglass;
          try
            ShowWaitForm(TForm(Self), PWideChar('Formular wird geladen'), 1,ClientWidth, Height);
            Application.ProcessMessages;
            WaitFormStep;
            TForm(Module.Instance^) := Module.FormClass.Create(Nil);
          finally
            Screen.Cursor := crDefault;
          end;
          fTabForm := TForm((Module.Instance)^);
          iPageIndex := CreateNewTabSheet('tsh' + sModul);
          fTabForm.Parent := pc_Main.Pages[iPageIndex];
          pc_Main.Pages[iPageIndex].Caption := Copy(sModulCaption, 2, Length(sModulCaption));
          pc_Main.Pages[iPageIndex].Tag := (Sender AS TdxNavBarItem).Tag;
          pc_Main.Pages[iPageIndex].ImageIndex := Module.ImageIndex;
          pc_Main.Pages[iPageIndex].InsertComponent(fTabForm);
          fTabForm.BorderStyle := bsNone;
          fTabForm.ALign:= AlClient;
          fTabForm.Enabled := True;
          fTabForm.Show;
       		CloseWaitform;
          brstc_OpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
        end
        else
          if Module.Typ = mtEvent then
          begin
            Module.Event;
          end;
      end
    FINALLY
      navbr_main.Enabled := True;
      Application.ProcessMessages;
    END;
  end;
end;
{$EndRegion Navbar}





procedure Tfrm_PCM_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WriteLog(PCM_Logname,rs_PCM_Beenden,0);
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
  procedure InitializeRights;
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
var
  iIndex: integer;
begin
  
end;

procedure Tfrm_PCM_Main.nbi_BeendenClick(Sender: TObject);
begin
  bol_close:= true;
  Application.Terminate;
end;
procedure Tfrm_PCM_Main.ppmbtn_BeendenClick(Sender: TObject);
begin
//  nbi_BeendenClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_ContactsClick(Sender: TObject);
begin
//  nbi_NotenClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_KonfigurationClick(Sender: TObject);
begin
//  nb_mainItem1Click(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_ProgramminfoClick(Sender: TObject);
begin
//  nb_ProgramminfoClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_SysteminfoClick(Sender: TObject);
begin
//  nbi_SysteminfoClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

end.
