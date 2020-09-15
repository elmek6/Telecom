unit einstel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmEinstellung = class(TForm)
    Label1: TLabel;
    txtDaten: TEdit;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    memLizenz: TMemo;
    Label2: TLabel;
    lbeR: TLabeledEdit;
    lbeRT: TLabeledEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEinstellung: TfrmEinstellung;

implementation

uses GLOBAL;

{$R *.dfm}

procedure TfrmEinstellung.BitBtn1Click(Sender: TObject);
begin
  if opendialog1.Execute then
    txtDaten.Text := opendialog1.FileName;
end;

procedure TfrmEinstellung.BitBtn2Click(Sender: TObject);
begin
  sDaten := txtDaten.Text;
  Lisans.Cozumsuz := memLizenz.Lines.Text;
  RegYaz;
  GenelYaz;
end;

procedure TfrmEinstellung.FormShow(Sender: TObject);
begin
  {DDMMYYYYCCCCTTTT + XXXX
   day
   month
   year
   count - en fazla calisma say
   time - en fazla calisma saniye

   hepsi ascii ve sonda
   toplamlari
  }

  txtDaten.Text := sDaten;
  memLizenz.Lines.Text := Lisans.Cozumsuz;

  lbeR.Text := inttostr(iRun);
  lbeRT.Text := inttostr(iRunTime);
end;

end.
