unit kalender;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons;

type
  TfrmKalender = class(TForm)
    ScrollBox1: TScrollBox;
    kalender: TMonthCalendar;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKalender: TfrmKalender;

implementation

{$R *.dfm}

end.
