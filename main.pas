unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, ComCtrls, ToolWin, Menus, ActnMan,
  CustomizeDlg, CheckLst, Spin, ExtCtrls, jpeg;

type
  TfrmMain = class(TForm)
    CustomizeDlg1: TCustomizeDlg;
    ActionManager1: TActionManager;
    StatusBar1: TStatusBar;
    actKunden: TAction;
    repRechnung: TAction;
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    actBeenden: TAction;
    actImpGesp: TAction;
    Gesprch1: TMenuItem;
    Beenden1: TMenuItem;
    ImportwareGesprch1: TMenuItem;
    Report1: TMenuItem;
    Rechnung1: TMenuItem;
    Bearbeiten1: TMenuItem;
    actVertriebspartner: TAction;
    Kunden1: TMenuItem;
    Vertriebspartner1: TMenuItem;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    SpeedButton1: TSpeedButton;
    repProv: TAction;
    Provision1: TMenuItem;
    actEinstellung: TAction;
    Einstellung1: TMenuItem;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    actKalender: TAction;
    Kalender1: TMenuItem;
    cmdAnfragen: TSpeedButton;
    repGonder: TAction;
    Senden1: TMenuItem;
    cmdDonem: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    procedure actKundenExecute(Sender: TObject);
    procedure actBeendenExecute(Sender: TObject);
    procedure actImpGespExecute(Sender: TObject);
    procedure repRechnungExecute(Sender: TObject);
    procedure actVertriebspartnerExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure repProvExecute(Sender: TObject);
    procedure actEinstellungExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actKalenderExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure repGonderExecute(Sender: TObject);
    procedure cmdAnfragenClick(Sender: TObject);
    procedure cmdDonemClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AnfrageSay;
  published
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses musteri, impGesp, qRechnungOn, Vertriebspartner, rechdruck, dm_1, dm_2,
  login, provdruck, einstel, GLOBAL, vaa, kalender, zentrum, senden,
  anfragen, donem, on_sayfa;

{$R *.dfm}

procedure TfrmMain.actKundenExecute(Sender: TObject);
begin
  frmMusteri.ShowModal;
  AnfrageSay;
end;

procedure TfrmMain.actBeendenExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.actImpGespExecute(Sender: TObject);
begin
  frmImpGesp.ShowModal;
end;

procedure TfrmMain.repRechnungExecute(Sender: TObject);
begin
  frmRechnungsdrucken.ShowModal;
end;

procedure TfrmMain.actVertriebspartnerExecute(Sender: TObject);
begin
  frmVertriebspartner.ShowModal;
end;

procedure TfrmMain.FormShow(Sender: TObject);
  var
    lsDBPassword,
    Global_DBConnection_String    :string;
begin
  frmLogin.ShowModal;

  GenelOku;
  lsDBPassword := '';
  Global_DBConnection_String :=
    'Provider=Microsoft.Jet.OLEDB.4.0;' +
    'Data Source=' + sDaten + ';' +
    'Persist Security Info=False;' +
    'Jet OLEDB:Database Password=' + lsDBPassword;

  dm1.ADOBaglanti.ConnectionString := Global_DBConnection_String;
  dm1.ADOBaglanti.Connected := True;
  dm1.tbKDaten.Active := True;
  dm1.tbKDatenAlt.Active := True;
  dm1.tbMDaten.Active := True;
  dm1.tbUlkeKod.Active := True;
  dm1.tbMobilKod.Active := True;
  dm1.tbTarife.Active := True;

  TarihSec(iSecAy, iSecYil);

  dm1.tbAnfragen.Active := True;
  AnfrageSay;

end;

procedure TfrmMain.repProvExecute(Sender: TObject);
begin
  frmProv.Showmodal;
end;

procedure TfrmMain.actEinstellungExecute(Sender: TObject);
begin
  frmEinstellung.ShowModal;
end;


procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  GenelYaz;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  dm2.tbVAA.Active := True;
  frmVAA.ShowModal;
end;

procedure TfrmMain.actKalenderExecute(Sender: TObject);
begin
  frmKalender.ShowModal;
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
begin
  frmZentrum.ShowModal;
end;


procedure TfrmMain.repGonderExecute(Sender: TObject);
begin
  frmSenden.ShowModal;
end;

procedure TfrmMain.AnfrageSay;
begin
  dm1.tbAnfragen.Filter := 'AStatus = '+QuotedStr('Unbearbeitet');
  dm1.tbAnfragen.Filtered := True;
  cmdAnfragen.Caption := format('Anfragen (%d)', [dm1.tbAnfragen.RecordCount]);
end;

procedure TfrmMain.cmdAnfragenClick(Sender: TObject);
begin
  dm1.tbAnfragen.Filtered := False;
  frmAnfragen.ShowModal;
end;

procedure TfrmMain.cmdDonemClick(Sender: TObject);
begin
  frmDonem.ShowModal;
end;

procedure TfrmMain.SpeedButton3Click(Sender: TObject);
begin
  frmOnSayfa.ShowModal;
end;

end.
