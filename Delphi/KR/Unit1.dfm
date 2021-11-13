object Form1: TForm1
  Left = 258
  Top = 161
  Width = 496
  Height = 455
  Caption = 'KR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 40
    Width = 14
    Height = 13
    Caption = 'x='
  end
  object Label2: TLabel
    Left = 64
    Top = 72
    Width = 14
    Height = 13
    Caption = 'a='
  end
  object Label3: TLabel
    Left = 64
    Top = 104
    Width = 14
    Height = 13
    Caption = 'b='
  end
  object Label4: TLabel
    Left = 64
    Top = 136
    Width = 26
    Height = 13
    Caption = 'f(x)='
  end
  object Label5: TLabel
    Left = 64
    Top = 168
    Width = 28
    Height = 13
    Caption = 'g(x)='
  end
  object Label6: TLabel
    Left = 64
    Top = 200
    Width = 30
    Height = 13
    Caption = 'xmin='
  end
  object Label7: TLabel
    Left = 64
    Top = 232
    Width = 26
    Height = 13
    Caption = 'xmax'
  end
  object Label8: TLabel
    Left = 64
    Top = 264
    Width = 20
    Height = 13
    Caption = 'dx='
  end
  object Label9: TLabel
    Left = 248
    Top = 40
    Width = 34
    Height = 13
    Caption = 'f(x)min'
  end
  object Label10: TLabel
    Left = 248
    Top = 72
    Width = 38
    Height = 13
    Caption = 'f(x)max'
  end
  object Label11: TLabel
    Left = 248
    Top = 104
    Width = 41
    Height = 13
    Caption = 'int f(x)='
  end
  object Label12: TLabel
    Left = 248
    Top = 136
    Width = 38
    Height = 13
    Caption = 'f(x) list:'
  end
  object Edit1: TEdit
    Left = 104
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0,5'
  end
  object Edit2: TEdit
    Left = 104
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '-0,5'
  end
  object Edit3: TEdit
    Left = 104
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0,5'
  end
  object Edit4: TEdit
    Left = 104
    Top = 128
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 104
    Top = 160
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 104
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '-1'
  end
  object Edit7: TEdit
    Left = 104
    Top = 224
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '1'
  end
  object Edit8: TEdit
    Left = 104
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '0,1'
  end
  object Edit9: TEdit
    Left = 288
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit10: TEdit
    Left = 288
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit11: TEdit
    Left = 288
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Memo1: TMemo
    Left = 248
    Top = 160
    Width = 185
    Height = 185
    TabOrder = 11
  end
  object Button1: TButton
    Left = 152
    Top = 288
    Width = 75
    Height = 25
    Caption = 'f, g'
    TabOrder = 12
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 320
    Width = 75
    Height = 25
    Caption = 'min, max, int'
    TabOrder = 13
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 152
    Top = 352
    Width = 75
    Height = 25
    Caption = 'to file'
    TabOrder = 14
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 248
    Top = 352
    Width = 75
    Height = 25
    Caption = 'plot'
    TabOrder = 15
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 360
    Top = 352
    Width = 75
    Height = 25
    Caption = 'exit'
    TabOrder = 16
    OnClick = Button5Click
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 24
    object File1: TMenuItem
      Caption = 'File'
      object Save1: TMenuItem
        Caption = 'Save'
        OnClick = Save1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object About1: TMenuItem
      Caption = 'About'
      OnClick = About1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 16
    Top = 80
  end
end
