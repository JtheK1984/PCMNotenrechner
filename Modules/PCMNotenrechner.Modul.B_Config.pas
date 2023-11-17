unit PCMNotenrechner.Modul.B_Config;

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
  dxSkinWXI, Vcl.VirtualImage, Vcl.BaseImageCollection, Vcl.ImageCollection;

type
  Tfrm_Config = class(TForm)
    pc_Options: TcxPageControl;
    ts_D_Personal: TcxTabSheet;
    grpbx_DesignStyle: TcxGroupBox;
    grpbx_vorschau: TcxGroupBox;
    pnl_Vorschau: TcxGroupBox;
    des_ToolButton3: TcxButton;
    des_ToolButton2: TcxButton;
    des_ToolButton1: TcxButton;
    des_Label1: TcxLabel;
    des_Edit1: TcxTextEdit;
    des_CheckBox1: TcxCheckBox;
    des_RadioButton1: TcxRadioButton;
    des_Button1: TcxButton;
    des_Button2: TcxButton;
    des_Button3: TcxButton;
    des_grid: TcxGrid;
    des_gridDBTableView1: TcxGridDBTableView;
    des_gridDBTableView1Column1: TcxGridDBColumn;
    des_gridDBTableView1Column2: TcxGridDBColumn;
    des_gridDBTableView1Column3: TcxGridDBColumn;
    des_gridLevel1: TcxGridLevel;
    grpbx_Style: TcxGroupBox;
    cmbbx_Style: TcxComboBox;
    lbl_Style: TcxLabel;
    grpbx_Design: TcxGroupBox;
    lbl_design: TcxLabel;
    cmbbx_Design: TcxComboBox;
    brmgr_Config: TdxBarManager;
    dckctrl_Personal: TdxBarDockControl;
    tb_Config: TdxBar;
    btn_DesignSave: TdxBarLargeButton;
    pnl_right: TcxGroupBox;
    cxImageList1: TcxImageList;
    img_Vorschau: TVirtualImage;
    ImageCollection1: TImageCollection;
    procedure FormShow(Sender: TObject);
    procedure btn_DesignSaveClick(Sender: TObject);
    procedure cbx_DesignPropertiesChange(Sender: TObject);
    procedure cbx_StylePropertiesChange(Sender: TObject);
    procedure cmbbx_StylePropertiesChange(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frm_Config: Tfrm_Config;

implementation

{$R *.dfm}

uses PCM.Main, PCM.Data;
procedure Tfrm_Config.cbx_DesignPropertiesChange(Sender: TObject);
begin
  if cmbbx_Design.ItemIndex > -1 then
  begin
    pnl_vorschau.Style.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    pnl_vorschau.Height := pnl_vorschau.Height + 1;
    pnl_vorschau.Height := pnl_vorschau.Height - 1;
    des_Label1.Style.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    des_Edit1.Style.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    des_CheckBox1.Style.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    des_RadioButton1.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    des_grid.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    des_Button1.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    des_Button2.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    des_Button3.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    des_ToolButton1.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    des_ToolButton2.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    des_ToolButton3.LookAndFeel.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
  end;
end;
procedure Tfrm_Config.cbx_StylePropertiesChange(Sender: TObject);
begin
  if cmbbx_Style.ItemIndex > -1 then
    img_Vorschau.imageindex:=cmbbx_Style.ItemIndex;
end;
procedure Tfrm_Config.cmbbx_StylePropertiesChange(Sender: TObject);
begin
  if cmbbx_Style.ItemIndex > -1 then
    img_Vorschau.imageindex:=cmbbx_Style.itemindex;
end;

procedure Tfrm_Config.btn_DesignSaveClick(Sender: TObject);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  try
    iniFile.WriteString('PCMNotenrechner', 'Design', cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex]);
    iniFile.WriteString('PCMNotenrechner', 'Style', cmbbx_Style.Properties.Items[cmbbx_Style.ItemIndex]);
    frm_PCM_main.lafCtrl_Main.SkinName := cmbbx_Design.Properties.Items[cmbbx_Design.ItemIndex];
    if dm_PCM.sStyle <> cmbbx_Style.Properties.Items[cmbbx_Style.ItemIndex]
    then
    begin
      if MessageDlg('Soll der gewählte Style sofort übernommen werden? ' + slinebreak + 'Bei Ja wird das Programm neu gestartet.', mtInformation,[mbYes, mbNo], 0) = mrYes then
      begin
        dm_PCM.bStyle := true;
        TStyleManager.TRYSetStyle(cmbbx_Style.Properties.Items[cmbbx_Style.ItemIndex]);
      end;
    end;
  finally
    iniFile.Free;
  end;
end;
procedure Tfrm_Config.FormShow(Sender: TObject);
begin
  pc_options.Align:= alclient;
  cmbbx_Design.ItemIndex := cmbbx_Design.Properties.Items.IndexOf(dm_PCM.sDesign);
  cmbbx_Style.ItemIndex := cmbbx_Style.Properties.Items.IndexOf(dm_PCM.sStyle);
  if dm_PCM.bStyle then
    pc_Options.ActivePage := ts_D_Personal;
end;

end.

