object frmImpGesp: TfrmImpGesp
  Left = 88
  Top = 100
  BorderStyle = bsDialog
  Caption = 'Importware Gespr'#228'ch'
  ClientHeight = 407
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 4
    Top = 240
    Width = 313
    Height = 21
    Kind = gkText
    ParentShowHint = False
    Progress = 0
    ShowHint = False
  end
  object PageControl2: TPageControl
    Left = 320
    Top = 4
    Width = 341
    Height = 365
    ActivePage = TabSheet5
    TabIndex = 0
    TabOrder = 3
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 333
        Height = 337
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'TabSheet6'
      ImageIndex = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 584
    Top = 376
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkOK
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 4
    Width = 313
    Height = 201
    ActivePage = TabSheet3
    TabIndex = 2
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'RRS'
      object BitBtn2: TBitBtn
        Left = 20
        Top = 16
        Width = 77
        Height = 25
        Caption = 'Ruckseiten'
        TabOrder = 0
        OnMouseDown = BeginnDown
      end
      object BitBtn5: TBitBtn
        Left = 20
        Top = 44
        Width = 77
        Height = 25
        Caption = 'Ruckseiten F3'
        TabOrder = 1
        OnClick = BitBtn5Click
      end
      object txtRuckseiten: TEdit
        Left = 8
        Top = 132
        Width = 261
        Height = 21
        TabOrder = 2
      end
      object BitBtn13: TBitBtn
        Left = 272
        Top = 132
        Width = 29
        Height = 21
        Caption = '>>'
        TabOrder = 3
        OnClick = BitBtn13Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'RVS'
      ImageIndex = 1
      object Label1: TLabel
        Left = 136
        Top = 44
        Width = 44
        Height = 13
        Caption = 'WBeginn'
      end
      object Label2: TLabel
        Left = 44
        Top = 64
        Width = 36
        Height = 13
        Caption = 'Ay Bas.'
      end
      object Label3: TLabel
        Left = 44
        Top = 96
        Width = 33
        Height = 13
        Caption = 'Ay. Bit.'
      end
      object cmdOnSayfa: TBitBtn
        Left = 20
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Vorseiten'
        TabOrder = 0
        OnClick = cmdOnSayfaClick
      end
      object seRechnunganfang: TSpinEdit
        Left = 104
        Top = 20
        Width = 77
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 300491
      end
      object BitBtn3: TBitBtn
        Left = 20
        Top = 120
        Width = 75
        Height = 25
        Caption = 'Eksik ara F2'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object dtpBas: TDateTimePicker
        Left = 100
        Top = 60
        Width = 86
        Height = 21
        CalAlignment = dtaLeft
        Date = 38231.4398971991
        Time = 38231.4398971991
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 3
      end
      object dtpBit: TDateTimePicker
        Left = 100
        Top = 88
        Width = 86
        Height = 21
        CalAlignment = dtaLeft
        Date = 38260.4398971991
        Time = 38260.4398971991
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 4
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'M_A'
      ImageIndex = 2
      object BitBtn6: TBitBtn
        Left = 24
        Top = 8
        Width = 75
        Height = 25
        Caption = 'RSVertriebs'
        TabOrder = 0
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 0
        Top = 36
        Width = 21
        Height = 25
        Caption = 'X'
        TabOrder = 1
        OnClick = BitBtn7Click
      end
      object BitBtn8: TBitBtn
        Left = 24
        Top = 92
        Width = 75
        Height = 25
        Caption = 'VSVertriebs'
        TabOrder = 2
        OnClick = BitBtn8Click
      end
      object BitBtn9: TBitBtn
        Left = 24
        Top = 36
        Width = 75
        Height = 25
        Caption = 'RSVertriebs2'
        TabOrder = 3
        OnClick = BitBtn9Click
      end
      object BitBtn10: TBitBtn
        Left = 24
        Top = 64
        Width = 75
        Height = 25
        Caption = 'RSVertriebs3'
        TabOrder = 4
        OnClick = BitBtn10Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'XML'
      ImageIndex = 3
      object BitBtn11: TBitBtn
        Left = 16
        Top = 12
        Width = 75
        Height = 25
        Caption = 'BitBtn11'
        TabOrder = 0
        OnClick = BitBtn11Click
      end
      object BitBtn12: TBitBtn
        Left = 96
        Top = 12
        Width = 75
        Height = 25
        Caption = 'BitBtn12'
        TabOrder = 1
        OnClick = BitBtn12Click
      end
      object BitBtn4: TBitBtn
        Left = 96
        Top = 116
        Width = 75
        Height = 25
        Caption = 'Add'
        TabOrder = 2
        OnClick = BitBtn4Click
      end
      object BitBtn14: TBitBtn
        Left = 96
        Top = 140
        Width = 75
        Height = 25
        Caption = 'Del'
        TabOrder = 3
        OnClick = BitBtn14Click
      end
      object cboXML: TComboBox
        Left = 180
        Top = 12
        Width = 117
        Height = 157
        Style = csSimple
        ItemHeight = 0
        TabOrder = 4
      end
    end
  end
  object memDurum: TMemo
    Left = 4
    Top = 268
    Width = 313
    Height = 101
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object OpenDialog1: TOpenDialog
    Left = 4
    Top = 208
  end
end
