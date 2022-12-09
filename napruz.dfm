object Form4: TForm4
  Left = 185
  Top = 126
  AutoScroll = False
  Caption = 'Тензори напружень і деформацій'
  ClientHeight = 393
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 7
    Top = 8
    Width = 802
    Height = 345
    ActivePage = TabSheet5
    DockSite = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Деформації по OY'
      object PageControl2: TPageControl
        Left = 0
        Top = 8
        Width = 793
        Height = 305
        ActivePage = TabSheet10
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = 'E11'
          object StringGrid1: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 70
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'E22'
          ImageIndex = 1
          object StringGrid2: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 70
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'E33'
          ImageIndex = 2
          object StringGrid3: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 70
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'E23'
          ImageIndex = 3
          object StringGrid4: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 70
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Напруження по OY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      object PageControl3: TPageControl
        Left = 0
        Top = 8
        Width = 793
        Height = 305
        ActivePage = TabSheet14
        TabOrder = 0
        object TabSheet11: TTabSheet
          Caption = 'Sigma11'
          object StringGrid5: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Sigma22'
          ImageIndex = 1
          object StringGrid7: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Sigma33'
          ImageIndex = 2
          object StringGrid8: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet14: TTabSheet
          Caption = 'Sigma23'
          ImageIndex = 3
          object StringGrid9: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Деформації по OZ'
      ImageIndex = 2
      object PageControl4: TPageControl
        Left = 0
        Top = 8
        Width = 793
        Height = 305
        ActivePage = TabSheet15
        TabOrder = 0
        object TabSheet15: TTabSheet
          Caption = 'E11'
          object StringGrid10: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 70
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet16: TTabSheet
          Caption = 'E22'
          ImageIndex = 1
          object StringGrid11: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 70
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet17: TTabSheet
          Caption = 'E33'
          ImageIndex = 2
          object StringGrid12: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 70
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet18: TTabSheet
          Caption = 'E23'
          ImageIndex = 3
          object StringGrid13: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 70
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Напруження по OZ'
      ImageIndex = 3
      object PageControl5: TPageControl
        Left = 0
        Top = 8
        Width = 793
        Height = 305
        ActivePage = TabSheet22
        TabOrder = 0
        object TabSheet19: TTabSheet
          Caption = 'Sigma11'
          object StringGrid14: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet20: TTabSheet
          Caption = 'Sigma22'
          ImageIndex = 1
          object StringGrid15: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet21: TTabSheet
          Caption = 'Sigma33'
          ImageIndex = 2
          object StringGrid16: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet22: TTabSheet
          Caption = 'Sigma23'
          ImageIndex = 3
          object StringGrid17: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Напруженя загальні'
      ImageIndex = 4
      object PageControl6: TPageControl
        Left = 0
        Top = 8
        Width = 793
        Height = 305
        ActivePage = TabSheet26
        TabOrder = 0
        object TabSheet23: TTabSheet
          Caption = 'Sigma11'
          object StringGrid18: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet24: TTabSheet
          Caption = 'Sigma22'
          ImageIndex = 1
          object StringGrid19: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet25: TTabSheet
          Caption = 'Sigma33'
          ImageIndex = 2
          object StringGrid20: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet26: TTabSheet
          Caption = 'Sigma23'
          ImageIndex = 3
          object StringGrid21: TStringGrid
            Left = 8
            Top = 8
            Width = 777
            Height = 265
            ColCount = 10
            DefaultColWidth = 80
            DefaultRowHeight = 20
            RowCount = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Інтенсивність'
      ImageIndex = 5
      object StringGrid6: TStringGrid
        Left = 8
        Top = 8
        Width = 785
        Height = 305
        ColCount = 10
        DefaultColWidth = 70
        DefaultRowHeight = 20
        RowCount = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Button1: TButton
    Left = 736
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Вихід'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
end
