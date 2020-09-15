object frmEinstellung: TfrmEinstellung
  Left = 235
  Top = 144
  BorderStyle = bsDialog
  Caption = 'Einstellung'
  ClientHeight = 344
  ClientWidth = 490
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
  object Label1: TLabel
    Left = 12
    Top = 8
    Width = 29
    Height = 13
    Caption = 'Daten'
  end
  object Label2: TLabel
    Left = 12
    Top = 80
    Width = 77
    Height = 13
    Caption = 'Lizenz eingeben'
  end
  object BitBtn1: TBitBtn
    Left = 408
    Top = 24
    Width = 75
    Height = 21
    Caption = #214'ffnen'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object txtDaten: TEdit
    Left = 12
    Top = 24
    Width = 389
    Height = 21
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 408
    Top = 316
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkOK
  end
  object memLizenz: TMemo
    Left = 12
    Top = 96
    Width = 389
    Height = 37
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Fixedsys'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object lbeR: TLabeledEdit
    Left = 12
    Top = 172
    Width = 61
    Height = 21
    EditLabel.Width = 8
    EditLabel.Height = 13
    EditLabel.Caption = 'R'
    LabelPosition = lpAbove
    LabelSpacing = 3
    ReadOnly = True
    TabOrder = 4
  end
  object lbeRT: TLabeledEdit
    Left = 80
    Top = 172
    Width = 61
    Height = 21
    EditLabel.Width = 15
    EditLabel.Height = 13
    EditLabel.Caption = 'RT'
    LabelPosition = lpAbove
    LabelSpacing = 3
    ReadOnly = True
    TabOrder = 5
  end
  object OpenDialog1: TOpenDialog
    Left = 408
    Top = 52
  end
end
