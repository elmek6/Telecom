object frmProv: TfrmProv
  Left = 119
  Top = 96
  Width = 591
  Height = 348
  Caption = 'Provisiondrucken'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 583
    Height = 268
    Align = alTop
    DataSource = dm1.dsMDaten
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'M_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MTitel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MFirma'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MName'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MVorname'
        Width = 132
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 492
    Top = 284
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 4
    Top = 284
    Width = 75
    Height = 25
    Caption = 'Vorseiten'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 92
    Top = 284
    Width = 75
    Height = 25
    Caption = 'R'#252'ckseiten'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
end
