unit donem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmDonem = class(TForm)
    lstJ: TListBox;
    lstM: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDonem: TfrmDonem;

implementation

uses GLOBAL;

{$R *.dfm}

procedure TfrmDonem.BitBtn1Click(Sender: TObject);
begin
  TarihSec(lstM.ItemIndex+1, 2004+lstJ.ItemIndex);
end;

procedure TfrmDonem.FormShow(Sender: TObject);
begin
  lstM.ItemIndex := iSecAy - 1;
  lstJ.ItemIndex := 0;
end;

end.
