unit preselect;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrPreselect = class(TQuickRep)
    TitleBand1: TQRBand;
    QRImage1: TQRImage;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
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
    QRExpr1: TQRExpr;
    qrmMetin: TQRMemo;
    QRLabel1: TQRLabel;
    qrlGiris: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
  private

  public

  end;

var
  qrPreselect: TqrPreselect;

implementation

uses musteri;

{$R *.DFM}

end.
