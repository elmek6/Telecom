object frmKalender: TfrmKalender
  Left = -4
  Top = 19
  Width = 812
  Height = 525
  Caption = 'Kalender'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 804
    Height = 498
    Align = alClient
    TabOrder = 0
    object kalender: TMonthCalendar
      Left = 0
      Top = 0
      Width = 800
      Height = 494
      Align = alClient
      AutoSize = True
      Date = 38230.6723701736
      TabOrder = 0
      WeekNumbers = True
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 468
      Width = 787
      Height = 25
      TabOrder = 1
      Kind = bkOK
    end
  end
end
