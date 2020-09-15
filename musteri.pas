unit musteri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Buttons, StdCtrls, Mask, ComCtrls, ToolWin,
  ImgList, Grids, DBGrids, DB, ADODB, ShellApi, Menus, URLmon;

type
  TfrmMusteri = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    dbeKID: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    cmdMusteriEk: TSpeedButton;
    BitBtn1: TBitBtn;
    Shape5: TShape;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Shape10: TShape;
    Shape6: TShape;
    Shape4: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton3: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Shape1: TShape;
    Label22: TLabel;
    Label32: TLabel;
    Label23: TLabel;
    Label28: TLabel;
    dbcKsart: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit4: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    dbeKemail: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    tbKDaten: TADOTable;
    dsKDaten: TDataSource;
    DBEdit32: TDBEdit;
    Label54: TLabel;
    SpeedButton1: TSpeedButton;
    pnlVertriebspartner: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    SpeedButton4: TSpeedButton;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    dbeVemail: TDBEdit;
    Bevel1: TBevel;
    pnlRechnungsanschrift: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label55: TLabel;
    DBComboBox4: TDBComboBox;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBComboBox10: TDBComboBox;
    Bevel2: TBevel;
    DBCheckBox6: TDBCheckBox;
    tbKDatenKID: TWideStringField;
    tbKDatenKBuKtoNR: TWideStringField;
    tbKDatenKAnrede: TWideStringField;
    tbKDatenKFirma: TWideStringField;
    tbKDatenKName: TWideStringField;
    tbKDatenKVorname: TWideStringField;
    tbKDatenKDatum: TDateTimeField;
    tbKDatenKStrasse: TWideStringField;
    tbKDatenKNK: TWideStringField;
    tbKDatenKPLZ: TWideStringField;
    tbKDatenKOrt: TWideStringField;
    tbKDatenKTel: TWideStringField;
    tbKDatenKFax: TWideStringField;
    tbKDatenKTel_gesch: TWideStringField;
    tbKDatenKFax_gesch: TWideStringField;
    tbKDatenKHomepage: TMemoField;
    tbKDatenKMobil: TWideStringField;
    tbKDatenKMail: TWideStringField;
    tbKDatenKAbbuchung: TBooleanField;
    tbKDatenKKonto: TWideStringField;
    tbKDatenKBLZ: TIntegerField;
    tbKDatenKBank: TWideStringField;
    tbKDatenKKtoInhAnrede: TWideStringField;
    tbKDatenKKtoInhNN: TWideStringField;
    tbKDatenKKtoInhVN: TWideStringField;
    tbKDatenKKtoInhFirma: TWideStringField;
    tbKDatenKKtoInhStrasse: TWideStringField;
    tbKDatenKKtoInhNZ: TWideStringField;
    tbKDatenKKtoInhPLZ: TWideStringField;
    tbKDatenKKtoInhOrt: TWideStringField;
    tbKDatenKGeburt: TDateTimeField;
    tbKDatenKUST: TWideStringField;
    tbKDatenKUSTAbzugsf: TBooleanField;
    tbKDatenMAID: TIntegerField;
    tbKDatenK_inaktiv: TBooleanField;
    tbKDatenK_storno: TBooleanField;
    tbKDatenK_inaktivDat: TDateTimeField;
    tbKDatenK_stornoDat: TDateTimeField;
    tbKDatenksart: TWideStringField;
    tbKDatenKInternet: TBooleanField;
    Label41: TLabel;
    Shape12: TShape;
    DBEdit11: TDBEdit;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    StaticText27: TStaticText;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit12: TDBEdit;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    Shape13: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    StaticText1: TStaticText;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBComboBox7: TDBComboBox;
    DBComboBox9: TDBComboBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBComboBox5: TDBComboBox;
    StaticText3: TStaticText;
    StaticText8: TStaticText;
    Panel2: TPanel;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    StaticText4: TStaticText;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    StaticText6: TStaticText;
    DBCheckBox67: TDBCheckBox;
    DBCheckBox68: TDBCheckBox;
    DBCheckBox69: TDBCheckBox;
    StaticText10: TStaticText;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox64: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    StaticText11: TStaticText;
    DBCheckBox66: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    DBEdit34: TDBEdit;
    TabSheet4: TTabSheet;
    Shape14: TShape;
    Bevel3: TBevel;
    Shape3: TShape;
    Label3: TLabel;
    DBCheckBox15: TDBCheckBox;
    DBComboBox1: TDBComboBox;
    StaticText2: TStaticText;
    Panel1: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label50: TLabel;
    DBComboBox8: TDBComboBox;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    StaticText14: TStaticText;
    Label57: TLabel;
    Shape11: TShape;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    StaticText12: TStaticText;
    Label40: TLabel;
    Label46: TLabel;
    DBEdit33: TDBEdit;
    DBEdit37: TDBEdit;
    Label47: TLabel;
    Label56: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    Shape17: TShape;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    StaticText5: TStaticText;
    Shape8: TShape;
    StaticText9: TStaticText;
    DBCheckBox42: TDBCheckBox;
    Label30: TLabel;
    DBEdit3: TDBEdit;
    Label31: TLabel;
    DBEdit31: TDBEdit;
    StaticText7: TStaticText;
    Bevel4: TBevel;
    Shape7: TShape;
    Panel3: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    SpeedButton5: TSpeedButton;
    Label35: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    DBEdit19: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit35: TDBEdit;
    Label52: TLabel;
    Label53: TLabel;
    Shape9: TShape;
    StaticText13: TStaticText;
    Bevel5: TBevel;
    Shape18: TShape;
    DBCheckBox7: TDBCheckBox;
    Bevel6: TBevel;
    Shape19: TShape;
    Panel4: TPanel;
    Label58: TLabel;
    DBEdit36: TDBEdit;
    TabSheet5: TTabSheet;
    dbmHistory: TDBMemo;
    Label63: TLabel;
    BitBtn2: TBitBtn;
    memHistory: TMemo;
    tbKDatenKHistory: TMemoField;
    SpeedButton2: TSpeedButton;
    tbKDatenKKundenAktion: TBooleanField;
    tbKDatenKAktionKID: TFloatField;
    TabSheet6: TTabSheet;
    ToolBar1: TToolBar;
    BackBtn: TToolButton;
    ToolButton3: TToolButton;
    PopupMenu1: TPopupMenu;
    a1: TMenuItem;
    GroupBox1: TGroupBox;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox2: TGroupBox;
    pcBrief: TPageControl;
    TabSheet7: TTabSheet;
    memBrief: TMemo;
    TabSheet8: TTabSheet;
    memBrief2: TMemo;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    BitBtn25: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn6: TBitBtn;
    imgLogolar: TImageList;
    Bevel7: TBevel;
    Shape20: TShape;
    Panel5: TPanel;
    Label38: TLabel;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBEdit43: TDBEdit;
    DBEdit42: TDBEdit;
    DBCheckBox16: TDBCheckBox;
    tbKDatenK_passiv: TBooleanField;
    GroupBox4: TGroupBox;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    TabSheet9: TTabSheet;
    cboNA1: TComboBox;
    Label59: TLabel;
    dtpNETarih: TDateTimePicker;
    Label60: TLabel;
    Label61: TLabel;
    cboNA2: TComboBox;
    cboNA3: TComboBox;
    Label62: TLabel;
    cboAuftrag: TComboBox;
    cboRufnummer: TComboBox;
    BitBtn7: TBitBtn;
    procedure toolbutton(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure cmdMusteriEkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure DBEdit32Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure YeniKDaten1;
    procedure KayitGoster;
  published
    { Public declarations }
  end;

var
  frmMusteri: TfrmMusteri;

implementation

uses dm_1, must_ara, vaa, VertriebspartnerEk, dm_2, GLOBAL, anfragen,
  qrKundigungs, preselect, rechdruck, Neuanschluss;

{$R *.dfm}

procedure TfrmMusteri.toolbutton(Sender: TObject);
begin
{  if (DataSource <> nil) and (DataSource.State <> dsInactive) then
  begin
    if not (csDesigning in ComponentState) and Assigned(FBeforeAction) then
      FBeforeAction(Self, Index);
    with DataSource.DataSet do
    begin
      case Index of
        nbPrior: Prior;
        nbNext: Next;
        nbFirst: First;
        nbLast: Last;
        nbInsert: Insert;
        nbEdit: Edit;
        nbCancel: Cancel;
        nbPost: Post;
        nbRefresh: Refresh;
        nbDelete:
          if not FConfirmDelete or
            (MessageDlg(SDeleteRecordQuestion, mtConfirmation,
            mbOKCancel, 0) <> idCancel) then Delete;
      end;
    end;
  end;
  if not (csDesigning in ComponentState) and Assigned(FOnNavClick) then
    FOnNavClick(Self, Index);
    }
end;

{
dugmelerin aktif ya da pasif oldugunu belirleyecek kodlar
var
  UpEnable, DnEnable: Boolean;
begin
  UpEnable := Enabled and FDataLink.Active and not FDataLink.DataSet.BOF;
  DnEnable := Enabled and FDataLink.Active and not FDataLink.DataSet.EOF;
  Buttons[nbFirst].Enabled := UpEnable;
  Buttons[nbPrior].Enabled := UpEnable;
  Buttons[nbNext].Enabled := DnEnable;
  Buttons[nbLast].Enabled := DnEnable;
  Buttons[nbDelete].Enabled := Enabled and FDataLink.Active and
    FDataLink.DataSet.CanModify and
    not (FDataLink.DataSet.BOF and FDataLink.DataSet.EOF);
}
procedure TfrmMusteri.ToolButton11Click(Sender: TObject);
begin
  close;
end;

procedure TfrmMusteri.PageControl1Change(Sender: TObject);
begin
  if PageControl1.TabIndex = 1 then begin
    dm1.tbKDatenAlt.Filter := 'KID = ' + QuotedStr(dbeKID.Text);
    dm1.tbKDatenAlt.Filtered := true;
    dm1.tbKDatenAlt.First;
    if dm1.tbKDatenAlt.RecordCount = 0 then
      YeniKDaten1;    
  end;
end;

procedure TfrmMusteri.TabSheet1Show(Sender: TObject);
begin
  tbKDaten.Filtered := False;
  tbKDaten.Active := True;
end;

procedure TfrmMusteri.cmdMusteriEkClick(Sender: TObject);
begin
  if frmMusteriEk.ShowModal=mrOk then begin
      tbKDaten.Locate('KID', frmMusteriEk.dbgrid1.SelectedField.DataSet.FieldValues['KID'], []);
      KayitGoster;
  end;
end;

procedure TfrmMusteri.FormShow(Sender: TObject);
begin
  tbKDaten.Active := true;
  tbKDaten.Sort   := 'KID ASC';
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmMusteri.BitBtn25Click(Sender: TObject);
begin
  frmVAA.ShowModal;
end;
procedure TfrmMusteri.DBEdit32Change(Sender: TObject);
begin
  pnlVertriebspartner.Visible := dbedit32.EditText <> '0';
end;

procedure TfrmMusteri.SpeedButton1Click(Sender: TObject);
begin
  if frmVertriebspartnerEk.ShowModal=mrOK then
    DBEdit32.EditText := frmVertriebspartnerEk.DBGrid1.SelectedField.DataSet.FieldValues['M_ID'];
end;

procedure TfrmMusteri.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
{nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh}
  case Button of
    nbFirst,
    nbPrior,
    nbNext,
    nbLast:
      begin
        KayitGoster;
      end;
    nbInsert:
      begin
        tbKDatenKAbbuchung.AsBoolean := False;
        tbKDatenK_inaktiv.AsBoolean := False;
        tbKDatenK_storno.AsBoolean := False;
        tbKDatenKKundenAktion.AsBoolean := False;
        tbKDatenKInternet.AsBoolean := False;
        tbKDatenKNK.AsString := 'D';
        tbKDatenMAID.AsInteger := 0;
//        tbKDatenKID.AsString :=
      end;
  end;
  pnlRechnungsanschrift.Visible := tbKDatenksart.AsString = 'Business';
end;

procedure TfrmMusteri.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  case Button of
    nbInsert:
      begin
        YeniKDaten1;
      end;
  end;
end;

procedure TfrmMusteri.BitBtn2Click(Sender: TObject);
begin
  tbKDaten.Edit;
  tbKDatenKHistory.AsString := tbKDatenKHistory.AsString
   +'['+datetimetostr(now)+' - '+User[1]+']'+#13+'"' + memHistory.Lines.Text + '"'+#13;
  memHistory.Lines.Clear;
end;

procedure TfrmMusteri.SpeedButton4Click(Sender: TObject);
begin
  shellexecute(application.handle,'open',pchar('mailto:'+dbeVemail.EditText+'?Subject=class telecom Kundeninfo'),nil,nil,sw_show);
end;

procedure TfrmMusteri.SpeedButton2Click(Sender: TObject);
begin
  shellexecute(application.handle,'open',pchar('mailto:'+dbeKemail.EditText+'?Subject=class telecom Kd. Nr '+dbeKID.EditText),nil,nil,sw_show);
end;

procedure TfrmMusteri.BitBtn24Click(Sender: TObject);
begin
  dm1.tbAnfragen.Filter := 'KID = '+QuotedStr(tbKDatenKID.AsString);
  dm1.tbAnfragen.Filtered := True;
  if dm1.tbAnfragen.RecordCount=0 then begin
    showmessage('Datei wird nicht gefunden');
    dm1.tbAnfragen.Filtered := False;
  end;
  frmAnfragen.ShowModal;
end;

procedure TfrmMusteri.BitBtn3Click(Sender: TObject);
  var
    ek,
    hitap,
    isim,
    tarih,
    tarih2,
    orj    :string;
begin
  hitap := tbKDatenKAnrede.AsString;
  ek := '';
  if hitap = 'Herr' then ek := 'r';
  isim := tbKDatenKName.AsString + ' ' + tbKDatenKVorname.AsString;
  tarih := tbKDatenK_stornoDat.AsString;
  tarih2 := tbKDatenK_inaktivDat.AsString;

  qrKundigung.qrlAnrede.Caption := hitap;
  qrKundigung.qrlName.Caption := isim;
  qrKundigung.qrlStrasse.Caption := tbKDatenKStrasse.AsString;
  qrKundigung.qrlPLZ_Ort.Caption := tbKDatenKPLZ.AsString + ' ' + tbKDatenKOrt.AsString;

  if pcBrief.ActivePageIndex= 0 then
    qrKundigung.qrmMetin.Lines.Text := format(memBrief.Lines.Text, [tarih2, ek, hitap, isim, tarih2, tarih])
  else
    qrKundigung.qrmMetin.Lines.Text := format(memBrief2.Lines.Text, [ek, hitap, isim]);

  qrKundigung.Preview;
end;

procedure TfrmMusteri.BitBtn4Click(Sender: TObject);
begin
  HlinkNavigateString(nil,'http://enable.eno.de/');
end;

procedure TfrmMusteri.BitBtn5Click(Sender: TObject);
begin
  HlinkNavigateString(nil, 'http://www.iptel-online.de/classradius/login.htm');
end;

procedure TfrmMusteri.BitBtn6Click(Sender: TObject);
  var
    ek,
    hitap,
    orj    :string;
begin
  hitap := tbKDatenKAnrede.AsString;
  ek := '';
  if hitap = 'Herr' then ek := 'r';

  qrPreselect.qrlGiris.Caption := format('Sehr geehrte%s %s %s', [ek, hitap, tbKDatenKName.AsString]);
  qrPreselect.Preview;
end;

procedure TfrmMusteri.SpeedButton5Click(Sender: TObject);
begin
  HlinkNavigateString(nil,'http://www.bankleitzahlen.de/');
end;

procedure TfrmMusteri.YeniKDaten1;
begin
  dm1.tbKDatenAlt.Insert;

  dm1.tbKDatenAltKID.AsString := tbKDatenKID.AsString;
  dm1.tbKDatenAltKID1.AsInteger := 1000;
  dm1.tbKDatenAltIDSL.AsBoolean := False;
  dm1.tbKDatenAltIISDN.AsBoolean := False;
  dm1.tbKDatenAltIAnalog.AsBoolean := False;
  dm1.tbKDatenAltTNeuA.AsBoolean := False;
  dm1.tbKDatenAltTAnU.AsBoolean := False;
  dm1.tbKDatenAltTPS.AsBoolean := False;
  dm1.tbKDatenAltTPSmO.AsBoolean := False;
  dm1.tbKDatenAltTPSoO.AsBoolean := False;

  dm1.tbKDatenAltVLO.AsBoolean := False;
  dm1.tbKDatenAltVL6.AsBoolean := False;
  dm1.tbKDatenAltVL12.AsBoolean := False;
  dm1.tbKDatenAltBAAnalog.AsBoolean := False;
  dm1.tbKDatenAltBAISDN.AsBoolean := False;
  dm1.tbKDatenAltBAPMX.AsBoolean := False;
  dm1.tbKDatenAltBADSL.AsBoolean := False;

  dm1.tbKDatenAltDGDT.AsBoolean := False;
  dm1.tbKDatenAltDGArcor.AsBoolean := False;
  dm1.tbKDatenAltDGAlova.AsBoolean := False;
  dm1.tbKDatenAltDGTel2.AsBoolean := False;
  dm1.tbKDatenAltDGAndere.AsBoolean := False;

  dm1.tbKDatenAltAAnalog.AsBoolean := False;
  dm1.tbKDatenAltAISDN.AsBoolean := False;
  dm1.tbKDatenAltADSL.AsBoolean := False;
  dm1.tbKDatenAltAPMX.AsBoolean := False;
  dm1.tbKDatenAltAISDNStd.AsBoolean := False;
  dm1.tbKDatenAltAISDNKomf.AsBoolean := False;
  dm1.tbKDatenAltADSL768.AsBoolean := False;
  dm1.tbKDatenAltADSL1500.AsBoolean := False;

  dm1.tbKDatenAltATaktSek.AsBoolean := False;
  dm1.tbKDatenAltATaktSek1.AsBoolean := False;
  dm1.tbKDatenAltATaktMin.AsBoolean := False;
  dm1.tbKDatenAltATaktCBC.AsBoolean := False;
  dm1.tbKDatenAltATaktSpezial.AsBoolean := False;

  dm1.tbKDatenAltWAUbern.AsBoolean := False;
  dm1.tbKDatenAltWmRufNR.AsBoolean := False;
  dm1.tbKDatenAltWmNeuRufNR.AsBoolean := False;

  dm1.tbKDatenAltSEVNJa.AsBoolean := False;
  dm1.tbKDatenAltTBStandard.AsBoolean := False;
  dm1.tbKDatenAltTBkeinEintrag.AsBoolean := False;
  dm1.tbKDatenAltTBAbweichend.AsBoolean := False;
  dm1.tbKDatenAltSSperr019.AsBoolean := False;

  dm1.tbKDatenAltAADSLTyp.AsString := '';

  dm1.tbKDatenAltKvorhISDN.AsString := '';
  dm1.tbKDatenAltKvorhDSL.AsString := '';
end;

procedure TfrmMusteri.KayitGoster;
begin
  PageControl1Change(nil);
  dm1.tbMDaten.Locate('M_ID', tbKDatenMAID.AsString, []);
end;

procedure TfrmMusteri.BitBtn8Click(Sender: TObject);
begin
  frmRechnungsdrucken.ShowModal;
end;

procedure TfrmMusteri.BitBtn7Click(Sender: TObject);
  var
    memo,
    hitap,
    isim,
    tarih,
    ek,
    a1,a2,a3 :string;
begin
  isim := tbKDatenKName.AsString + ' ' + tbKDatenKVorname.AsString;
  ek := '';
  hitap := tbKDatenKAnrede.AsString;
  if hitap = 'Herr' then ek := 'r';

  tarih := datetostr(dtpNETarih.Date);
  a1 := cboNA1.Items[cboNA1.ItemIndex];
  a2 := cboNA2.Items[cboNA2.ItemIndex];
  a3 := cboNA3.Items[cboNA3.ItemIndex];

  qrNeuanschluss.qrlIsim.Caption := isim;
  qrNeuanschluss.qrlGiris.Caption := format('Sehr geehrte%s %s %s', [ek, hitap, tbKDatenKName.AsString]);

  qrNeuanschluss.qrlAuftrag.Caption := cboAuftrag.Items[cboAuftrag.ItemIndex];
  qrNeuanschluss.qrlRufnummer.Caption := cboRufnummer.Items[cboRufnummer.ItemIndex];

  if dm1.tbKDatenAlt.Locate('KID', tbKDatenKID.AsString, []) then begin

    qrNeuanschluss.qrlKAnschlussgeb.Caption := formatfloat('0.00 €', dm1.tbKDatenAltKAnschlussgeb.AsFloat * 1.16);
    qrNeuanschluss.qrlKGrungeb.Caption := formatfloat('0.00 €', dm1.tbKDatenAltKGrungeb.AsFloat * 1.16);

    if dm1.tbKDatenAltKTelVorw.AsString<>'' then begin
      qrNeuanschluss.qrlVorwahl.Caption := dm1.tbKDatenAltKTelVorw.AsString;
      qrNeuanschluss.qrmRufnummer.Lines.Clear;
      qrNeuanschluss.qrmRufnummer.Lines.Add(dm1.tbKDatenAltKTelA.AsString);
      qrNeuanschluss.qrmRufnummer.Lines.Add(dm1.tbKDatenAltKTelB.AsString);
      qrNeuanschluss.qrmRufnummer.Lines.Add(dm1.tbKDatenAltKTelC.AsString);
      qrNeuanschluss.qrmRufnummer.Lines.Add(dm1.tbKDatenAltKTelD.AsString);
      qrNeuanschluss.qrmRufnummer.Lines.Add(dm1.tbKDatenAltKTelE.AsString);
      qrNeuanschluss.qrmRufnummer.Lines.Add(dm1.tbKDatenAltKTelF.AsString);
      qrNeuanschluss.qrmRufnummer.Lines.Add(dm1.tbKDatenAltKTelG.AsString);
      qrNeuanschluss.qrmRufnummer.Lines.Add(dm1.tbKDatenAltKTelH.AsString);
      qrNeuanschluss.qrmRufnummer.Lines.Add(dm1.tbKDatenAltKTelI.AsString);
      qrNeuanschluss.qrmRufnummer.Lines.Add(dm1.tbKDatenAltKTelJ.AsString);
    end else begin
      qrNeuanschluss.qrlVorwahl.Caption := '';
      qrNeuanschluss.qrmRufnummer.Lines.Clear;
    end;
  end else
    showmessage('KID1 wird nicht gefunden');

  memo := qrNeuanschluss.qrmMetin.Lines.Text;
  qrNeuanschluss.qrmMetin.Lines.Text := format(qrNeuanschluss.qrmMetin.Lines.Text, [tarih, a1, a2, a3]);

  qrNeuanschluss.Preview;

  qrNeuanschluss.qrmMetin.Lines.Text := memo;
end;

end.
