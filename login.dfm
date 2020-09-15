object frmLogin: TfrmLogin
  Left = 303
  Top = 220
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 132
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 12
    Width = 253
    Height = 9
    Shape = bsTopLine
  end
  object Bevel2: TBevel
    Left = 8
    Top = 84
    Width = 253
    Height = 9
    Shape = bsTopLine
  end
  object cmdKullanici: TSpeedButton
    Left = 8
    Top = 24
    Width = 89
    Height = 22
    Cursor = crHandPoint
    Caption = 'Benutzer'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object cmdSifre: TSpeedButton
    Left = 8
    Top = 48
    Width = 89
    Height = 22
    Cursor = crHandPoint
    Caption = 'Keyword'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object cboKullanicilar: TComboBox
    Left = 104
    Top = 28
    Width = 153
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'Superuser'
    Items.Strings = (
      'Superuser'
      'Zeybek'
      'G'#246'n'#252'l'
      'Marion')
  end
  object txtSifre: TEdit
    Left = 168
    Top = 52
    Width = 89
    Height = 21
    MaxLength = 12
    PasswordChar = '*'
    TabOrder = 1
  end
  object cmdTamam: TBitBtn
    Left = 110
    Top = 100
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = cmdTamamClick
    Kind = bkOK
  end
  object cmdIptal: TBitBtn
    Left = 190
    Top = 100
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Abbrechen'
    TabOrder = 3
    NumGlyphs = 2
  end
  object Timer1: TTimer
    Interval = 60000
    OnTimer = Timer1Timer
    Left = 44
    Top = 96
  end
end
