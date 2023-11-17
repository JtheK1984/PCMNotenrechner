object frm_Notenrechner_Schulfach: Tfrm_Notenrechner_Schulfach
  Left = 565
  Top = 212
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frm_Notenrechner_Schulfach'
  ClientHeight = 246
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 25
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 63
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    ExplicitTop = 58
    ExplicitHeight = 188
    Height = 183
    Width = 631
    object cxGrid3: TcxGrid
      Left = 3
      Top = 3
      Width = 625
      Height = 177
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
      LockedStateImageOptions.Effect = lsieDark
      ExplicitHeight = 182
      object tvData: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsData
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
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object tvDataBezeichnung: TcxGridDBColumn
          Caption = 'Schulfach'
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 400
        end
        object tvDataVorrueckung: TcxGridDBColumn
          Caption = 'Vorr'#252'ckungsfach'
          DataBinding.FieldName = 'Vorrueckung'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 100
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = tvData
      end
    end
  end
  object dsData: TDataSource
    DataSet = qnotenfach
    Left = 88
    Top = 160
  end
  object qnotenfach: TFDQuery
    AfterOpen = SetbuttonsEnableVisible
    AfterInsert = SetbuttonsEnableVisible
    AfterEdit = SetbuttonsEnableVisible
    AfterPost = SetbuttonsEnableVisible
    AfterCancel = SetbuttonsEnableVisible
    AfterDelete = SetbuttonsEnableVisible
    AfterScroll = SetbuttonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung,Vorrueckung,ID_Benutzer'
      'From notenrechner_Faecher'
      '')
    Left = 150
    Top = 130
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
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 272
    Top = 128
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      63
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 590
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
        end
        item
          Visible = True
          ItemName = 'tbtn_Noten_Detailliert_Close'
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
      Caption = 'Schulfach &anlegen'
      Category = 0
      Hint = 'Schulfach anlegen'
      Visible = ivAlways
      OnClick = btn_NotenNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
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
      Caption = 'Schulfach &speichern'
      Category = 0
      Hint = 'Schulfach speichern'
      Visible = ivAlways
      OnClick = btn_NotenSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_NotenDelete: TdxBarLargeButton
      Caption = 'Schulfach &l'#246'schen'
      Category = 0
      Hint = 'Schulfach l'#246'schen'
      Visible = ivAlways
      OnClick = btn_NotenDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object tbtn_Noten_Detailliert_Close: TdxBarLargeButton
      Caption = 'S&chlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = tbtn_Noten_Detailliert_CloseClick
      AutoGrayScale = False
      LargeImageIndex = 23
      Width = 125
    end
  end
end
