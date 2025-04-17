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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1010
    Height = 855
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    object grd_Noten_Durchschnitt: TcxGrid
      Left = 30
      Top = 63
      Width = 950
      Height = 762
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
    object grd_Noten_Detail: TcxGrid
      Left = 10000
      Top = 10000
      Width = 926
      Height = 586
      BevelInner = bvNone
      BorderStyle = cxcbsNone
      TabOrder = 8
      TabStop = False
      Visible = False
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
          DataBinding.IsNullValueType = True
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
          DataBinding.IsNullValueType = True
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
          DataBinding.IsNullValueType = True
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
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object tv_Noten_DetailGeschrieben_Am1: TcxGridDBColumn
          Caption = 'Geschrieben am'
          DataBinding.FieldName = 'Geschrieben_Am'
          DataBinding.IsNullValueType = True
          MinWidth = 250
          Width = 250
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = tv_Noten_Detail
      end
    end
    object btn_Noten_Detailliert_NewFach: TcxButton
      Left = 10000
      Top = 10000
      Width = 25
      Height = 21
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 16
      OptionsImage.Glyph.SourceWidth = 16
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
        31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
        4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
        3732373237323B7D262331333B262331303B2623393B2E57686974657B66696C
        6C3A234646464646463B7D3C2F7374796C653E0D0A3C7061746820636C617373
        3D2259656C6C6F772220643D224D342C32324C31382C386C362C364C31302C32
        384C342C32327A222F3E0D0A3C7061746820636C6173733D225265642220643D
        224D31382E312C386C362D366C362C366C2D362C364C31382E312C387A222F3E
        0D0A3C706F6C79676F6E20636C6173733D2257686974652220706F696E74733D
        2231302C323620382C323620382C323420362C323420362C323220342C323220
        332E322C32352E3220362E382C32382E382031302C323820222F3E0D0A3C706F
        6C79676F6E20636C6173733D22426C61636B2220706F696E74733D22322C3330
        20362E382C32382E3820332E322C32352E3220222F3E0D0A3C2F7376673E0D0A}
      TabOrder = 3
      TabStop = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_Noten_Detailliert_NewFachClick
    end
    object btn_Noten_Detailliert_NewTyp: TcxButton
      Left = 10000
      Top = 10000
      Width = 25
      Height = 21
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 16
      OptionsImage.Glyph.SourceWidth = 16
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
        31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
        4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
        3732373237323B7D262331333B262331303B2623393B2E57686974657B66696C
        6C3A234646464646463B7D3C2F7374796C653E0D0A3C7061746820636C617373
        3D2259656C6C6F772220643D224D342C32324C31382C386C362C364C31302C32
        384C342C32327A222F3E0D0A3C7061746820636C6173733D225265642220643D
        224D31382E312C386C362D366C362C366C2D362C364C31382E312C387A222F3E
        0D0A3C706F6C79676F6E20636C6173733D2257686974652220706F696E74733D
        2231302C323620382C323620382C323420362C323420362C323220342C323220
        332E322C32352E3220362E382C32382E382031302C323820222F3E0D0A3C706F
        6C79676F6E20636C6173733D22426C61636B2220706F696E74733D22322C3330
        20362E382C32382E3820332E322C32352E3220222F3E0D0A3C2F7376673E0D0A}
      TabOrder = 5
      TabStop = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_Noten_Detailliert_NewTypClick
    end
    object cbx_Noten_Note: TcxDBComboBox
      Left = 10000
      Top = 10000
      AutoSize = False
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
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Visible = False
      Height = 21
      Width = 385
    end
    object cbx_Noten_notenart: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      AutoSize = False
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
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Visible = False
      Height = 21
      Width = 352
    end
    object cbx_Schulfach: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      AutoSize = False
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
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Visible = False
      Height = 21
      Width = 353
    end
    object dt_Noten_Geschrieben: TcxDBDateEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Geschrieben_Am'
      DataBinding.DataSource = dsNoten
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Visible = False
      Height = 21
      Width = 384
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 954
      Height = 58
      Align = dalNone
      BarManager = dxBarManager1
      Visible = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 79
      CaptionOptions.Text = 'Noten'#252'bersicht Durchschnitt'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Noten'#252'bersicht'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Noten_Durchschnitt'
      CaptionOptions.Visible = False
      Control = grd_Noten_Durchschnitt
      ControlOptions.OriginalHeight = 802
      ControlOptions.OriginalWidth = 994
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.ImageIndex = 79
      CaptionOptions.Text = 'Noten'#252'bersicht detailliert'
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 998
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Notenverwaltung'
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Noten'#252'bersicht'
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_Noten_Detail
      ControlOptions.OriginalHeight = 659
      ControlOptions.OriginalWidth = 992
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Geschrieben:'
      CaptionOptions.Width = 70
      Control = dt_Noten_Geschrieben
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Schulnote:'
      CaptionOptions.Width = 70
      Control = cbx_Noten_Note
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Notenart:'
      CaptionOptions.Width = 70
      Control = cbx_Noten_notenart
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Schulfach:'
      CaptionOptions.Width = 70
      Control = cbx_Schulfach
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Noten_Detailliert_NewFach
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Noten_Detailliert_NewTyp
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
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
    Style = bmsUseLookAndFeel
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
    Left = 808
    Top = 288
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
