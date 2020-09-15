object frmMusteri: TfrmMusteri
  Left = 3
  Top = -8
  BorderStyle = bsDialog
  Caption = 'Kunden'
  ClientHeight = 551
  ClientWidth = 792
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
    Left = 4
    Top = 4
    Width = 54
    Height = 13
    Caption = 'Kunden-Nr.'
  end
  object Label2: TLabel
    Left = 108
    Top = 4
    Width = 52
    Height = 13
    Caption = 'KBuKtoNR'
  end
  object cmdMusteriEk: TSpeedButton
    Left = 72
    Top = 20
    Width = 21
    Height = 21
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    Layout = blGlyphRight
    NumGlyphs = 2
    OnClick = cmdMusteriEkClick
  end
  object Shape5: TShape
    Left = 4
    Top = 44
    Width = 773
    Height = 3
    Brush.Color = clBlack
    Pen.Style = psClear
  end
  object dbeKID: TDBEdit
    Left = 4
    Top = 20
    Width = 69
    Height = 21
    DataField = 'KID'
    DataSource = dsKDaten
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 108
    Top = 20
    Width = 121
    Height = 21
    DataField = 'KBuKtoNR'
    DataSource = dsKDaten
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 700
    Top = 524
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkOK
  end
  object DBNavigator1: TDBNavigator
    Left = 236
    Top = 16
    Width = 225
    Height = 25
    DataSource = dsKDaten
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 48
    Width = 773
    Height = 469
    ActivePage = TabSheet6
    Images = imgLogolar
    TabIndex = 3
    TabOrder = 4
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Kundendaten'
      OnShow = TabSheet1Show
      object Bevel2: TBevel
        Left = 280
        Top = 4
        Width = 209
        Height = 53
        Style = bsRaised
      end
      object Bevel1: TBevel
        Left = 280
        Top = 232
        Width = 209
        Height = 53
        Style = bsRaised
      end
      object Shape10: TShape
        Left = 4
        Top = 212
        Width = 225
        Height = 157
        Brush.Style = bsClear
      end
      object Shape6: TShape
        Left = 4
        Top = 4
        Width = 225
        Height = 205
        Brush.Style = bsClear
      end
      object Shape4: TShape
        Left = 284
        Top = 236
        Width = 201
        Height = 21
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object Label4: TLabel
        Left = 12
        Top = 16
        Width = 59
        Height = 13
        Caption = 'Anrede/Titel'
        Transparent = True
      end
      object Label5: TLabel
        Left = 12
        Top = 40
        Width = 25
        Height = 13
        Caption = 'Firma'
        Transparent = True
      end
      object Label6: TLabel
        Left = 12
        Top = 64
        Width = 52
        Height = 13
        Caption = 'Nachname'
        Transparent = True
      end
      object Label7: TLabel
        Left = 12
        Top = 88
        Width = 42
        Height = 13
        Caption = 'Vorname'
        Transparent = True
      end
      object Label8: TLabel
        Left = 12
        Top = 136
        Width = 31
        Height = 13
        Caption = 'Stra'#223'e'
        Transparent = True
      end
      object Label9: TLabel
        Left = 12
        Top = 160
        Width = 40
        Height = 13
        Caption = 'NK/PLZ'
        Transparent = True
      end
      object SpeedButton3: TSpeedButton
        Left = 200
        Top = 156
        Width = 21
        Height = 21
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
          3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
          33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
          333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object Label10: TLabel
        Left = 12
        Top = 112
        Width = 52
        Height = 13
        Caption = 'Geburtstag'
        Transparent = True
      end
      object Label11: TLabel
        Left = 12
        Top = 224
        Width = 84
        Height = 13
        Caption = 'Tel. (gesch'#228'ftlich)'
        Transparent = True
      end
      object Label12: TLabel
        Left = 12
        Top = 248
        Width = 83
        Height = 13
        Caption = 'Fax (gesch'#228'ftlich)'
        Transparent = True
      end
      object Label13: TLabel
        Left = 12
        Top = 272
        Width = 53
        Height = 13
        Caption = 'Tel. (privat)'
        Transparent = True
      end
      object Label14: TLabel
        Left = 12
        Top = 296
        Width = 52
        Height = 13
        Caption = 'Fax (privat)'
        Transparent = True
      end
      object Label15: TLabel
        Left = 12
        Top = 320
        Width = 25
        Height = 13
        Caption = 'Mobil'
        Transparent = True
      end
      object Shape1: TShape
        Left = 284
        Top = 8
        Width = 201
        Height = 21
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object Label22: TLabel
        Left = 288
        Top = 12
        Width = 193
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'Rechnungsanschrift'
        Transparent = True
      end
      object Label32: TLabel
        Left = 288
        Top = 240
        Width = 193
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Vertriebspartner'
        Transparent = True
      end
      object Label23: TLabel
        Left = 12
        Top = 184
        Width = 14
        Height = 13
        Caption = 'Ort'
        Transparent = True
      end
      object Label28: TLabel
        Left = 288
        Top = 36
        Width = 63
        Height = 13
        Caption = 'Person/Firma'
      end
      object Label54: TLabel
        Left = 288
        Top = 264
        Width = 30
        Height = 13
        Caption = 'MA ID'
        Transparent = True
      end
      object SpeedButton1: TSpeedButton
        Left = 460
        Top = 260
        Width = 21
        Height = 21
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
          3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
          33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
          333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object Bevel4: TBevel
        Left = 540
        Top = 48
        Width = 213
        Height = 29
        Style = bsRaised
      end
      object Shape7: TShape
        Left = 544
        Top = 52
        Width = 205
        Height = 21
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object Bevel5: TBevel
        Left = 540
        Top = 4
        Width = 213
        Height = 29
        Style = bsRaised
      end
      object Shape18: TShape
        Left = 544
        Top = 8
        Width = 205
        Height = 21
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object Bevel6: TBevel
        Left = 540
        Top = 232
        Width = 213
        Height = 29
        Style = bsRaised
      end
      object Shape19: TShape
        Left = 544
        Top = 236
        Width = 205
        Height = 21
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object SpeedButton2: TSpeedButton
        Left = 8
        Top = 340
        Width = 37
        Height = 21
        Caption = 'E-mail'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        NumGlyphs = 2
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object Bevel7: TBevel
        Left = 540
        Top = 300
        Width = 213
        Height = 29
        Style = bsRaised
      end
      object Shape20: TShape
        Left = 544
        Top = 304
        Width = 205
        Height = 21
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object Label38: TLabel
        Left = 548
        Top = 308
        Width = 193
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'Storno'
        Transparent = True
      end
      object dbcKsart: TDBComboBox
        Left = 356
        Top = 32
        Width = 125
        Height = 21
        Style = csDropDownList
        DataField = 'ksart'
        DataSource = dsKDaten
        ItemHeight = 13
        Items.Strings = (
          'Privat'
          'Business')
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 96
        Top = 36
        Width = 125
        Height = 21
        DataField = 'KFirma'
        DataSource = dsKDaten
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 60
        Width = 125
        Height = 21
        DataField = 'KName'
        DataSource = dsKDaten
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 96
        Top = 84
        Width = 125
        Height = 21
        DataField = 'KVorname'
        DataSource = dsKDaten
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 96
        Top = 132
        Width = 125
        Height = 21
        DataField = 'KStrasse'
        DataSource = dsKDaten
        TabOrder = 4
      end
      object DBComboBox2: TDBComboBox
        Left = 96
        Top = 12
        Width = 101
        Height = 21
        Style = csDropDownList
        DataField = 'KAnrede'
        DataSource = dsKDaten
        ItemHeight = 13
        Items.Strings = (
          'Frau'
          'Herr'
          'Firma')
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 148
        Top = 156
        Width = 53
        Height = 21
        DataField = 'KPLZ'
        DataSource = dsKDaten
        TabOrder = 6
      end
      object DBComboBox3: TDBComboBox
        Left = 96
        Top = 156
        Width = 49
        Height = 21
        Style = csDropDownList
        DataField = 'KNK'
        DataSource = dsKDaten
        ItemHeight = 13
        Items.Strings = (
          'D'
          'NL')
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 96
        Top = 180
        Width = 125
        Height = 21
        DataField = 'KOrt'
        DataSource = dsKDaten
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 96
        Top = 108
        Width = 125
        Height = 21
        DataField = 'KGeburt'
        DataSource = dsKDaten
        TabOrder = 9
      end
      object DBEdit13: TDBEdit
        Left = 107
        Top = 220
        Width = 115
        Height = 22
        DataField = 'KTel_gesch'
        DataSource = dsKDaten
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit14: TDBEdit
        Left = 107
        Top = 244
        Width = 115
        Height = 22
        DataField = 'KFax_gesch'
        DataSource = dsKDaten
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit15: TDBEdit
        Left = 107
        Top = 268
        Width = 115
        Height = 22
        DataField = 'KTel'
        DataSource = dsKDaten
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit16: TDBEdit
        Left = 107
        Top = 292
        Width = 115
        Height = 22
        DataField = 'KFax'
        DataSource = dsKDaten
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit17: TDBEdit
        Left = 107
        Top = 316
        Width = 115
        Height = 22
        DataField = 'KMobil'
        DataSource = dsKDaten
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object dbeKemail: TDBEdit
        Left = 107
        Top = 340
        Width = 114
        Height = 22
        Color = clWhite
        DataField = 'KMail'
        DataSource = dsKDaten
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBCheckBox1: TDBCheckBox
        Left = 548
        Top = 54
        Width = 97
        Height = 17
        Caption = 'Abbuchung'
        Color = clSkyBlue
        DataField = 'KAbbuchung'
        DataSource = dsKDaten
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 16
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit32: TDBEdit
        Left = 356
        Top = 260
        Width = 105
        Height = 22
        DataField = 'MAID'
        DataSource = dsKDaten
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnChange = DBEdit32Change
      end
      object pnlVertriebspartner: TPanel
        Left = 280
        Top = 284
        Width = 209
        Height = 149
        TabOrder = 18
        object Label24: TLabel
          Left = 8
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Name'
          Transparent = True
        end
        object Label25: TLabel
          Left = 8
          Top = 32
          Width = 25
          Height = 13
          Caption = 'Firma'
          Transparent = True
        end
        object Label26: TLabel
          Left = 8
          Top = 56
          Width = 51
          Height = 13
          Caption = 'Telephone'
          Transparent = True
        end
        object Label27: TLabel
          Left = 8
          Top = 104
          Width = 25
          Height = 13
          Caption = 'Mobil'
          Transparent = True
        end
        object Label29: TLabel
          Left = 8
          Top = 80
          Width = 59
          Height = 13
          Caption = 'Gesch'#228'ftlich'
          Transparent = True
        end
        object SpeedButton4: TSpeedButton
          Left = 4
          Top = 124
          Width = 37
          Height = 21
          Caption = 'E-mail'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          NumGlyphs = 2
          ParentFont = False
          OnClick = SpeedButton4Click
        end
        object DBEdit44: TDBEdit
          Left = 76
          Top = 4
          Width = 125
          Height = 22
          DataField = 'MName'
          DataSource = dm1.dsMDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit45: TDBEdit
          Left = 76
          Top = 28
          Width = 125
          Height = 22
          DataField = 'MFirma'
          DataSource = dm1.dsMDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit46: TDBEdit
          Left = 76
          Top = 76
          Width = 125
          Height = 22
          DataField = 'MTel_gesch'
          DataSource = dm1.dsMDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit47: TDBEdit
          Left = 76
          Top = 52
          Width = 125
          Height = 22
          DataField = 'MTel'
          DataSource = dm1.dsMDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit48: TDBEdit
          Left = 76
          Top = 100
          Width = 125
          Height = 22
          DataField = 'MMobil'
          DataSource = dm1.dsMDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object dbeVemail: TDBEdit
          Left = 76
          Top = 124
          Width = 125
          Height = 22
          DataField = 'MMail'
          DataSource = dm1.dsMDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object pnlRechnungsanschrift: TPanel
        Left = 280
        Top = 56
        Width = 209
        Height = 173
        TabOrder = 19
        object Label16: TLabel
          Left = 8
          Top = 8
          Width = 59
          Height = 13
          Caption = 'Anrede/Titel'
          Transparent = True
        end
        object Label17: TLabel
          Left = 8
          Top = 32
          Width = 25
          Height = 13
          Caption = 'Firma'
          Transparent = True
        end
        object Label18: TLabel
          Left = 8
          Top = 56
          Width = 52
          Height = 13
          Caption = 'Nachname'
          Transparent = True
        end
        object Label19: TLabel
          Left = 8
          Top = 80
          Width = 42
          Height = 13
          Caption = 'Vorname'
          Transparent = True
        end
        object Label20: TLabel
          Left = 8
          Top = 104
          Width = 35
          Height = 13
          Caption = 'Strasse'
          Transparent = True
        end
        object Label21: TLabel
          Left = 8
          Top = 128
          Width = 40
          Height = 13
          Caption = 'NK/PLZ'
          Transparent = True
        end
        object Label55: TLabel
          Left = 8
          Top = 152
          Width = 14
          Height = 13
          Caption = 'Ort'
          Transparent = True
        end
        object DBComboBox4: TDBComboBox
          Left = 76
          Top = 3
          Width = 125
          Height = 22
          DataField = 'KKtoInhAnrede'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 14
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit25: TDBEdit
          Left = 76
          Top = 28
          Width = 125
          Height = 22
          DataField = 'KKtoInhFirma'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit26: TDBEdit
          Left = 76
          Top = 52
          Width = 125
          Height = 22
          DataField = 'KKtoInhNN'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit27: TDBEdit
          Left = 76
          Top = 76
          Width = 125
          Height = 22
          DataField = 'KKtoInhVN'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit28: TDBEdit
          Left = 76
          Top = 100
          Width = 125
          Height = 22
          DataField = 'KKtoInhStrasse'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit29: TDBEdit
          Left = 128
          Top = 124
          Width = 53
          Height = 22
          DataField = 'KKtoInhPLZ'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit30: TDBEdit
          Left = 76
          Top = 148
          Width = 125
          Height = 22
          DataField = 'KKtoInhOrt'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBComboBox10: TDBComboBox
          Left = 76
          Top = 124
          Width = 49
          Height = 21
          Style = csDropDownList
          DataField = 'KKtoInhNZ'
          DataSource = dsKDaten
          ItemHeight = 13
          Items.Strings = (
            'D'
            'NL')
          TabOrder = 7
        end
      end
      object DBCheckBox6: TDBCheckBox
        Left = 548
        Top = 10
        Width = 97
        Height = 17
        Caption = 'Internet'
        Color = clSkyBlue
        DataField = 'KInternet'
        DataSource = dsKDaten
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 20
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object Panel3: TPanel
        Left = 540
        Top = 76
        Width = 213
        Height = 153
        TabOrder = 21
        object Label33: TLabel
          Left = 12
          Top = 12
          Width = 63
          Height = 13
          Caption = 'Kontoinhaber'
          Transparent = True
        end
        object Label34: TLabel
          Left = 12
          Top = 36
          Width = 31
          Height = 13
          Caption = 'Institut'
          Transparent = True
        end
        object Label36: TLabel
          Left = 12
          Top = 60
          Width = 20
          Height = 13
          Caption = 'BLZ'
          Transparent = True
        end
        object SpeedButton5: TSpeedButton
          Left = 184
          Top = 56
          Width = 21
          Height = 21
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          Layout = blGlyphRight
          NumGlyphs = 2
          OnClick = SpeedButton5Click
        end
        object Label35: TLabel
          Left = 12
          Top = 88
          Width = 28
          Height = 13
          Caption = 'Konto'
          Transparent = True
        end
        object Label37: TLabel
          Left = 12
          Top = 112
          Width = 58
          Height = 13
          Caption = 'HRB/Ust-ID'
          Transparent = True
        end
        object Label39: TLabel
          Left = 12
          Top = 136
          Width = 52
          Height = 13
          Caption = 'Anl.-Datum'
          Transparent = True
        end
        object DBEdit19: TDBEdit
          Left = 80
          Top = 8
          Width = 125
          Height = 22
          DataField = 'KUST'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit22: TDBEdit
          Left = 80
          Top = 80
          Width = 125
          Height = 22
          DataField = 'KKonto'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit23: TDBEdit
          Left = 80
          Top = 104
          Width = 125
          Height = 22
          DataField = 'KUST'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit20: TDBEdit
          Left = 80
          Top = 32
          Width = 125
          Height = 22
          DataField = 'KBank'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit21: TDBEdit
          Left = 80
          Top = 56
          Width = 105
          Height = 22
          DataField = 'KBLZ'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit24: TDBEdit
          Left = 80
          Top = 128
          Width = 125
          Height = 22
          DataField = 'KDatum'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object DBCheckBox7: TDBCheckBox
        Left = 548
        Top = 238
        Width = 97
        Height = 17
        Caption = 'Kundenaktion'
        Color = clSkyBlue
        DataField = 'KKundenAktion'
        DataSource = dsKDaten
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 22
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object Panel4: TPanel
        Left = 540
        Top = 260
        Width = 213
        Height = 33
        TabOrder = 23
        object Label58: TLabel
          Left = 12
          Top = 12
          Width = 18
          Height = 13
          Caption = 'KID'
          Transparent = True
        end
        object DBEdit36: TDBEdit
          Left = 80
          Top = 8
          Width = 125
          Height = 22
          DataField = 'KAktionKID'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel5: TPanel
        Left = 540
        Top = 324
        Width = 213
        Height = 73
        TabOrder = 24
        object DBCheckBox3: TDBCheckBox
          Left = 4
          Top = 28
          Width = 109
          Height = 17
          Caption = 'Anschluss inaktiv'
          DataField = 'K_inaktiv'
          DataSource = dsKDaten
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 4
          Top = 52
          Width = 109
          Height = 17
          Caption = 'Anschluss storno'
          DataField = 'K_storno'
          DataSource = dsKDaten
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEdit43: TDBEdit
          Left = 136
          Top = 48
          Width = 72
          Height = 22
          DataField = 'K_stornoDat'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit42: TDBEdit
          Left = 136
          Top = 24
          Width = 72
          Height = 22
          DataField = 'K_inaktivDat'
          DataSource = dsKDaten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBCheckBox16: TDBCheckBox
          Left = 4
          Top = 4
          Width = 109
          Height = 17
          Caption = 'Passiv'
          DataField = 'K_passiv'
          DataSource = dsKDaten
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Vertragsdaten'
      ImageIndex = 4
      object Shape9: TShape
        Left = 312
        Top = 8
        Width = 165
        Height = 121
        Brush.Style = bsClear
      end
      object Label41: TLabel
        Left = 4
        Top = 12
        Width = 56
        Height = 13
        Caption = 'Vertrags Nr.'
      end
      object Shape12: TShape
        Left = 132
        Top = 8
        Width = 81
        Height = 73
        Brush.Style = bsClear
      end
      object Shape11: TShape
        Left = 220
        Top = 8
        Width = 85
        Height = 73
        Brush.Style = bsClear
      end
      object Label40: TLabel
        Left = 320
        Top = 32
        Width = 81
        Height = 13
        Caption = 'Anschlussgeb'#252'hr'
      end
      object Label46: TLabel
        Left = 320
        Top = 56
        Width = 68
        Height = 13
        Caption = 'Monatsgeb'#252'hr'
      end
      object Label47: TLabel
        Left = 320
        Top = 80
        Width = 33
        Height = 13
        Caption = 'Beginn'
      end
      object Label56: TLabel
        Left = 320
        Top = 104
        Width = 55
        Height = 13
        Caption = #220'bernahme'
      end
      object Shape17: TShape
        Left = 484
        Top = 8
        Width = 277
        Height = 97
        Brush.Style = bsClear
      end
      object Shape8: TShape
        Left = 132
        Top = 88
        Width = 173
        Height = 41
        Brush.Style = bsClear
      end
      object Label52: TLabel
        Left = 508
        Top = 55
        Width = 38
        Height = 13
        Caption = 'Adresse'
      end
      object Label53: TLabel
        Left = 508
        Top = 79
        Width = 18
        Height = 13
        Caption = 'KID'
      end
      object DBEdit11: TDBEdit
        Left = 64
        Top = 8
        Width = 53
        Height = 22
        DataField = 'KID1'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBCheckBox12: TDBCheckBox
        Left = 140
        Top = 28
        Width = 65
        Height = 17
        Cursor = crHandPoint
        Caption = 'DSL'
        Color = 8454143
        DataField = 'IDSL'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox13: TDBCheckBox
        Left = 140
        Top = 44
        Width = 65
        Height = 17
        Cursor = crHandPoint
        Caption = 'ISDN'
        Color = 8454016
        DataField = 'IISDN'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox14: TDBCheckBox
        Left = 140
        Top = 60
        Width = 65
        Height = 17
        Cursor = crHandPoint
        Caption = 'Analog'
        Color = 8454016
        DataField = 'IAnalog'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object StaticText27: TStaticText
        Left = 132
        Top = 8
        Width = 81
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSingle
        Caption = 'Vertragsart'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object DBGrid1: TDBGrid
        Left = 4
        Top = 32
        Width = 113
        Height = 73
        DataSource = dm1.dsKDatenAlt
        Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'KID1'
            Visible = True
          end>
      end
      object DBEdit12: TDBEdit
        Left = 600
        Top = 124
        Width = 65
        Height = 21
        DataField = 'KID'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBCheckBox47: TDBCheckBox
        Left = 228
        Top = 28
        Width = 73
        Height = 17
        Caption = 'Ohne'
        Color = clBtnFace
        DataField = 'VLO'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 9
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox48: TDBCheckBox
        Left = 228
        Top = 44
        Width = 73
        Height = 17
        Caption = '6 Monate'
        Color = clBtnFace
        DataField = 'VL6'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 10
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox49: TDBCheckBox
        Left = 228
        Top = 60
        Width = 73
        Height = 17
        Caption = '12 Monate'
        Color = clBtnFace
        DataField = 'VL12'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 11
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object StaticText12: TStaticText
        Left = 220
        Top = 8
        Width = 85
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSingle
        Caption = 'Vertragslaufzeit'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit33: TDBEdit
        Left = 408
        Top = 28
        Width = 61
        Height = 21
        DataField = 'KAnschlussgeb'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit37: TDBEdit
        Left = 408
        Top = 52
        Width = 61
        Height = 21
        DataField = 'KGrungeb'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit38: TDBEdit
        Left = 396
        Top = 76
        Width = 73
        Height = 22
        DataField = 'WBeginn'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit39: TDBEdit
        Left = 396
        Top = 100
        Width = 73
        Height = 22
        DataField = 'KUebernahme'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object DBCheckBox24: TDBCheckBox
        Left = 692
        Top = 32
        Width = 65
        Height = 17
        Cursor = crHandPoint
        Caption = 'DT AG'
        DataField = 'DGDT'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox25: TDBCheckBox
        Left = 692
        Top = 48
        Width = 65
        Height = 17
        Cursor = crHandPoint
        Caption = 'Arcor'
        DataField = 'DGArcor'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox26: TDBCheckBox
        Left = 692
        Top = 64
        Width = 65
        Height = 17
        Cursor = crHandPoint
        Caption = 'Alovatan'
        DataField = 'DGAlova'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox27: TDBCheckBox
        Left = 692
        Top = 80
        Width = 65
        Height = 17
        Cursor = crHandPoint
        Caption = 'Tele 2'
        DataField = 'DGTel2'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox28: TDBCheckBox
        Left = 488
        Top = 32
        Width = 65
        Height = 17
        Cursor = crHandPoint
        Caption = 'Andere:'
        DataField = 'DGAndere'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object StaticText5: TStaticText
        Left = 484
        Top = 8
        Width = 277
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSingle
        Caption = 'Derzeitige Gesellschaft'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        TabOrder = 22
      end
      object PageControl2: TPageControl
        Left = 4
        Top = 156
        Width = 753
        Height = 281
        ActivePage = TabSheet3
        Images = imgLogolar
        TabIndex = 0
        TabOrder = 8
        object TabSheet3: TTabSheet
          Caption = 'Telefon'
          ImageIndex = 3
          object Shape13: TShape
            Left = 576
            Top = 8
            Width = 165
            Height = 85
            Brush.Style = bsClear
          end
          object Shape15: TShape
            Left = 4
            Top = 4
            Width = 153
            Height = 77
            Brush.Style = bsClear
          end
          object Shape16: TShape
            Left = 4
            Top = 116
            Width = 509
            Height = 101
            Brush.Style = bsClear
          end
          object Label42: TLabel
            Left = 8
            Top = 140
            Width = 38
            Height = 13
            Caption = 'Vorwahl'
          end
          object Label43: TLabel
            Left = 8
            Top = 188
            Width = 73
            Height = 13
            Caption = 'Haupt-Block-Nr'
          end
          object Label44: TLabel
            Left = 168
            Top = 188
            Width = 18
            Height = 13
            Caption = 'von'
          end
          object Label45: TLabel
            Left = 304
            Top = 188
            Width = 13
            Height = 13
            Caption = 'bis'
          end
          object Label57: TLabel
            Left = 536
            Top = 225
            Width = 62
            Height = 13
            Caption = 'Abweichend:'
          end
          object StaticText1: TStaticText
            Left = 576
            Top = 4
            Width = 165
            Height = 18
            Alignment = taCenter
            AutoSize = False
            BiDiMode = bdLeftToRight
            BorderStyle = sbsSingle
            Caption = 'Telefon'
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object DBCheckBox8: TDBCheckBox
            Left = 580
            Top = 24
            Width = 125
            Height = 17
            Cursor = crHandPoint
            Caption = 'Anschluss'#252'bernahme'
            Color = clBtnFace
            DataField = 'TAnU'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox9: TDBCheckBox
            Left = 580
            Top = 40
            Width = 125
            Height = 17
            Cursor = crHandPoint
            Caption = 'Pre-Select'
            Color = clBtnFace
            DataField = 'TPS'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox10: TDBCheckBox
            Left = 580
            Top = 56
            Width = 125
            Height = 17
            Cursor = crHandPoint
            Caption = 'mit Ortsnetz'
            Color = clBtnFace
            DataField = 'TPSmO'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox11: TDBCheckBox
            Left = 580
            Top = 72
            Width = 125
            Height = 17
            Cursor = crHandPoint
            Caption = 'ohne Ortsnetz'
            Color = clBtnFace
            DataField = 'TPSoO'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBComboBox7: TDBComboBox
            Left = 696
            Top = 3
            Width = 41
            Height = 21
            DataSource = dsKDaten
            ItemHeight = 13
            Items.Strings = (
              'Neutral'
              'NEA'
              'AN'#220)
            TabOrder = 5
          end
          object DBComboBox9: TDBComboBox
            Left = 660
            Top = 39
            Width = 73
            Height = 21
            DataSource = dsKDaten
            ItemHeight = 13
            Items.Strings = (
              'mit Ortsnetz'
              'ohne Ortsnetz')
            TabOrder = 6
          end
          object DBCheckBox22: TDBCheckBox
            Left = 12
            Top = 56
            Width = 75
            Height = 17
            Cursor = crHandPoint
            Caption = 'PMX'
            Color = clBtnFace
            DataField = 'BAPMX'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 7
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox21: TDBCheckBox
            Left = 12
            Top = 40
            Width = 75
            Height = 17
            Cursor = crHandPoint
            Caption = 'ISDN'
            Color = clBtnFace
            DataField = 'BAISDN'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox20: TDBCheckBox
            Left = 12
            Top = 24
            Width = 75
            Height = 17
            Cursor = crHandPoint
            Caption = 'Analog'
            Color = clBtnFace
            DataField = 'BAAnalog'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBComboBox5: TDBComboBox
            Left = 68
            Top = 38
            Width = 81
            Height = 22
            DataField = 'KvorhISDN'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 14
            Items.Strings = (
              'Standart'
              'Komport'
              'XXL')
            ParentFont = False
            TabOrder = 10
          end
          object StaticText3: TStaticText
            Left = 4
            Top = 4
            Width = 153
            Height = 18
            Alignment = taCenter
            AutoSize = False
            BiDiMode = bdLeftToRight
            BorderStyle = sbsSingle
            Caption = 'Bestehende Anschlussart'
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            TabOrder = 11
          end
          object StaticText8: TStaticText
            Left = 164
            Top = 4
            Width = 89
            Height = 18
            Alignment = taCenter
            AutoSize = False
            BevelKind = bkFlat
            BiDiMode = bdLeftToRight
            BorderStyle = sbsSunken
            Caption = 'Tarif'
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            TabOrder = 12
          end
          object Panel2: TPanel
            Left = 164
            Top = 20
            Width = 89
            Height = 89
            TabOrder = 13
            object DBCheckBox37: TDBCheckBox
              Left = 4
              Top = 4
              Width = 73
              Height = 17
              Cursor = crHandPoint
              Caption = 'SEK 1 / 1'
              DataField = 'ATaktSek'
              DataSource = dm1.dsKDatenAlt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox38: TDBCheckBox
              Left = 4
              Top = 36
              Width = 73
              Height = 17
              Cursor = crHandPoint
              Caption = 'STD'
              DataField = 'ATaktMin'
              DataSource = dm1.dsKDatenAlt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox39: TDBCheckBox
              Left = 4
              Top = 52
              Width = 73
              Height = 17
              Cursor = crHandPoint
              Caption = 'SP 120'
              DataField = 'ATaktCBC'
              DataSource = dm1.dsKDatenAlt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox40: TDBCheckBox
              Left = 4
              Top = 68
              Width = 73
              Height = 17
              Cursor = crHandPoint
              Caption = 'Premium 10'
              DataField = 'ATaktSpezial'
              DataSource = dm1.dsKDatenAlt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox2: TDBCheckBox
              Left = 4
              Top = 20
              Width = 73
              Height = 17
              Caption = 'SEK 60 / 1'
              DataField = 'ATaktSek1'
              DataSource = dm1.dsKDatenAlt
              TabOrder = 4
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
          end
          object DBEdit50: TDBEdit
            Left = 92
            Top = 136
            Width = 63
            Height = 22
            DataField = 'KTelVorw'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
          end
          object DBEdit51: TDBEdit
            Left = 168
            Top = 136
            Width = 65
            Height = 22
            DataField = 'KTelA'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
          object DBEdit52: TDBEdit
            Left = 236
            Top = 136
            Width = 65
            Height = 22
            DataField = 'ktelb'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
          end
          object DBEdit53: TDBEdit
            Left = 304
            Top = 136
            Width = 65
            Height = 22
            DataField = 'KTelC'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
          end
          object DBEdit54: TDBEdit
            Left = 372
            Top = 136
            Width = 65
            Height = 22
            DataField = 'KTelD'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
          end
          object DBEdit55: TDBEdit
            Left = 440
            Top = 136
            Width = 65
            Height = 22
            DataField = 'KTelE'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
          end
          object DBEdit56: TDBEdit
            Left = 168
            Top = 160
            Width = 65
            Height = 22
            DataField = 'KTelF'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 20
          end
          object DBEdit57: TDBEdit
            Left = 236
            Top = 160
            Width = 65
            Height = 22
            DataField = 'KTelG'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
          end
          object DBEdit58: TDBEdit
            Left = 304
            Top = 160
            Width = 65
            Height = 22
            DataField = 'KTelH'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 22
          end
          object DBEdit59: TDBEdit
            Left = 372
            Top = 160
            Width = 65
            Height = 22
            DataField = 'KTelI'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 23
          end
          object DBEdit60: TDBEdit
            Left = 440
            Top = 160
            Width = 65
            Height = 22
            DataField = 'KTelJ'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 24
          end
          object DBEdit61: TDBEdit
            Left = 92
            Top = 184
            Width = 62
            Height = 22
            DataField = 'KTelBlock1'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 25
          end
          object DBEdit62: TDBEdit
            Left = 201
            Top = 184
            Width = 70
            Height = 22
            DataField = 'KTelBlock1V'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 26
          end
          object DBEdit63: TDBEdit
            Left = 336
            Top = 184
            Width = 70
            Height = 22
            DataField = 'KTelBlock1N'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 27
          end
          object StaticText4: TStaticText
            Left = 4
            Top = 116
            Width = 509
            Height = 18
            Alignment = taCenter
            AutoSize = False
            BiDiMode = bdLeftToRight
            BorderStyle = sbsSingle
            Caption = 'Rufnummern'
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            TabOrder = 28
          end
          object DBCheckBox29: TDBCheckBox
            Left = 260
            Top = 23
            Width = 65
            Height = 17
            Cursor = crHandPoint
            Caption = 'Analog'
            Color = clBtnFace
            DataField = 'AAnalog'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 29
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox30: TDBCheckBox
            Left = 260
            Top = 39
            Width = 65
            Height = 17
            Cursor = crHandPoint
            Caption = 'ISDN'
            Color = clBtnFace
            DataField = 'AISDN'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 30
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox32: TDBCheckBox
            Left = 260
            Top = 55
            Width = 65
            Height = 17
            Cursor = crHandPoint
            Caption = 'PMX'
            Color = clBtnFace
            DataField = 'APMX'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 31
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox33: TDBCheckBox
            Left = 336
            Top = 23
            Width = 65
            Height = 17
            Cursor = crHandPoint
            Caption = 'Standart'
            Color = clBtnFace
            DataField = 'AISDNStd'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 32
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox35: TDBCheckBox
            Left = 336
            Top = 39
            Width = 65
            Height = 17
            Cursor = crHandPoint
            Caption = 'Komfort'
            Color = clBtnFace
            DataField = 'AISDNKomf'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 33
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object StaticText6: TStaticText
            Left = 260
            Top = 4
            Width = 141
            Height = 18
            Alignment = taCenter
            AutoSize = False
            BiDiMode = bdLeftToRight
            BorderStyle = sbsSingle
            Caption = 'Wechsel zur class telecom '
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            TabOrder = 34
          end
          object DBCheckBox67: TDBCheckBox
            Left = 407
            Top = 23
            Width = 150
            Height = 17
            Cursor = crHandPoint
            Caption = 'Anschluss'#252'bernahme'
            DataField = 'WAUbern'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 35
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox68: TDBCheckBox
            Left = 416
            Top = 39
            Width = 153
            Height = 17
            Cursor = crHandPoint
            Caption = 'mit Rufnummern'#252'bernahme'
            DataField = 'WmRufNR'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 36
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox69: TDBCheckBox
            Left = 416
            Top = 52
            Width = 153
            Height = 17
            Cursor = crHandPoint
            Caption = 'mit neuen Rufnummern'
            DataField = 'WmNeuRufNR'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 37
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object StaticText10: TStaticText
            Left = 404
            Top = 4
            Width = 169
            Height = 18
            Alignment = taCenter
            AutoSize = False
            BiDiMode = bdLeftToRight
            BorderStyle = sbsSingle
            Caption = 'Wechsel zur class telecom '
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            TabOrder = 38
          end
          object DBCheckBox5: TDBCheckBox
            Left = 536
            Top = 138
            Width = 125
            Height = 17
            Cursor = crHandPoint
            Caption = 'Einzelverbnw. EVN'
            DataField = 'SEVNJa'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 39
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox64: TDBCheckBox
            Left = 536
            Top = 153
            Width = 125
            Height = 17
            Cursor = crHandPoint
            Caption = 'Telefonbucheintrag'
            DataField = 'TBStandard'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 40
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox65: TDBCheckBox
            Left = 536
            Top = 168
            Width = 72
            Height = 17
            Cursor = crHandPoint
            Caption = 'Standard'
            DataField = 'TBkeinEintrag'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 41
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object StaticText11: TStaticText
            Left = 536
            Top = 117
            Width = 205
            Height = 18
            Alignment = taCenter
            AutoSize = False
            BiDiMode = bdLeftToRight
            BorderStyle = sbsSingle
            Caption = 'Sonstiges'
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            TabOrder = 42
          end
          object DBCheckBox66: TDBCheckBox
            Left = 536
            Top = 184
            Width = 87
            Height = 17
            Cursor = crHandPoint
            Caption = 'kein Eintrag'
            DataField = 'TBAbweichend'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 43
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox63: TDBCheckBox
            Left = 536
            Top = 200
            Width = 115
            Height = 17
            Cursor = crHandPoint
            Caption = '0190/0900 sperren'
            DataField = 'SSperr019'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 44
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBEdit34: TDBEdit
            Left = 600
            Top = 221
            Width = 141
            Height = 22
            DataField = 'TBAbwText'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 45
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'DSL'
          ImageIndex = 1
          object Shape14: TShape
            Left = 384
            Top = 8
            Width = 153
            Height = 49
            Brush.Style = bsClear
          end
          object Bevel3: TBevel
            Left = 4
            Top = 6
            Width = 193
            Height = 25
            Style = bsRaised
          end
          object Shape3: TShape
            Left = 8
            Top = 10
            Width = 185
            Height = 17
            Brush.Color = clSkyBlue
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object Label3: TLabel
            Left = 4
            Top = 10
            Width = 189
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'DSL'
            Color = clSkyBlue
            ParentColor = False
            Transparent = True
          end
          object Label30: TLabel
            Left = 556
            Top = 36
            Width = 68
            Height = 13
            Caption = 'Benutzername'
          end
          object Label31: TLabel
            Left = 556
            Top = 60
            Width = 86
            Height = 13
            Caption = 'Benutzerkennwort'
          end
          object DBCheckBox15: TDBCheckBox
            Left = 392
            Top = 32
            Width = 75
            Height = 17
            Cursor = crHandPoint
            Caption = 'DSL'
            Color = clBtnFace
            DataField = 'BADSL'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBComboBox1: TDBComboBox
            Left = 448
            Top = 32
            Width = 81
            Height = 22
            DataField = 'KvorhDSL'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 14
            Items.Strings = (
              '768 kBit/s'
              '1500 kBit/s')
            ParentFont = False
            TabOrder = 1
          end
          object StaticText2: TStaticText
            Left = 384
            Top = 8
            Width = 153
            Height = 18
            Alignment = taCenter
            AutoSize = False
            BiDiMode = bdLeftToRight
            BorderStyle = sbsSingle
            Caption = 'Bestehende Anschlussart'
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            TabOrder = 2
          end
          object Panel1: TPanel
            Left = 4
            Top = 30
            Width = 193
            Height = 101
            TabOrder = 3
            object Label48: TLabel
              Left = 8
              Top = 32
              Width = 32
              Height = 13
              Caption = 'Anzahl'
            end
            object Label49: TLabel
              Left = 8
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Betrag'
            end
            object Label51: TLabel
              Left = 165
              Top = 56
              Width = 24
              Height = 13
              Caption = '/ mtl.'
            end
            object Label50: TLabel
              Left = 8
              Top = 80
              Width = 53
              Height = 13
              Caption = 'Einrichtung'
            end
            object DBComboBox8: TDBComboBox
              Left = 52
              Top = 4
              Width = 116
              Height = 21
              DataField = 'AADSLTyp'
              DataSource = dm1.dsKDatenAlt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              Items.Strings = (
                '768 kBit/s'
                '1536 kBit/s'
                '2300 kBit/s'
                '1000 kBit/s'
                '2000 kBit/s'
                '3000 kBit/s')
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit67: TDBEdit
              Left = 88
              Top = 28
              Width = 81
              Height = 21
              DataField = 'AADSLAnz'
              DataSource = dm1.dsKDatenAlt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit68: TDBEdit
              Left = 88
              Top = 52
              Width = 82
              Height = 21
              DataField = 'AADSLBetrag'
              DataSource = dm1.dsKDatenAlt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit69: TDBEdit
              Left = 88
              Top = 76
              Width = 82
              Height = 21
              DataField = 'AADSLEinr'
              DataSource = dm1.dsKDatenAlt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
          object DBCheckBox50: TDBCheckBox
            Left = 204
            Top = 32
            Width = 65
            Height = 17
            Cursor = crHandPoint
            Caption = 'DSL'
            Color = clBtnFace
            DataField = 'ADSL'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox53: TDBCheckBox
            Left = 216
            Top = 52
            Width = 77
            Height = 17
            Cursor = crHandPoint
            Caption = '768 MBit/s'
            DataField = 'ADSL768'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox55: TDBCheckBox
            Left = 216
            Top = 68
            Width = 77
            Height = 17
            Cursor = crHandPoint
            Caption = '1500 MBit/s'
            DataField = 'ADSL1500'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object StaticText14: TStaticText
            Left = 204
            Top = 8
            Width = 173
            Height = 18
            Alignment = taCenter
            AutoSize = False
            BiDiMode = bdLeftToRight
            BorderStyle = sbsSingle
            Caption = 'Wechsel zur class telecom '
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            TabOrder = 7
          end
          object DBEdit3: TDBEdit
            Left = 648
            Top = 32
            Width = 81
            Height = 21
            DataField = 'Benutzername'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object DBEdit31: TDBEdit
            Left = 648
            Top = 56
            Width = 82
            Height = 21
            DataField = 'Benutzerkennwort'
            DataSource = dm1.dsKDatenAlt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object StaticText7: TStaticText
            Left = 556
            Top = 8
            Width = 173
            Height = 18
            Alignment = taCenter
            AutoSize = False
            BiDiMode = bdLeftToRight
            BorderStyle = sbsSingle
            Caption = 'Zugangsdaten'
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            TabOrder = 10
          end
        end
      end
      object StaticText9: TStaticText
        Left = 132
        Top = 88
        Width = 173
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSingle
        Caption = 'Telefon'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        TabOrder = 23
      end
      object DBCheckBox42: TDBCheckBox
        Left = 140
        Top = 108
        Width = 125
        Height = 17
        Cursor = crHandPoint
        Caption = 'Neuanschluss (direkt)'
        Color = clBtnFace
        DataField = 'TNeuA'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 24
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBNavigator2: TDBNavigator
        Left = 516
        Top = 144
        Width = 240
        Height = 25
        DataSource = dm1.dsKDatenAlt
        TabOrder = 5
        OnClick = DBNavigator2Click
      end
      object DBEdit64: TDBEdit
        Left = 556
        Top = 28
        Width = 118
        Height = 22
        DataField = 'DGAndText'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 25
      end
      object DBEdit1: TDBEdit
        Left = 556
        Top = 52
        Width = 118
        Height = 22
        DataField = 'DGAndText'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 26
      end
      object DBEdit35: TDBEdit
        Left = 556
        Top = 76
        Width = 118
        Height = 22
        DataField = 'DGAndText'
        DataSource = dm1.dsKDatenAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 27
      end
      object StaticText13: TStaticText
        Left = 312
        Top = 8
        Width = 165
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdLeftToRight
        BorderStyle = sbsSingle
        Caption = '-'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        TabOrder = 28
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Verlauf'
      ImageIndex = 2
      object Label63: TLabel
        Left = 8
        Top = 212
        Width = 43
        Height = 13
        Caption = 'Erk'#228'rung'
      end
      object dbmHistory: TDBMemo
        Left = 8
        Top = 12
        Width = 749
        Height = 161
        DataField = 'KHistory'
        DataSource = dsKDaten
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 680
        Top = 212
        Width = 75
        Height = 25
        Caption = 'Speichern'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object memHistory: TMemo
        Left = 68
        Top = 212
        Width = 601
        Height = 89
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Extra'
      ImageIndex = 3
      object ToolBar1: TToolBar
        Left = 624
        Top = 400
        Width = 137
        Height = 45
        Align = alNone
        ButtonHeight = 19
        ButtonWidth = 83
        EdgeBorders = []
        Flat = True
        List = True
        ParentShowHint = False
        ShowCaptions = True
        ShowHint = True
        TabOrder = 0
        Transparent = True
        Wrapable = False
        object BackBtn: TToolButton
          Left = 0
          Top = 0
          AllowAllUp = True
          AutoSize = True
          Caption = 'BAA Schaumal'
          DropdownMenu = PopupMenu1
          ImageIndex = 0
          Style = tbsDropDown
        end
        object ToolButton3: TToolButton
          Left = 100
          Top = 0
          Width = 8
          Caption = 'ToolButton3'
          ImageIndex = 3
          Style = tbsSeparator
        end
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 173
        Height = 97
        Caption = 'Web Bestellung'
        TabOrder = 1
        object BitBtn4: TBitBtn
          Left = 20
          Top = 24
          Width = 133
          Height = 25
          Caption = 'ENO'
          TabOrder = 0
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 20
          Top = 56
          Width = 133
          Height = 25
          Caption = 'DSL'
          TabOrder = 1
          OnClick = BitBtn5Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 196
        Top = 8
        Width = 533
        Height = 393
        Caption = 'Briefe'
        TabOrder = 2
        object pcBrief: TPageControl
          Left = 36
          Top = 88
          Width = 469
          Height = 261
          ActivePage = TabSheet7
          TabIndex = 0
          TabOrder = 0
          object TabSheet7: TTabSheet
            Caption = 'K'#252'ndigung'
            object memBrief: TMemo
              Left = 0
              Top = 0
              Width = 461
              Height = 233
              Align = alClient
              Lines.Strings = (
                'Betreff: Vertragsverh'#228'ltnis'
                'Ihre K'#252'ndigung vom %s'
                ''
                'Sehr geehrte%s %s %s'
                ''
                
                  'Zu unserem bedauern haben wir Ihren K'#252'ndigungsschreiben vom %s e' +
                  'rhalten.'
                'Wir best'#228'tigen Ihnen hiermit die Wirksamkeit Ihrer K'#252'ndigung zum'
                '                                                         %s.'
                
                  'Wenn Sie noch fragen oder Anregungen haben Rufen Sie uns einfach' +
                  ' unter '
                'der Hotline 06201 / 87 91 87 an.'
                ''
                'Mit freundlichen Gr'#252#223'en'
                ''
                'Ihr class telecom team')
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Neutral'
            ImageIndex = 1
            object memBrief2: TMemo
              Left = 0
              Top = 0
              Width = 461
              Height = 233
              Align = alClient
              Lines.Strings = (
                'Betreff: Vertragsverh'#228'ltnis'
                ''
                'Sehr geehrte%s %s %s'
                ''
                
                  'Wenn Sie noch fragen oder Anregungen haben Rufen Sie uns einfach' +
                  ' unter '
                'der Hotline 06201 / 87 91 87 an'
                ''
                ''
                'Mit freundlichen Gr'#252#223'en'
                ''
                'Ihr dass telecom Team')
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object TabSheet9: TTabSheet
            Caption = 'Neuanschluss'
            ImageIndex = 2
            object Label59: TLabel
              Left = 20
              Top = 12
              Width = 317
              Height = 13
              Caption = 'Wir werden Ihren Auftrag zur Neuschaltung Ihres Anschlusses zum '
            end
            object Label60: TLabel
              Left = 20
              Top = 36
              Width = 203
              Height = 13
              Caption = 'realisieren. Eine Montage in Ihren R'#228'umen '
            end
            object Label61: TLabel
              Left = 288
              Top = 36
              Width = 52
              Height = 13
              Caption = 'erforderlich'
            end
            object Label62: TLabel
              Left = 20
              Top = 108
              Width = 55
              Height = 13
              Caption = 'Ihr Auftrag :'
            end
            object cboNA1: TComboBox
              Left = 224
              Top = 32
              Width = 61
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 0
              Text = 'ist nicht'
              Items.Strings = (
                'ist nicht'
                'ist')
            end
            object dtpNETarih: TDateTimePicker
              Left = 340
              Top = 8
              Width = 82
              Height = 21
              CalAlignment = dtaLeft
              Date = 38343.6116200694
              Time = 38343.6116200694
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 1
            end
            object cboNA2: TComboBox
              Left = 20
              Top = 56
              Width = 249
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 2
              Text = 'Unser Techniker wird zwischen 8.00-13.00 Uhr'
              Items.Strings = (
                'Unser Techniker wird zwischen 8.00-13.00 Uhr'
                'Unser Techniker wird zwischen 13.00-17.00 Uhr'
                '')
            end
            object cboNA3: TComboBox
              Left = 20
              Top = 80
              Width = 345
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 3
              Text = 
                'Ihr Anschluss wird  im Laufe des genannten Termins freigeschalte' +
                't'
              Items.Strings = (
                
                  'Ihr Anschluss wird  im Laufe des genannten Termins freigeschalte' +
                  't'
                'In Ihren R'#228'umen die Installation vornehmen')
            end
            object cboAuftrag: TComboBox
              Left = 88
              Top = 104
              Width = 181
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 4
              Text = 'class DSL Anschluss'
              Items.Strings = (
                'class DSL Anschluss'
                'class Analog Anschluss'
                'class ISDN Anschluss'
                'class Analog+DSL Anschluss'
                'class Analog+ISDN Anschluss')
            end
            object cboRufnummer: TComboBox
              Left = 20
              Top = 132
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 5
              Text = 'Ihre Rufnummer(n)'
              Items.Strings = (
                'Ihre Rufnummer(n)'
                'Betroffene Rufnummer(n)')
            end
            object BitBtn7: TBitBtn
              Left = 20
              Top = 200
              Width = 133
              Height = 25
              Caption = 'Neuanschluss'
              TabOrder = 6
              OnClick = BitBtn7Click
            end
          end
        end
        object BitBtn3: TBitBtn
          Left = 16
          Top = 52
          Width = 133
          Height = 25
          Caption = 'K'#252'ndigungsbest'#228'tigung'
          TabOrder = 1
          OnClick = BitBtn3Click
        end
        object BitBtn6: TBitBtn
          Left = 16
          Top = 24
          Width = 133
          Height = 25
          Caption = 'Preselect'
          TabOrder = 2
          OnClick = BitBtn6Click
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 124
        Width = 173
        Height = 97
        Caption = 'Kunden'
        TabOrder = 3
        object BitBtn25: TBitBtn
          Left = 20
          Top = 24
          Width = 133
          Height = 25
          Caption = 'BAA Neu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn25Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
        end
        object BitBtn24: TBitBtn
          Left = 20
          Top = 56
          Width = 133
          Height = 25
          Caption = 'Anfragenanzeigen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn24Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555550555
            555555555555F55555555505555B0555570555F55557F55555F55B50555B0555
            7B55575F5557F555575555B5055B5557B5555575F55755557555555B5550005B
            55555557555FFF575555555555BBB0055555555555777FF5555555555BBBBB00
            55555555577777FF55555000BBBBBBB050005FFF7777777F5FFFBBB5BBBBBBB0
            BBB577757777777F77755555BBBBBBB55555555577777775555555555BBBBB55
            55555555577777555555555705BBB55505555555F5777555F555557B5555055B
            505555575555F5575F5557B5555B0555B50555755557F55575F55B55555B0555
            5B5557555557F55557555555555B555555555555555755555555}
          NumGlyphs = 2
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 240
        Width = 173
        Height = 97
        Caption = 'Men'#252
        TabOrder = 4
        object BitBtn8: TBitBtn
          Left = 20
          Top = 24
          Width = 133
          Height = 25
          Caption = 'Rechnungs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn8Click
          NumGlyphs = 2
        end
        object BitBtn9: TBitBtn
          Left = 20
          Top = 56
          Width = 133
          Height = 25
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          NumGlyphs = 2
        end
      end
    end
  end
  object tbKDaten: TADOTable
    Connection = dm1.ADOBaglanti
    CursorType = ctStatic
    TableName = 'K_Daten'
    Left = 468
    Top = 12
    object tbKDatenKID: TWideStringField
      FieldName = 'KID'
      Size = 50
    end
    object tbKDatenKBuKtoNR: TWideStringField
      FieldName = 'KBuKtoNR'
      Size = 16
    end
    object tbKDatenKAnrede: TWideStringField
      FieldName = 'KAnrede'
      Size = 12
    end
    object tbKDatenKFirma: TWideStringField
      FieldName = 'KFirma'
      Size = 128
    end
    object tbKDatenKName: TWideStringField
      FieldName = 'KName'
      Size = 80
    end
    object tbKDatenKVorname: TWideStringField
      FieldName = 'KVorname'
      Size = 80
    end
    object tbKDatenKDatum: TDateTimeField
      FieldName = 'KDatum'
    end
    object tbKDatenKStrasse: TWideStringField
      FieldName = 'KStrasse'
      Size = 80
    end
    object tbKDatenKNK: TWideStringField
      FieldName = 'KNK'
      Size = 3
    end
    object tbKDatenKPLZ: TWideStringField
      FieldName = 'KPLZ'
      Size = 5
    end
    object tbKDatenKOrt: TWideStringField
      FieldName = 'KOrt'
      Size = 80
    end
    object tbKDatenKTel: TWideStringField
      FieldName = 'KTel'
      Size = 50
    end
    object tbKDatenKFax: TWideStringField
      FieldName = 'KFax'
      Size = 50
    end
    object tbKDatenKTel_gesch: TWideStringField
      FieldName = 'KTel_gesch'
      Size = 50
    end
    object tbKDatenKFax_gesch: TWideStringField
      FieldName = 'KFax_gesch'
      Size = 50
    end
    object tbKDatenKHomepage: TMemoField
      FieldName = 'KHomepage'
      BlobType = ftMemo
    end
    object tbKDatenKMobil: TWideStringField
      FieldName = 'KMobil'
      Size = 50
    end
    object tbKDatenKMail: TWideStringField
      FieldName = 'KMail'
      Size = 80
    end
    object tbKDatenKAbbuchung: TBooleanField
      FieldName = 'KAbbuchung'
    end
    object tbKDatenKKonto: TWideStringField
      FieldName = 'KKonto'
      Size = 30
    end
    object tbKDatenKBLZ: TIntegerField
      FieldName = 'KBLZ'
    end
    object tbKDatenKBank: TWideStringField
      FieldName = 'KBank'
      Size = 80
    end
    object tbKDatenKKtoInhAnrede: TWideStringField
      FieldName = 'KKtoInhAnrede'
      Size = 12
    end
    object tbKDatenKKtoInhNN: TWideStringField
      FieldName = 'KKtoInhNN'
      Size = 50
    end
    object tbKDatenKKtoInhVN: TWideStringField
      FieldName = 'KKtoInhVN'
      Size = 50
    end
    object tbKDatenKKtoInhFirma: TWideStringField
      FieldName = 'KKtoInhFirma'
      Size = 80
    end
    object tbKDatenKKtoInhStrasse: TWideStringField
      FieldName = 'KKtoInhStrasse'
      Size = 80
    end
    object tbKDatenKKtoInhNZ: TWideStringField
      FieldName = 'KKtoInhNZ'
      Size = 3
    end
    object tbKDatenKKtoInhPLZ: TWideStringField
      FieldName = 'KKtoInhPLZ'
      Size = 5
    end
    object tbKDatenKKtoInhOrt: TWideStringField
      FieldName = 'KKtoInhOrt'
      Size = 80
    end
    object tbKDatenKGeburt: TDateTimeField
      FieldName = 'KGeburt'
    end
    object tbKDatenKUST: TWideStringField
      FieldName = 'KUST'
      Size = 30
    end
    object tbKDatenKUSTAbzugsf: TBooleanField
      FieldName = 'KUSTAbzugsf'
    end
    object tbKDatenMAID: TIntegerField
      FieldName = 'MAID'
    end
    object tbKDatenK_passiv: TBooleanField
      FieldName = 'K_passiv'
    end
    object tbKDatenK_inaktiv: TBooleanField
      FieldName = 'K_inaktiv'
    end
    object tbKDatenK_storno: TBooleanField
      FieldName = 'K_storno'
    end
    object tbKDatenK_inaktivDat: TDateTimeField
      FieldName = 'K_inaktivDat'
    end
    object tbKDatenK_stornoDat: TDateTimeField
      FieldName = 'K_stornoDat'
    end
    object tbKDatenksart: TWideStringField
      FieldName = 'ksart'
      Size = 10
    end
    object tbKDatenKInternet: TBooleanField
      FieldName = 'KInternet'
    end
    object tbKDatenKHistory: TMemoField
      FieldName = 'KHistory'
      BlobType = ftMemo
    end
    object tbKDatenKKundenAktion: TBooleanField
      FieldName = 'KKundenAktion'
    end
    object tbKDatenKAktionKID: TFloatField
      FieldName = 'KAktionKID'
    end
  end
  object dsKDaten: TDataSource
    DataSet = tbKDaten
    Left = 500
    Top = 12
  end
  object PopupMenu1: TPopupMenu
    Left = 516
    Top = 480
    object a1: TMenuItem
      Caption = 'BAA Neu'
    end
  end
  object imgLogolar: TImageList
    Masked = False
    Left = 532
    Top = 12
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF00000000000000000000FF959500FF959500FF95
      9500FF959500FF959500FF959500FF959500FF959500FF959500FF959500FF95
      9500FF959500FF959500FF959500000000000000000080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF000000000000000000FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7FF00FFB7
      FF00FFB7FF00FFB7FF00FFB7FF00000000000000000080FF000080FF000080FF
      000080FF000080FF000080FF000080FF000080FF000080FF000080FF000080FF
      000080FF000080FF000080FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
