object Form1: TForm1
  Left = 118
  Top = 52
  BorderStyle = bsDialog
  Caption = #1055#1077#1088#1077#1084#1110#1097#1077#1085#1085#1103' '#1086#1089#1110' '#1090#1088#1091#1073#1086#1087#1088#1086#1074#1086#1076#1091
  ClientHeight = 613
  ClientWidth = 871
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 568
    Top = 8
    Width = 185
    Height = 97
    BiDiMode = bdLeftToRight
    Caption = #1052#1077#1090#1086#1076' '#1074#1110#1076#1090#1074#1086#1088#1077#1085#1085#1103' '#1086#1089#1110
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 16
      Top = 32
      Width = 145
      Height = 17
      Caption = '&'#1055#1088#1086#1089#1090#1080#1081' '#1089#1087#1083#1072#1081#1085
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = Edit9Change
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 64
      Width = 153
      Height = 25
      Caption = '&'#1047#1075#1083#1072#1076#1078#1091#1102#1095#1080#1081' '#1089#1087#1083#1072#1081#1085
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 553
    Height = 289
    Caption = #1055#1086#1095#1072#1090#1082#1086#1074#1110' '#1076#1072#1085#1110'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 128
      Top = 44
      Width = 80
      Height = 13
      Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1090#1086#1095#1086#1082' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 328
      Top = 78
      Width = 85
      Height = 13
      Caption = #1055#1086#1095#1072#1090#1082#1086#1074#1072' '#1090#1086#1095#1082#1072
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 328
      Top = 111
      Width = 34
      Height = 13
      Caption = #1055#1077#1088#1110#1086#1076
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 502
      Top = 79
      Width = 8
      Height = 13
      Caption = #1084
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 502
      Top = 111
      Width = 8
      Height = 13
      Caption = #1084
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RadioButton1: TRadioButton
      Left = 32
      Top = 24
      Width = 73
      Height = 17
      Caption = '&'#1042#1088#1091#1095#1085#1091
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 32
      Top = 228
      Width = 73
      Height = 17
      Caption = #1047'  &'#1092#1072#1081#1083#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object CheckBox3: TCheckBox
      Left = 128
      Top = 72
      Width = 161
      Height = 25
      Alignment = taLeftJustify
      Caption = #1055#1077#1088#1110#1086#1076#1080#1095#1085#1086'   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBox3Click
    end
    object Edit2: TEdit
      Left = 432
      Top = 72
      Width = 65
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '0'
      OnChange = Edit9Change
      OnExit = enterperiod
    end
    object Edit3: TEdit
      Left = 432
      Top = 104
      Width = 65
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '1'
      OnChange = Edit9Change
      OnExit = enterperiod
    end
    object Edit6: TEdit
      Left = 56
      Top = 256
      Width = 417
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = 'C:\Temp'
      OnChange = Edit9Change
    end
    object Button5: TButton
      Left = 480
      Top = 254
      Width = 65
      Height = 25
      Caption = #1055#1086#1096#1091#1082
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button5Click
    end
    object SpinEdit1: TSpinEdit
      Left = 232
      Top = 40
      Width = 65
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 25
      MinValue = 1
      ParentFont = False
      TabOrder = 7
      Value = 4
      OnChange = Edit9Change
      OnExit = enterperiod
    end
    object StringGrid1: TStringGrid
      Left = 48
      Top = 136
      Width = 473
      Height = 89
      ColCount = 20
      DefaultColWidth = 50
      DefaultRowHeight = 20
      RowCount = 3
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
      ParentFont = False
      ScrollBars = ssHorizontal
      TabOrder = 8
      OnExit = enterx
      OnSetEditText = StringGrid3SetEditText
      RowHeights = (
        20
        20
        20)
    end
  end
  object Panel1: TPanel
    Left = 760
    Top = 14
    Width = 105
    Height = 593
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Button1: TButton
      Left = 8
      Top = 160
      Width = 89
      Height = 65
      BiDiMode = bdRightToLeft
      Cancel = True
      Caption = #1043#1088#1072#1092#1110#1082#1080
      DragCursor = crHelp
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Tag = 2
      Left = 8
      Top = 248
      Width = 89
      Height = 65
      Caption = #1042#1080#1074#1110#1076' '#1091' '#1074#1110#1082#1085#1086
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 336
      Width = 89
      Height = 65
      Caption = #1047#1072#1087#1080#1089' '#1091' '#1092#1072#1081#1083' '
      Enabled = False
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 520
      Width = 89
      Height = 49
      Caption = #1042#1080#1093#1110#1076
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button6: TButton
      Left = 8
      Top = 32
      Width = 89
      Height = 65
      Caption = #1054#1073#1095#1080#1089#1083#1077#1085#1085#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button6Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 568
    Top = 544
    Width = 185
    Height = 65
    Caption = #1044#1086#1076#1072#1090#1082#1086#1074#1110' '#1076#1072#1085#1110
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label9: TLabel
      Left = 11
      Top = 31
      Width = 109
      Height = 13
      Caption = #1055#1086#1093#1080#1073#1082#1072' '#1074#1080#1084#1110#1088#1102#1074#1072#1085#1100':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 166
      Top = 32
      Width = 8
      Height = 13
      Caption = #1084
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit9: TEdit
      Left = 124
      Top = 28
      Width = 37
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0,01'
      OnChange = Edit9Change
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 304
    Width = 553
    Height = 305
    Caption = #1050#1086#1077#1092#1110#1094#1110#1108#1085#1090#1080' '#1079#1075#1083#1072#1076#1078#1091#1074#1072#1085#1085#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object CheckBox4: TCheckBox
      Left = 16
      Top = 24
      Width = 497
      Height = 17
      Caption = #1042#1080#1073#1088#1072#1090#1080' '#1082#1086#1077#1092#1110#1094#1110#1108#1085#1090#1080' '#1079#1075#1083#1072#1076#1078#1091#1074#1072#1085#1085#1103' '#1087#1086' '#1079#1072#1076#1072#1085#1080#1093' '#1085#1072#1087#1088#1091#1078#1077#1085#1085#1103#1093
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox4Click
    end
    object Edit10: TEdit
      Left = 56
      Top = 76
      Width = 417
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'C:\Temp'
      OnChange = Edit9Change
    end
    object Button7: TButton
      Left = 480
      Top = 74
      Width = 67
      Height = 25
      Caption = #1055#1086#1096#1091#1082
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button7Click
    end
    object RadioButton3: TRadioButton
      Left = 32
      Top = 104
      Width = 65
      Height = 17
      Caption = #1042#1088#1091#1095#1085#1091
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 32
      Top = 48
      Width = 81
      Height = 17
      Caption = #1047' '#1092#1072#1081#1083#1091
      Checked = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TabStop = True
      OnClick = RadioButton4Click
    end
    object StringGrid2: TStringGrid
      Left = 48
      Top = 224
      Width = 473
      Height = 65
      ColCount = 20
      DefaultColWidth = 50
      DefaultRowHeight = 20
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
      ParentFont = False
      ScrollBars = ssHorizontal
      TabOrder = 5
      OnSetEditText = StringGrid3SetEditText
    end
    object StringGrid3: TStringGrid
      Left = 48
      Top = 136
      Width = 473
      Height = 65
      ColCount = 20
      DefaultColWidth = 70
      DefaultRowHeight = 20
      Enabled = False
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
      ParentFont = False
      ScrollBars = ssHorizontal
      TabOrder = 6
      OnSetEditText = StringGrid3SetEditText
    end
  end
  object GroupBox5: TGroupBox
    Left = 568
    Top = 112
    Width = 185
    Height = 425
    Caption = #1043#1088#1072#1085#1080#1095#1085#1110' '#1090#1086#1095#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object RadioButton5: TRadioButton
      Left = 8
      Top = 32
      Width = 137
      Height = 17
      Caption = #1055#1077#1088#1110#1086#1076#1080#1095#1085#1080#1081' '#1089#1087#1083#1072#1081#1085
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton5Click
    end
    object RadioButton6: TRadioButton
      Left = 8
      Top = 80
      Width = 113
      Height = 17
      Caption = #1055#1086' '#1087#1077#1088#1096#1110#1081' '#1087#1086#1093#1110#1076#1085#1110#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadioButton6Click
    end
    object RadioButton7: TRadioButton
      Left = 8
      Top = 256
      Width = 113
      Height = 17
      Caption = #1055#1086' '#1076#1088#1091#1075#1110#1081' '#1087#1086#1093#1110#1076#1085#1110#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = RadioButton7Click
    end
    object GroupBox6: TGroupBox
      Left = 24
      Top = 104
      Width = 153
      Height = 121
      Caption = #1057#1087#1086#1089#1110#1073' '#1079#1072#1076#1072#1085#1085#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 3
      object Label13: TLabel
        Left = 24
        Top = 72
        Width = 34
        Height = 13
        Caption = #1055#1077#1088#1096#1072
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 88
        Top = 72
        Width = 43
        Height = 13
        Caption = #1054#1089#1090#1072#1085#1085#1103
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RadioButton10: TRadioButton
        Left = 8
        Top = 24
        Width = 113
        Height = 17
        Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086
        Checked = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton10Click
      end
      object RadioButton11: TRadioButton
        Left = 8
        Top = 48
        Width = 113
        Height = 17
        Caption = #1042#1088#1091#1095#1085#1091
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RadioButton11Click
      end
      object Edit12: TEdit
        Left = 24
        Top = 88
        Width = 41
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '0'
        OnChange = Edit9Change
      end
      object Edit13: TEdit
        Left = 88
        Top = 88
        Width = 41
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '0'
        OnChange = Edit9Change
      end
    end
    object GroupBox7: TGroupBox
      Left = 24
      Top = 280
      Width = 153
      Height = 121
      Caption = #1057#1087#1086#1089#1110#1073' '#1079#1072#1076#1072#1085#1085#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 4
      object Label15: TLabel
        Left = 24
        Top = 72
        Width = 34
        Height = 13
        Caption = #1055#1077#1088#1096#1072
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 88
        Top = 72
        Width = 43
        Height = 13
        Caption = #1054#1089#1090#1072#1085#1085#1103
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RadioButton9: TRadioButton
        Left = 8
        Top = 24
        Width = 113
        Height = 17
        Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086
        Checked = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton9Click
      end
      object RadioButton8: TRadioButton
        Left = 8
        Top = 48
        Width = 113
        Height = 17
        Caption = #1042#1088#1091#1095#1085#1091
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RadioButton8Click
      end
      object Edit14: TEdit
        Left = 24
        Top = 88
        Width = 41
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '0'
        OnChange = Edit9Change
      end
      object Edit15: TEdit
        Left = 88
        Top = 88
        Width = 41
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '0'
        OnChange = Edit9Change
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'SplineEnterFiles(*.spl)|*.spl|All Files|*.*'
    Left = 824
    Top = 496
  end
  object OpenDialog2: TOpenDialog
    Filter = 'Etalon Files|*.etl|All Files|*.*'
    Left = 776
    Top = 496
  end
end
