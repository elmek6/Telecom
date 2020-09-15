unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmLogin = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    cmdKullanici: TSpeedButton;
    cmdSifre: TSpeedButton;
    cboKullanicilar: TComboBox;
    txtSifre: TEdit;
    cmdTamam: TBitBtn;
    cmdIptal: TBitBtn;
    Timer1: TTimer;
    procedure cmdTamamClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses GLOBAL, dm_1;

{$R *.dfm}

procedure TfrmLogin.cmdTamamClick(Sender: TObject);
begin
  User[1] := cboKullanicilar.Items[cboKullanicilar.ItemIndex];
  iUserAktif := cboKullanicilar.ItemIndex + 1;
  regYaz;

end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  regOku;
  cboKullanicilar.ItemIndex := iUserAktif-1;
end;

procedure TfrmLogin.Timer1Timer(Sender: TObject);
begin
  inc(iRunTime);
  koruma;
end;

end.
