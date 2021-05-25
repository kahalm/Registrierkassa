object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 513
  ClientWidth = 1217
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TButton
    Left = 48
    Top = 104
    Width = 169
    Height = 49
    Caption = 'MeldeAusfall'
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 48
    Top = 49
    Width = 169
    Height = 49
    Caption = 'Login'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 48
    Top = 159
    Width = 169
    Height = 49
    Caption = 'Logout'
    TabOrder = 2
    OnClick = Button4Click
  end
  object EditTid: TEdit
    Left = 256
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'tid'
  end
  object EditBenid: TEdit
    Left = 256
    Top = 105
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'benid (Web)'
  end
  object EditPin: TEdit
    Left = 256
    Top = 132
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Pin (web)'
  end
end
