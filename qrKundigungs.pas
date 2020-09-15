unit qrKundigungs;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrKundigung = class(TQuickRep)
    QRLabel1: TQRLabel;
    TitleBand1: TQRBand;
    QRImage1: TQRImage;
    qrmMetin: TQRMemo;
    qrlAnrede: TQRLabel;
    qrlName: TQRLabel;
    qrlStrasse: TQRLabel;
    qrlPLZ_Ort: TQRLabel;
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
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
  private

  public

  end;

var
  qrKundigung: TqrKundigung;

implementation

uses dm_1;

{$R *.DFM}

end.
