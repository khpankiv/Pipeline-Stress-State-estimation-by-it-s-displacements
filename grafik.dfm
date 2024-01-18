object Form6: TForm6
  Left = 231
  Top = 121
  AutoScroll = False
  Caption = 'Dependence of the misalignment on the measure of ellipticity'
  ClientHeight = 428
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 288
    Top = 19
    Width = 14
    Height = 13
    Caption = 'from'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 392
    Top = 19
    Width = 12
    Height = 13
    Caption = 'to'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 64
    Top = 16
    Width = 212
    Height = 16
    Caption = 'Range of coefficient change:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Chart1: TChart
    Left = 32
    Top = 48
    Width = 497
    Height = 369
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = RUSSIAN_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -16
    Title.Font.Name = 'MS Sans Serif'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      'Dependence of the uncertainty on the degree of ellipticity')
    BottomAxis.AxisValuesFormat = '#,##0.####'
    BottomAxis.LabelsAngle = 90
    BottomAxis.Title.Caption = 'Ellipticity measure'
    BottomAxis.Title.Font.Charset = RUSSIAN_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -13
    BottomAxis.Title.Font.Name = 'MS Sans Serif'
    BottomAxis.Title.Font.Style = []
    LeftAxis.TickLength = 6
    LeftAxis.Title.Caption = 'The value of the gap, MN'
    LeftAxis.Title.Font.Charset = RUSSIAN_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -13
    LeftAxis.Title.Font.Name = 'MS Sans Serif'
    LeftAxis.Title.Font.Style = []
    Legend.Alignment = laBottom
    Legend.ColorWidth = 25
    Legend.Font.Charset = RUSSIAN_CHARSET
    Legend.Font.Color = clBlack
    Legend.Font.Height = -13
    Legend.Font.Name = 'MS Sans Serif'
    Legend.Font.Style = []
    View3D = False
    TabOrder = 0
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'Along the axis Oy'
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'Along the axis Oz'
      LinePen.Width = 2
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 544
    Top = 392
    Width = 81
    Height = 25
    Caption = 'Exit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 312
    Top = 11
    Width = 65
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Edit2: TEdit
    Left = 416
    Top = 11
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '0,01'
  end
  object Button2: TButton
    Left = 544
    Top = 328
    Width = 81
    Height = 25
    Caption = 'Calculate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 544
    Top = 360
    Width = 81
    Height = 25
    Caption = 'Exit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
end
