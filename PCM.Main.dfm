object frm_PCM_Main: Tfrm_PCM_Main
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'PCM - Notenrechner'
  ClientHeight = 800
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object nb_main: TdxNavBar
    Left = 0
    Top = 0
    Width = 200
    Height = 800
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    View = 14
    OptionsImage.SmallImages = dm_PCM.imglst_16x16
    ExplicitHeight = 799
    object nb_Optionen: TdxNavBarGroup
      Caption = 'Optionen'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = nbi_User
        end
        item
          Item = nb_mainItem1
        end>
    end
    object nb_Noten: TdxNavBarGroup
      Caption = 'Notenverwaltung'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = nbi_Noten
        end>
    end
    object nb_mainGroup1: TdxNavBarGroup
      Caption = 'Info'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = nbi_Systeminfo
        end
        item
          Item = nb_Programminfo
        end>
    end
    object nb_Programm: TdxNavBarGroup
      Caption = 'Programm'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = nb_Passwortchange
        end
        item
          Item = nb_Abmelden
        end
        item
          Item = nbi_Beenden
        end>
    end
    object nbi_User: TdxNavBarItem
      Caption = 'Benutzerverwaltung'
      SmallImageIndex = 1
      OnClick = nbi_UserClick
    end
    object nbi_Noten: TdxNavBarItem
      Caption = 'Noten'#252'bersicht'
      SmallImageIndex = 79
      OnClick = nbi_NotenClick
    end
    object nbi_Systeminfo: TdxNavBarItem
      Caption = 'Systeminfo'
      SmallImageIndex = 21
      OnClick = nbi_SysteminfoClick
    end
    object nb_Programminfo: TdxNavBarItem
      Caption = 'Info'
      SmallImageIndex = 7
      OnClick = nb_ProgramminfoClick
    end
    object nbi_Beenden: TdxNavBarItem
      Caption = 'Beenden'
      SmallImageIndex = 0
      OnClick = nbi_BeendenClick
    end
    object nb_Passwortchange: TdxNavBarItem
      Caption = 'Passwort '#228'ndern'
      SmallImageIndex = 9
      Visible = False
    end
    object nb_Abmelden: TdxNavBarItem
      Caption = 'Abmelden'
      SmallImageIndex = 23
      OnClick = nb_AbmeldenClick
    end
    object nb_mainItem1: TdxNavBarItem
      Caption = 'Konfiguration'
      SmallImageIndex = 2
      OnClick = nb_mainItem1Click
    end
  end
  object pnl_MainRight: TcxGroupBox
    Left = 200
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 1
    ExplicitWidth = 1076
    ExplicitHeight = 799
    Height = 800
    Width = 1080
    object pcmain: TcxPageControl
      Left = 3
      Top = 3
      Width = 1074
      Height = 794
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = ts_B_Cal_TodoChart
      Properties.CloseButtonMode = cbmEveryTab
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoSort]
      ExplicitWidth = 1070
      ExplicitHeight = 793
      ClientRectBottom = 788
      ClientRectLeft = 2
      ClientRectRight = 1068
      ClientRectTop = 28
      object ts_B_Cal_TodoChart: TcxTabSheet
        Caption = 'Dashboard'
        ImageIndex = 81
        ExplicitWidth = 1062
        ExplicitHeight = 759
        object pnl_DashboardContacts: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          PanelStyle.Active = True
          Style.BorderStyle = ebsNone
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          TabOrder = 0
          ExplicitWidth = 1062
          ExplicitHeight = 759
          Height = 760
          Width = 1066
          object pnl_Contactmiddle: TcxGroupBox
            Left = 3
            Top = 313
            Align = alLeft
            Caption = 'Schulf'#228'cher'
            Style.BorderStyle = ebsFlat
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            TabOrder = 0
            ExplicitHeight = 443
            Height = 444
            Width = 491
            object chartctrl_Contact: TdxChartControl
              Left = 3
              Top = 15
              Width = 485
              Height = 420
              Align = alClient
              BorderStyle = cxcbsNone
              Legend.Title.Visible = False
              Titles = <>
              ExplicitHeight = 419
              object chartctrl_ContactChart: TdxChartSimpleDiagram
                Title.Visible = False
                Layout = Horizontal
                object chartctrl_ContactSeries: TdxChartSimpleSeries
                  Caption = 'Wert'
                  DataBindingType = 'DB'
                  DataBinding.DataSource = dm_PCM.ds_ChartNotenFach
                  DataBinding.ArgumentField.FieldName = 'Bezeichnung'
                  DataBinding.ValueField.FieldName = 'Wert'
                  ViewType = 'Pie'
                  View.ExplodedValueOptions.Mode = Max
                  View.SweepDirection = Counterclockwise
                  View.ValueLabels.LineLength = 5.000000000000000000
                  View.ValueLabels.TextAlignment = Far
                  View.ValueLabels.Visible = True
                  View.ValueLabels.Position = Outside
                  SortBy = Value
                  SortOrder = soAscending
                  ColorSchemeIndex = 0
                end
              end
            end
          end
          object pnl_Contactright: TcxGroupBox
            Left = 494
            Top = 313
            Align = alClient
            Caption = 'Notenarten'
            Style.BorderStyle = ebsFlat
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            TabOrder = 1
            ExplicitWidth = 565
            ExplicitHeight = 443
            Height = 444
            Width = 569
            object chartctrl_Adresses: TdxChartControl
              Left = 8
              Top = 15
              Width = 558
              Height = 420
              Align = alClient
              BorderStyle = cxcbsNone
              Legend.Title.Visible = False
              Titles = <>
              ExplicitWidth = 554
              ExplicitHeight = 419
              object chartctrl_AdressesChart: TdxChartSimpleDiagram
                Title.Visible = False
                Layout = Horizontal
                object chartctrl_AdressesSeries: TdxChartSimpleSeries
                  Caption = 'Wert'
                  DataBindingType = 'DB'
                  DataBinding.DataSource = dm_PCM.ds_ChartNotentyp
                  DataBinding.ArgumentField.FieldName = 'Bezeichnung'
                  DataBinding.ValueField.FieldName = 'Wert'
                  ViewType = 'Pie'
                  View.ExplodedValueOptions.Mode = Max
                  View.SweepDirection = Counterclockwise
                  View.ValueLabels.Appearance.FontOptions.Bold = True
                  View.ValueLabels.Appearance.FontOptions.Size = 9
                  View.ValueLabels.Appearance.FillOptions.Mode = Clear
                  View.ValueLabels.LineLength = 5.000000000000000000
                  View.ValueLabels.LineVisible = bTrue
                  View.ValueLabels.TextAlignment = Far
                  View.ValueLabels.Visible = True
                  View.ValueLabels.Position = Outside
                  SortBy = Value
                  SortOrder = soAscending
                  ColorSchemeIndex = 0
                end
              end
            end
            object spl_ChartContactsLeft: TcxSplitter
              Left = 3
              Top = 15
              Width = 5
              Height = 420
              Control = pnl_Contactmiddle
              ExplicitHeight = 419
            end
          end
          object pnl_ContactTop: TcxGroupBox
            Left = 3
            Top = 3
            Align = alTop
            Caption = 'Noten'
            Style.BorderStyle = ebsFlat
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            TabOrder = 2
            ExplicitWidth = 1056
            Height = 305
            Width = 1060
            object chartctrl_Birthday: TdxChartControl
              Left = 3
              Top = 15
              Width = 1054
              Height = 281
              Align = alClient
              BorderStyle = cxcbsNone
              Legend.Title.Visible = False
              Titles = <>
              ExplicitWidth = 1050
              object chartctrl_BirthdayChart: TdxChartSimpleDiagram
                Title.Visible = False
                Layout = Horizontal
                object chartctrl_BirthdaySeries: TdxChartSimpleSeries
                  Caption = 'Wert'
                  DataBindingType = 'DB'
                  DataBinding.DataSource = dm_PCM.ds_Chartnoten
                  DataBinding.ArgumentField.FieldName = 'Noten'
                  DataBinding.ValueField.FieldName = 'Wert'
                  ViewType = 'Pie'
                  View.SweepDirection = Counterclockwise
                  View.ValueLabels.LineLength = 10.000000000000000000
                  View.ValueLabels.Visible = True
                  View.ValueLabels.Position = Outside
                  SortBy = Value
                  ColorSchemeIndex = 0
                end
              end
            end
          end
          object spl_ChartContactsMain: TcxSplitter
            Left = 3
            Top = 308
            Width = 1060
            Height = 5
            AlignSplitter = salBottom
            Control = pnl_ContactTop
            ExplicitWidth = 1056
          end
        end
      end
    end
  end
  object loc_Lang: TcxLocalizer
    FileName = '.\cxLocalLang.ini'
    Left = 272
    Top = 480
  end
  object lafCtrl_Main: TcxLookAndFeelController
    Kind = lfFlat
    NativeStyle = False
    ScrollbarMode = sbmClassic
    SkinName = 'DevExpressDarkStyle'
    RenderMode = rmGDIPlus
    Left = 304
    Top = 264
  end
  object TrayIcon1: TTrayIcon
    Icons = dm_PCM.imglst_16x16
    IconIndex = 80
    Visible = True
    Left = 632
    Top = 408
  end
  object ppm_Main: TPopupMenu
    Images = dm_PCM.imglst_16x16
    Left = 448
    Top = 416
    object ppmbtn_Konfiguration: TMenuItem
      Caption = 'Konfiguration'
      ImageIndex = 2
      OnClick = ppmbtn_KonfigurationClick
    end
    object ppmbtn_Trenn1: TMenuItem
      Caption = '-'
    end
    object ppmbtn_Contacts: TMenuItem
      Caption = 'Noten'#252'bersicht'
      ImageIndex = 79
      OnClick = ppmbtn_ContactsClick
    end
    object ppmbtn_Trenn2: TMenuItem
      Caption = '-'
    end
    object ppmbtn_Systeminfo: TMenuItem
      Caption = 'Systeminfo'
      ImageIndex = 21
      OnClick = ppmbtn_SysteminfoClick
    end
    object ppmbtn_Programminfo: TMenuItem
      Caption = 'Info'
      ImageIndex = 7
      OnClick = ppmbtn_ProgramminfoClick
    end
    object ppmbtn_Trenn6: TMenuItem
      Caption = '-'
    end
    object ppmbtn_Beenden: TMenuItem
      Caption = 'Beenden'
      ImageIndex = 0
      OnClick = ppmbtn_BeendenClick
    end
  end
end
