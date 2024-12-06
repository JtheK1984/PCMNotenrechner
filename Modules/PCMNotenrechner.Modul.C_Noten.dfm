object frm_Noten: Tfrm_Noten
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_Noten'
  ClientHeight = 855
  ClientWidth = 1010
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 855
    Width = 1010
    object AC_pc_Noten: TcxPageControl
      Left = 3
      Top = 3
      Width = 1004
      Height = 849
      Align = alClient
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = ts_Noten_Detailliert
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea]
      Properties.TabSlants.Kind = skCutCorner
      Properties.TabWidth = 300
      ClientRectBottom = 843
      ClientRectLeft = 2
      ClientRectRight = 998
      ClientRectTop = 28
      object ts_Noten_Durchschnitt: TcxTabSheet
        Caption = 'Noten'#252'bersicht Durchschnitt'
        ImageIndex = 79
        object cxGroupBox12: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = 'Noten'#252'bersicht'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 815
          Width = 996
          object grd_Noten_Durchschnitt: TcxGrid
            Left = 3
            Top = 15
            Width = 990
            Height = 791
            Align = alClient
            BevelInner = bvNone
            BorderStyle = cxcbsNone
            TabOrder = 0
            TabStop = False
            LockedStateImageOptions.Effect = lsieDark
            object tv_Noten_Durchschnitt: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = dsAverage
              DataController.Filter.PercentWildcard = '*'
              DataController.Filter.UnderscoreWildcard = '?'
              DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                end>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <
                    item
                    end>
                  SummaryItems = <
                    item
                    end>
                end>
              OptionsBehavior.IncSearch = True
              OptionsBehavior.ShowHourglassCursor = False
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 14
              object tv_Noten_DurchschnittNachname1: TcxGridDBColumn
                DataBinding.FieldName = 'Benutzer'
                DataBinding.IsNullValueType = True
                Visible = False
                GroupIndex = 0
                SortIndex = 0
                SortOrder = soAscending
                Width = 180
              end
              object tv_Noten_DurchschnittBezeichnung1: TcxGridDBColumn
                Caption = 'Schulfach'
                DataBinding.FieldName = 'Bezeichnung'
                DataBinding.IsNullValueType = True
                MinWidth = 200
                Width = 200
              end
              object tv_Noten_DurchschnittNote_Durschschnitt1: TcxGridDBColumn
                Caption = 'Notendurchschnitt'
                DataBinding.FieldName = 'Summe'
                DataBinding.IsNullValueType = True
                MinWidth = 200
                Width = 200
              end
              object tv_Noten_DurchschnittVorrueckung1: TcxGridDBColumn
                Caption = 'Vorr'#252'ckungsfach'
                DataBinding.FieldName = 'Vorrueckung'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxLabelProperties'
                OnGetDataText = tv_Noten_DurchschnittVorrueckung1GetDataText
                MinWidth = 200
                Width = 200
              end
            end
            object glvl_Noten_Durchschnitt: TcxGridLevel
              GridView = tv_Noten_Durchschnitt
            end
          end
        end
      end
      object ts_Noten_Detailliert: TcxTabSheet
        Caption = 'Noten'#252'bersicht detailliert'
        ImageIndex = 79
        object cxScrollBox1: TcxScrollBox
          Left = 0
          Top = 58
          Width = 996
          Height = 757
          Align = alClient
          TabOrder = 0
          object cxGroupBox13: TcxGroupBox
            Left = 0
            Top = 76
            Align = alClient
            Caption = 'Noten'#252'bersicht'
            TabOrder = 1
            Height = 679
            Width = 994
            object grd_Noten_Detail: TcxGrid
              Left = 3
              Top = 15
              Width = 988
              Height = 655
              Align = alClient
              BevelInner = bvNone
              BorderStyle = cxcbsNone
              TabOrder = 0
              TabStop = False
              LockedStateImageOptions.Effect = lsieDark
              object tv_Noten_Detail: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                DataController.DataSource = dsNoten
                DataController.Filter.PercentWildcard = '*'
                DataController.Filter.UnderscoreWildcard = '?'
                DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                  end>
                DataController.Summary.SummaryGroups = <
                  item
                    Links = <
                      item
                      end>
                    SummaryItems = <
                      item
                      end>
                  end>
                OptionsBehavior.IncSearch = True
                OptionsBehavior.ShowHourglassCursor = False
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsView.CellEndEllipsis = True
                OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
                OptionsView.GroupFooterMultiSummaries = True
                OptionsView.HeaderFilterButtonShowMode = fbmButton
                OptionsView.Indicator = True
                OptionsView.IndicatorWidth = 14
                object tv_Noten_DetailID_Benutzer1: TcxGridDBColumn
                  Caption = 'Benutzer'
                  DataBinding.FieldName = 'ID_Benutzer'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Benutzer'
                    end>
                  Properties.ListSource = dsBenutzer
                  Visible = False
                  GroupIndex = 0
                  Options.SortByDisplayText = isbtOn
                  SortIndex = 0
                  SortOrder = soAscending
                  Width = 140
                end
                object tv_Noten_DetailID_Notenfach1: TcxGridDBColumn
                  Caption = 'Schulfach'
                  DataBinding.FieldName = 'ID_Notenfach'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      SortOrder = soAscending
                      FieldName = 'Bezeichnung'
                    end>
                  Properties.ListOptions.AnsiSort = True
                  Properties.ListSource = dm_PCM.dsnotenfach
                  Options.SortByDisplayText = isbtOn
                  SortIndex = 1
                  SortOrder = soAscending
                  Width = 180
                end
                object tv_Noten_DetailID_Notentyp1: TcxGridDBColumn
                  Caption = 'Art der Note'
                  DataBinding.FieldName = 'ID_Notentyp'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Bezeichnung'
                    end>
                  Properties.ListSource = dm_PCM.dsnotentyp
                  Options.SortByDisplayText = isbtOn
                  SortIndex = 2
                  SortOrder = soAscending
                  Width = 180
                end
                object tv_Noten_DetailNote1: TcxGridDBColumn
                  DataBinding.FieldName = 'Note'
                  Width = 100
                end
                object tv_Noten_DetailGeschrieben_Am1: TcxGridDBColumn
                  Caption = 'Geschrieben am'
                  DataBinding.FieldName = 'Geschrieben_Am'
                  MinWidth = 250
                  Width = 250
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = tv_Noten_Detail
              end
            end
          end
          object cxGroupBox14: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Notenverwaltung'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 76
            Width = 994
            object btn_Noten_Detailliert_NewFach: TcxButton
              Left = 273
              Top = 21
              Width = 25
              Height = 21
              Caption = '...'
              TabOrder = 4
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btn_Noten_Detailliert_NewFachClick
            end
            object btn_Noten_Detailliert_NewTyp: TcxButton
              Left = 617
              Top = 19
              Width = 25
              Height = 21
              Caption = '...'
              TabOrder = 5
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btn_Noten_Detailliert_NewTypClick
            end
            object cbx_Noten_Note: TcxDBComboBox
              Left = 67
              Top = 46
              DataBinding.DataField = 'Note'
              DataBinding.DataSource = dsNoten
              ParentFont = False
              Properties.Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6')
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 200
            end
            object cbx_Noten_notenart: TcxDBLookupComboBox
              Left = 411
              Top = 19
              DataBinding.DataField = 'ID_Notentyp'
              DataBinding.DataSource = dsNoten
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  SortOrder = soAscending
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dm_PCM.dsnotentyp
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 200
            end
            object cbx_Schulfach: TcxDBLookupComboBox
              Left = 67
              Top = 21
              DataBinding.DataField = 'ID_NotenFach'
              DataBinding.DataSource = dsNoten
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  SortOrder = soAscending
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dm_PCM.dsnotenfach
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 200
            end
            object dt_Noten_Geschrieben: TcxDBDateEdit
              Left = 411
              Top = 46
              DataBinding.DataField = 'Geschrieben_Am'
              DataBinding.DataSource = dsNoten
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 200
            end
            object lbl_Noten_Detailliert_Geschriebenam: TcxLabel
              Left = 323
              Top = 49
              Caption = 'Geschrieben am:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Noten_Detailliert_Notenart: TcxLabel
              Left = 323
              Top = 24
              Caption = 'Art der Note:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Noten_Detailliert_Schulfach: TcxLabel
              Left = 9
              Top = 24
              Caption = 'Schulfach:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Noten_Detailliert_Schulnote: TcxLabel
              Left = 10
              Top = 49
              Caption = 'Schulnote:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
        end
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 996
          Height = 58
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 536
    Top = 216
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1022
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_NotenNew'
        end
        item
          Visible = True
          ItemName = 'btn_NotenSave'
        end
        item
          Visible = True
          ItemName = 'btn_NotenCancel'
        end
        item
          Visible = True
          ItemName = 'btn_NotenDelete'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_NotenNew: TdxBarLargeButton
      Caption = 'Note &anlegen'
      Category = 0
      Hint = 'Note anlegen'
      Visible = ivAlways
      OnClick = btn_NotenNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_NotenDelete: TdxBarLargeButton
      Caption = 'Note &l'#246'schen'
      Category = 0
      Hint = 'Note l'#246'schen'
      Visible = ivAlways
      OnClick = btn_NotenDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_NotenCancel: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_NotenCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_NotenSave: TdxBarLargeButton
      Caption = 'Note &speichern'
      Category = 0
      Hint = 'Note speichern'
      Visible = ivAlways
      OnClick = btn_NotenSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
  end
  object pm_Noten_Durchschnitt: TcxGridPopupMenu
    Grid = grd_Noten_Durchschnitt
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
      end>
    Left = 424
    Top = 232
  end
  object pm_Noten_Detail: TcxGridPopupMenu
    Grid = grd_Noten_Detail
    PopupMenus = <>
    Left = 312
    Top = 216
  end
  object qAverage: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select SUM(n.Note * nt.Faktor)  / SUM(nt.faktor) as Summe,nf.Bez' +
        'eichnung,nf.Vorrueckung, b.Benutzer '
      'From notenrechner_noten n'
      'LEFT OUTER JOIN Benutzer B ON b.ID= n.ID_Benutzer '
      'LEFT OUTER JOIN Notenrechner_typ nt ON nt.ID = n.ID_NotenTyp '
      
        'LEFT OUTER JOIN Notenrechner_Faecher nf ON nf.ID = n.ID_NotenFac' +
        'h '
      'Group by nf.Bezeichnung, nf.Vorrueckung')
    Left = 94
    Top = 128
  end
  object qNoten: TFDQuery
    Active = True
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID, ID_Notentyp, ID_NotenFach, Note, Geschrieben_AM, ID_B' +
        'enutzer'
      'From notenrechner_Noten'
      '')
    Left = 94
    Top = 184
  end
  object dsAverage: TDataSource
    DataSet = qAverage
    Left = 166
    Top = 144
  end
  object dsNoten: TDataSource
    DataSet = qNoten
    Left = 166
    Top = 200
  end
  object qBenutzer: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID, Benutzer, Vorname, Nachname,Passwort, ID_Rechte  From' +
        ' Benutzer')
    Left = 982
    Top = 8
  end
  object dsBenutzer: TDataSource
    DataSet = qBenutzer
    Left = 982
    Top = 16
  end
end
