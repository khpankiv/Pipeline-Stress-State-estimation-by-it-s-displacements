object Form2: TForm2
  Left = 218
  Top = 176
  BorderStyle = bsSingle
  Caption = 'Displacements'
  ClientHeight = 215
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 753
    Height = 161
    ActivePage = TabSheet2
    DockSite = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Smoothing spline'
      object StringGrid3: TStringGrid
        Left = 8
        Top = 8
        Width = 729
        Height = 129
        ColCount = 6
        DefaultColWidth = 70
        DefaultRowHeight = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Spline'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      object StringGrid1: TStringGrid
        Left = 8
        Top = 8
        Width = 729
        Height = 213
        ColCount = 20
        DefaultColWidth = 70
        DefaultRowHeight = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
      end
    end
  end
  object Button2: TButton
    Left = 688
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Exit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
end
