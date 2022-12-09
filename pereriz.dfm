object Form5: TForm5
  Left = 198
  Top = 65
  BorderStyle = bsSingle
  Caption = 'Січення трубопроводу'
  ClientHeight = 530
  ClientWidth = 752
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 24
    Top = 16
    Width = 184
    Height = 13
    Caption = 'Точка, в якій розглядається січення'
  end
  object Label15: TLabel
    Left = 280
    Top = 16
    Width = 8
    Height = 13
    Caption = 'м'
  end
  object Label1: TLabel
    Left = 736
    Top = 48
    Width = 8
    Height = 13
    Caption = 'м'
  end
  object Edit6: TEdit
    Left = 224
    Top = 8
    Width = 49
    Height = 21
    TabOrder = 0
    Text = '0'
    OnChange = Edit6Exit
  end
  object TrackBar1: TTrackBar
    Left = 15
    Top = 40
    Width = 721
    Height = 33
    Max = 300
    Orientation = trHorizontal
    Frequency = 1
    Position = 0
    SelEnd = 0
    SelStart = 0
    TabOrder = 1
    TickMarks = tmBottomRight
    TickStyle = tsAuto
    OnChange = FormActivate
  end
  object Chart1: TChart
    Left = 88
    Top = 80
    Width = 417
    Height = 441
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = RUSSIAN_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -16
    Title.Font.Name = 'MS Sans Serif'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      'Січення трубопроводу')
    BottomAxis.AxisValuesFormat = '#,##0.####'
    BottomAxis.ExactDateTime = False
    BottomAxis.Increment = 0.0001
    BottomAxis.LabelsSeparation = 1
    BottomAxis.MinorGrid.Color = clSilver
    BottomAxis.MinorGrid.Style = psDash
    LeftAxis.AxisValuesFormat = '#,##0.####'
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 0.0001
    LeftAxis.LabelsSeparation = 1
    LeftAxis.LabelStyle = talValue
    LeftAxis.MinorGrid.Color = clSilver
    LeftAxis.MinorGrid.Style = psDash
    LeftAxis.MinorTicks.Style = psDash
    Legend.Alignment = laBottom
    Legend.ColorWidth = 35
    Legend.Font.Charset = RUSSIAN_CHARSET
    Legend.Font.Color = clBlack
    Legend.Font.Height = -13
    Legend.Font.Name = 'MS Sans Serif'
    Legend.Font.Style = []
    Legend.ShadowSize = 2
    View3D = False
    TabOrder = 2
    object Series1: TArrowSeries
      Marks.ArrowLength = 0
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'Деформоване січення'
      Pointer.HorizSize = 1
      Pointer.InflateMargins = False
      Pointer.Pen.Color = clRed
      Pointer.Pen.Width = 2
      Pointer.Style = psRectangle
      Pointer.VertSize = 1
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      EndXValues.DateTime = True
      EndXValues.Name = 'EndX'
      EndXValues.Multiplier = 1
      EndXValues.Order = loNone
      EndYValues.DateTime = False
      EndYValues.Name = 'EndY'
      EndYValues.Multiplier = 1
      EndYValues.Order = loNone
      StartXValues.DateTime = False
      StartXValues.Name = 'X'
      StartXValues.Multiplier = 1
      StartXValues.Order = loAscending
      StartYValues.DateTime = False
      StartYValues.Name = 'Y'
      StartYValues.Multiplier = 1
      StartYValues.Order = loNone
    end
    object Series2: TArrowSeries
      Marks.ArrowLength = 0
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'Січення до деформації'
      Pointer.HorizSize = 1
      Pointer.InflateMargins = False
      Pointer.Pen.Color = 4227072
      Pointer.Pen.Width = 2
      Pointer.Style = psRectangle
      Pointer.VertSize = 1
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      EndXValues.DateTime = True
      EndXValues.Name = 'EndX'
      EndXValues.Multiplier = 1
      EndXValues.Order = loNone
      EndYValues.DateTime = False
      EndYValues.Name = 'EndY'
      EndYValues.Multiplier = 1
      EndYValues.Order = loNone
      StartXValues.DateTime = True
      StartXValues.Name = 'X'
      StartXValues.Multiplier = 1
      StartXValues.Order = loAscending
      StartYValues.DateTime = False
      StartYValues.Name = 'Y'
      StartYValues.Multiplier = 1
      StartYValues.Order = loNone
    end
  end
  object Button2: TButton
    Left = 584
    Top = 424
    Width = 81
    Height = 25
    Caption = 'Вихід'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 584
    Top = 384
    Width = 81
    Height = 25
    Caption = 'Друк'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
end
