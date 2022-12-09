object Form3: TForm3
  Left = 218
  Top = 114
  AutoScroll = False
  Caption = 'Визначення напружено-деформованого стану трубопроводу'
  ClientHeight = 332
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 336
    Top = 224
    Width = 74
    Height = 13
    Caption = 'Нев'#39'язка по Y:'
  end
  object Label2: TLabel
    Left = 336
    Top = 256
    Width = 74
    Height = 13
    Caption = 'Нев'#39'язка по Z:'
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 48
    Width = 361
    Height = 81
    Caption = 'Міра еліптичності'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object Button1: TButton
    Left = 336
    Top = 176
    Width = 153
    Height = 25
    Caption = 'Обчислити'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 568
    Top = 296
    Width = 81
    Height = 25
    Caption = 'Закрити'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 352
    Top = 8
    Width = 305
    Height = 25
    Caption = 'Ввести переміщення по осі OZ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 8
    Width = 305
    Height = 25
    Caption = 'Ввести переміщення по осі OY'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 416
    Top = 216
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 416
    Top = 248
    Width = 73
    Height = 21
    TabOrder = 5
  end
  object Button5: TButton
    Left = 544
    Top = 216
    Width = 105
    Height = 25
    Caption = 'Тензори'
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
  object Button8: TButton
    Left = 544
    Top = 184
    Width = 105
    Height = 25
    Caption = 'Графік: Del (m)'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Button8Click
  end
  object RadioButton1: TRadioButton
    Left = 32
    Top = 72
    Width = 113
    Height = 17
    Caption = 'Ввести вручну'
    Checked = True
    TabOrder = 9
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 32
    Top = 96
    Width = 113
    Height = 17
    Caption = 'Оптимальна'
    TabOrder = 10
    OnClick = RadioButton2Click
  end
  object Panel1: TPanel
    Left = 176
    Top = 64
    Width = 169
    Height = 57
    TabOrder = 11
    object Label11: TLabel
      Left = 14
      Top = 8
      Width = 67
      Height = 13
      Caption = 'Коефіцієнт Y:'
      Color = clBtnFace
      ParentColor = False
    end
    object Label12: TLabel
      Left = 14
      Top = 32
      Width = 67
      Height = 13
      Caption = 'Коефіцієнт Z:'
    end
    object Edit10: TEdit
      Left = 96
      Top = 4
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '0,001'
      OnChange = Edit2Change
    end
    object Edit11: TEdit
      Left = 96
      Top = 28
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '0,001'
      OnChange = Edit2Change
    end
  end
  object GroupBox1: TGroupBox
    Left = 400
    Top = 48
    Width = 249
    Height = 81
    Caption = 'Міра розтягу/стиску січень'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    object Label13: TLabel
      Left = 14
      Top = 24
      Width = 67
      Height = 13
      Caption = 'Коефіцієнт Y:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 14
      Top = 49
      Width = 67
      Height = 13
      Caption = 'Коефіцієнт Z:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit12: TEdit
      Left = 96
      Top = 20
      Width = 57
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnChange = Edit2Change
    end
    object Edit13: TEdit
      Left = 96
      Top = 44
      Width = 57
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0'
      OnChange = Edit2Change
    end
  end
  object GroupBox3: TGroupBox
    Left = 19
    Top = 142
    Width = 270
    Height = 179
    Caption = 'Додаткові дані'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    object Label16: TLabel
      Left = 13
      Top = 25
      Width = 94
      Height = 13
      Caption = 'Зовнішній діаметр:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 169
      Top = 27
      Width = 18
      Height = 16
      Caption = 'мм'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 11
      Top = 79
      Width = 142
      Height = 13
      Caption = 'Кількість знаків після коми:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 12
      Top = 108
      Width = 116
      Height = 13
      Caption = 'Крок обчислень по осі:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 13
      Top = 49
      Width = 83
      Height = 13
      Caption = 'Товщина стінки:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 169
      Top = 51
      Width = 18
      Height = 16
      Caption = 'мм'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 225
      Top = 107
      Width = 9
      Height = 16
      Caption = 'м'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 140
      Width = 137
      Height = 13
      Caption = 'Кількість точок по січенню:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit14: TEdit
      Left = 109
      Top = 24
      Width = 52
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '1420'
      OnChange = Edit14Change
    end
    object Edit15: TEdit
      Left = 160
      Top = 76
      Width = 33
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '4'
      OnChange = Edit14Change
    end
    object Edit16: TEdit
      Left = 161
      Top = 104
      Width = 56
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0,2'
      OnChange = Edit14Change
    end
    object Edit17: TEdit
      Left = 109
      Top = 48
      Width = 52
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '19,5'
      OnChange = Edit2Change
    end
    object Edit2: TEdit
      Left = 161
      Top = 136
      Width = 56
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '50'
      OnChange = Edit2Change
    end
  end
  object CheckBox1: TCheckBox
    Left = 336
    Top = 152
    Width = 185
    Height = 17
    Caption = 'Записати тензори в файли'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 14
    OnClick = Edit2Change
  end
  object Button6: TButton
    Left = 544
    Top = 248
    Width = 105
    Height = 25
    Caption = 'Січення'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = Button6Click
  end
  object MainMenu1: TMainMenu
    Left = 608
    Top = 139
    object N1: TMenuItem
      Caption = 'Файл'
      object N4: TMenuItem
        Caption = 'Вихід'
      end
    end
    object N2: TMenuItem
      Caption = 'Операції'
    end
    object N3: TMenuItem
      Caption = 'Допомога'
    end
  end
end
