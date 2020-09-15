unit Neuanschluss;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrNeuanschluss = class(TQuickRep)
    TitleBand1: TQRBand;
    QRImage1: TQRImage;
    QRShape4: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    qrlIsim: TQRLabel;
    QRExpr1: TQRExpr;
    qrmMetin: TQRMemo;
    QRLabel3: TQRLabel;
    qrlGiris: TQRLabel;
    QRLabel1: TQRLabel;
    qrlAuftrag: TQRLabel;
    qrlRufnummer: TQRLabel;
    QRLabel5: TQRLabel;
    qrlVorwahl: TQRLabel;
    QRLabel7: TQRLabel;
    qrmRufnummer: TQRMemo;
    QRMemo2: TQRMemo;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    qrlKAnschlussgeb: TQRLabel;
    qrlKGrungeb: TQRLabel;
  private

  public

  end;

var
  qrNeuanschluss: TqrNeuanschluss;

implementation

uses musteri, dm_1;

{$R *.DFM}

end.
