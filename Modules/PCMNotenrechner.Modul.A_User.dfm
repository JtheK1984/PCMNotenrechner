object frm_User: Tfrm_User
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_Config'
  ClientHeight = 922
  ClientWidth = 1195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnl_right: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 922
    Width = 1195
    object AB_pc_Rights: TcxPageControl
      Left = 2
      Top = 2
      Width = 1191
      Height = 918
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = ts_User
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.TabSlants.Kind = skCutCorner
      Properties.TabWidth = 100
      ClientRectBottom = 914
      ClientRectLeft = 4
      ClientRectRight = 1187
      ClientRectTop = 25
      object ts_User: TcxTabSheet
        Caption = 'Benutzer'
        ImageIndex = 0
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 58
          Align = alClient
          Caption = 'Benutzerdetails'
          TabOrder = 0
          Height = 831
          Width = 1183
          object cxGrid3: TcxGrid
            Left = 2
            Top = 113
            Width = 1179
            Height = 716
            Align = alClient
            BevelInner = bvLowered
            BevelKind = bkFlat
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = False
            LockedStateImageOptions.Effect = lsieDark
            object cxGridDBTableView3: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = dsBenutzer
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
              Filtering.ColumnPopup.MultiSelect = False
              OptionsBehavior.IncSearch = True
              OptionsBehavior.ShowHourglassCursor = False
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.IndicatorWidth = 14
              object cxGridDBColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'Benutzer'
                DataBinding.IsNullValueType = True
                Width = 324
              end
              object cxGridDBTableView3Column1: TcxGridDBColumn
                DataBinding.FieldName = 'Vorname'
                DataBinding.IsNullValueType = True
                Width = 323
              end
              object cxGridDBTableView3Column2: TcxGridDBColumn
                DataBinding.FieldName = 'Nachname'
                DataBinding.IsNullValueType = True
                Width = 323
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
          object cxGroupBox8: TcxGroupBox
            Left = 2
            Top = 18
            Align = alTop
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 1
            Height = 95
            Width = 1179
            object btn_OptionChangePassword: TcxButton
              Left = 815
              Top = 8
              Width = 177
              Height = 21
              Caption = '&Passwort '#228'ndern'
              OptionsImage.ImageIndex = 9
              OptionsImage.Images = dm_PCM.imglst_16x16
              TabOrder = 5
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object edt_OptionName: TcxDBTextEdit
              Left = 80
              Top = 35
              DataBinding.DataField = 'Vorname'
              DataBinding.DataSource = dsBenutzer
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              OnExit = btn_OptionSaveUserClick
              Width = 394
            end
            object edt_OptionPassword: TcxDBTextEdit
              Left = 600
              Top = 8
              DataBinding.DataField = 'Passwort'
              DataBinding.DataSource = dsBenutzer
              ParentFont = False
              Properties.EchoMode = eemPassword
              Properties.PasswordChar = '*'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              OnEnter = edt_OptionPasswordEnter
              OnExit = edt_OptionPasswordExit
              Width = 209
            end
            object edt_OptionSurName: TcxDBTextEdit
              Left = 600
              Top = 35
              DataBinding.DataField = 'Nachname'
              DataBinding.DataSource = dsBenutzer
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              OnExit = btn_OptionSaveUserClick
              Width = 392
            end
            object edt_OptionUser: TcxDBTextEdit
              Left = 80
              Top = 8
              DataBinding.DataField = 'Benutzer'
              DataBinding.DataSource = dsBenutzer
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = btn_OptionSaveUserClick
              Width = 394
            end
            object lucbx_OptionRights: TcxDBLookupComboBox
              Left = 80
              Top = 62
              DataBinding.DataField = 'ID_Rechte'
              DataBinding.DataSource = dsBenutzer
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dsRechte
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              OnExit = btn_OptionSaveUserClick
              Width = 394
            end
            object Label14: TcxLabel
              Left = 8
              Top = 65
              Caption = 'Recht:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object Label15: TcxLabel
              Left = 534
              Top = 11
              Caption = 'Passwort:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object Label7: TcxLabel
              Left = 8
              Top = 11
              Caption = 'Benutzer:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object Label8: TcxLabel
              Left = 8
              Top = 38
              Caption = 'Vorname:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object Label9: TcxLabel
              Left = 534
              Top = 38
              Caption = 'Nachname:'
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
          Width = 1183
          Height = 58
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object ts_rights: TcxTabSheet
        Caption = 'Rechte'
        ImageIndex = 1
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 58
          Align = alClient
          Caption = 'Rechtedetails'
          TabOrder = 0
          Height = 831
          Width = 1183
          object cxGrid1: TcxGrid
            Left = 2
            Top = 111
            Width = 1179
            Height = 718
            Align = alClient
            BevelInner = bvLowered
            BevelKind = bkFlat
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = False
            LockedStateImageOptions.Effect = lsieDark
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = dsRechte
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
              Filtering.ColumnPopup.MultiSelect = False
              OptionsBehavior.IncSearch = True
              OptionsBehavior.ShowHourglassCursor = False
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.IndicatorWidth = 14
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'Rechtbezeichnung'
                DataBinding.FieldName = 'Bezeichnung'
                DataBinding.IsNullValueType = True
                Width = 500
              end
              object cxGridDBTableView1Vokabeluebersicht: TcxGridDBColumn
                Caption = 'Benutzerverwaltung'
                DataBinding.FieldName = 'Optionen_Benutzer'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Nummer'
                Properties.ListColumns = <
                  item
                    FieldName = 'Bezeichnung'
                  end>
                Properties.ListSource = dsRechte_Detail
                Width = 130
              end
              object cxGridDBTableView1Vokabeltest: TcxGridDBColumn
                Caption = 'Noten'#252'bersicht'
                DataBinding.FieldName = 'Optionen_Noten'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Nummer'
                Properties.ListColumns = <
                  item
                    FieldName = 'Bezeichnung'
                  end>
                Properties.ListSource = dsRechte_Detail
                Width = 130
              end
              object cxGridDBTableView1Column1: TcxGridDBColumn
                Caption = 'Alle Benutzer '
                DataBinding.FieldName = 'Alle_Benutzer'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'true'
                Properties.ValueUnchecked = 'false'
                Width = 85
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object cxGroupBox9: TcxGroupBox
            Left = 2
            Top = 18
            Align = alTop
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 1
            Height = 93
            Width = 1179
            object ckbx_OptionAlluser: TcxDBCheckBox
              Left = 139
              Top = 62
              Caption = 'Alle Benutzer'
              DataBinding.DataField = 'Alle_Benutzer'
              DataBinding.DataSource = dsRechte
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              Properties.ValueChecked = 'true'
              Properties.ValueUnchecked = 'false'
              Style.Color = clWindowFrame
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              TabOrder = 3
              Transparent = True
              OnEnter = btn_OptionSaveUserClick
            end
            object edt_OptionRight: TcxDBTextEdit
              Left = 139
              Top = 8
              DataBinding.DataField = 'Bezeichnung'
              DataBinding.DataSource = dsRechte
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 853
            end
            object lucbx_OptionOption: TcxDBLookupComboBox
              Left = 139
              Top = 35
              DataBinding.DataField = 'Optionen_Benutzer'
              DataBinding.DataSource = dsRechte
              ParentFont = False
              Properties.KeyFieldNames = 'Nummer'
              Properties.ListColumns = <
                item
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dsRechte_Detail
              Properties.OnChange = lucbx_BenutzerverwaltungPropertiesChange
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 370
            end
            object lucbx_OptionVokabelDetail: TcxDBLookupComboBox
              Left = 622
              Top = 35
              DataBinding.DataField = 'Optionen_Noten'
              DataBinding.DataSource = dsRechte
              ParentFont = False
              Properties.KeyFieldNames = 'Nummer'
              Properties.ListColumns = <
                item
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dsRechte_Detail
              Properties.OnChange = lucbx_VokabelDetailPropertiesChange
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 370
            end
            object Label11: TcxLabel
              Left = 13
              Top = 65
              Caption = 'Benutzeransicht:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object Label12: TcxLabel
              Left = 13
              Top = 38
              Caption = 'Benutzerverwaltung:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object Label2: TcxLabel
              Left = 523
              Top = 38
              Caption = 'Noten'#252'bersicht:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object Label3: TcxLabel
              Left = 13
              Top = 11
              Caption = 'Bezeichnung:'
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
        object dxBarDockControl2: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1183
          Height = 58
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
    end
  end
  object qBenutzer: TFDQuery
    AfterOpen = SetbettonsEnableVisible
    AfterInsert = SetbettonsEnableVisible
    AfterEdit = SetbettonsEnableVisible
    AfterPost = SetbettonsEnableVisible
    AfterCancel = SetbettonsEnableVisible
    AfterDelete = SetbettonsEnableVisible
    AfterScroll = SetbettonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID, Benutzer, Vorname, Nachname,Passwort, ID_Rechte  From' +
        ' Benutzer')
    Left = 1167
    Top = 8
  end
  object qRechte: TFDQuery
    AfterOpen = SetbettonsEnableVisible
    AfterInsert = SetbettonsEnableVisible
    AfterEdit = SetbettonsEnableVisible
    AfterPost = SetbettonsEnableVisible
    AfterCancel = SetbettonsEnableVisible
    AfterDelete = SetbettonsEnableVisible
    AfterScroll = SetbettonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID, Bezeichnung,Alle_Benutzer, Optionen_Benutzer,Optionen' +
        '_Noten From notenrechner_rechte'
      '')
    Left = 1167
    Top = 56
  end
  object qRechte_Detail: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select Nummer, Bezeichnung From Rechte_detail'
      '')
    Left = 1167
    Top = 104
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
    Left = 584
    Top = 448
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1207
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_OptionNewUser'
        end
        item
          Visible = True
          ItemName = 'btn_OptionSaveUser'
        end
        item
          Visible = True
          ItemName = 'btn_OptionCancelUser'
        end
        item
          Visible = True
          ItemName = 'btn_OptionDeleteUser'
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
    object dxBarManager1Bar2: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1207
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_OptionNewRight'
        end
        item
          Visible = True
          ItemName = 'btn_OptionSaveRight'
        end
        item
          Visible = True
          ItemName = 'btn_optioncancelRight'
        end
        item
          Visible = True
          ItemName = 'btn_OptionDeleteRight'
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
    object btn_OptionNewUser: TdxBarLargeButton
      Caption = 'Benutzer a&nlegen'
      Category = 0
      Hint = 'Benutzer anlegen'
      Visible = ivAlways
      OnClick = btn_OptionNewUserClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_OptionSaveUser: TdxBarLargeButton
      Caption = 'Benutzer &speichern'
      Category = 0
      Hint = 'Benutzer speichern'
      Visible = ivAlways
      OnClick = btn_OptionSaveUserClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_OptionCancelUser: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_OptionCancelUserClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_OptionDeleteUser: TdxBarLargeButton
      Caption = 'Benutzer &l'#246'schen'
      Category = 0
      Hint = 'Benutzer l'#246'schen'
      Visible = ivAlways
      OnClick = btn_OptionDeleteUserClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_OptionNewRight: TdxBarLargeButton
      Caption = 'Recht &anlegen'
      Category = 0
      Hint = 'Recht anlegen'
      Visible = ivAlways
      OnClick = btn_OptionNewRightClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_OptionSaveRight: TdxBarLargeButton
      Caption = 'Recht &speichern'
      Category = 0
      Hint = 'Recht speichern'
      Visible = ivAlways
      OnClick = btn_OptionSaveRightClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_optioncancelRight: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_optioncancelRightClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_OptionDeleteRight: TdxBarLargeButton
      Caption = 'Recht &l'#246'schen'
      Category = 0
      Hint = 'Recht l'#246'schen'
      Visible = ivAlways
      OnClick = btn_OptionDeleteRightClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
  end
  object dsBenutzer: TDataSource
    DataSet = qBenutzer
    Left = 1167
    Top = 16
  end
  object dsRechte: TDataSource
    DataSet = qRechte
    Left = 1167
    Top = 64
  end
  object dsRechte_Detail: TDataSource
    DataSet = qRechte_Detail
    Left = 1167
    Top = 112
  end
end
