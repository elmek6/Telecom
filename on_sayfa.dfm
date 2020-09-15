object frmOnSayfa: TfrmOnSayfa
  Left = 13
  Top = 64
  Width = 778
  Height = 326
  Caption = 'frmOnSayfa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 4
    Top = 8
    Width = 761
    Height = 201
    DataSource = dm2.dsVor
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'KID'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bezahlt'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KName'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KVorname'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KStrasse'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KPLZ'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOrt'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RechnungNr'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rechnungsbetrag'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAID'
        Visible = True
      end>
  end
  object DBCheckBox1: TDBCheckBox
    Left = 12
    Top = 220
    Width = 97
    Height = 17
    Caption = 'Bezahlt'
    DataField = 'Bezahlt'
    DataSource = dm2.dsVor
    TabOrder = 1
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBNavigator1: TDBNavigator
    Left = 4
    Top = 264
    Width = 240
    Height = 25
    DataSource = dm2.dsVor
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 688
    Top = 264
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkOK
  end
end
