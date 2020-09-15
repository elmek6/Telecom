unit impGesp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, Buttons, Gauges, Spin, Math, ComCtrls,
  xmldom, XMLIntf, msxmldom, XMLDoc, AxCtrls, OleCtrls, VCF1;

type
  TfrmImpGesp = class(TForm)
    Gauge1: TGauge;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    TabSheet2: TTabSheet;
    cmdOnSayfa: TBitBtn;
    seRechnunganfang: TSpinEdit;
    TabSheet3: TTabSheet;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    TabSheet4: TTabSheet;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    txtRuckseiten: TEdit;
    BitBtn13: TBitBtn;
    memDurum: TMemo;
    dtpBas: TDateTimePicker;
    dtpBit: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Memo1: TMemo;
    BitBtn4: TBitBtn;
    BitBtn14: TBitBtn;
    cboXML: TComboBox;
    procedure cmdOnSayfaClick(Sender: TObject);
    procedure BeginnDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
  published
    procedure HataYaz;
    procedure TelKaydet(tgrup:string;kod:string);
    { Public declarations }
  end;

var
  frmImpGesp: TfrmImpGesp;
  ontel,
  tel         :string;

implementation

uses dm_1, dm_2, global;

{$R *.dfm}

procedure TfrmImpGesp.HataYaz;
begin
  dm2.tbHata.Append;
  dm2.tbHataKID.AsString    := dm1.tbKDatenAltKID.Value;
  dm2.tbHataHedef.AsString  := dm2.tbRechnungZIEL.Value;
  dm2.tbHataTarih.AsString  := dm2.tbRechnungDATUM.Value;
  dm2.tbHataSaat.AsString   := dm2.tbRechnungUHRZEIT.Value;
  dm2.tbHataKaynak.AsString := ontel+tel;
  dm2.tbHataSaniye.AsInteger  := dm2.tbRechnungSEKUNDEN.AsInteger;
  dm2.tbHata.Post;
end;

procedure TfrmImpGesp.TelKaydet(tgrup:string;kod:string);
  var
    ttarife :string; {tabii oldugu tarife}
    saniye,
    ilk,
    son     :integer;
    milk,
    mson    :double;
begin
 dm2.tbArka.Append;
  ttarife := 'SEK60/1'; {bu satirda cok ugrastirdi}
  if dm1.tbKDatenAltATaktSek.Value then ttarife := 'SEK11';
  if dm1.tbKDatenAltATaktSek1.Value then ttarife := 'SEK60/1';
  if dm1.tbKDatenAltATaktMin.Value then ttarife := 'STD';
  if dm1.tbKDatenAltATaktCBC.Value then memDurum.Lines.Add('SP120 tarife bulundu');   //ttarife := 'SP120';
  if dm1.tbKDatenAltATaktSpezial.Value then memDurum.Lines.Add('PREMIUM 10 tarife bulundu');  //ttarife := 'PREMIUM 10';


  dm2.tbArkaKID.Value := dm1.tbKDatenAltKID.Value;
  if not dm1.tbTarife.Locate('tarife;grup',VarArrayOf([ttarife, tgrup]),[]) then
    memDurum.Lines.Add('tarife girilmemis!!!');
  dm2.tbArkaGrupIsim.Value := kod;
  dm2.tbArkaGrup.Value := tgrup;
  dm2.tbArkaKaynak.Value := ontel+tel;

  saniye := dm2.tbRechnungSEKUNDEN.AsInteger;
  {ilk dakika}
  if saniye >= 60 then
    ilk := 60
  else
    ilk := saniye;
  {sonraki dakikalar}
  if saniye <= 60 then
    son := 0
  else
    son := saniye - 60;
  {Ilk dakika maliyeti}
  if dm1.tbTarifekontor1.Value = 60 then {60/1 tarife icin 61 saniye ve sonrasi}
    if (dm1.tbTarifekontor2.Value = 1)and(ilk>60) then
      milk := ilk * dm1.tbTarifeUcret2.Value
    else
      milk := dm1.tbTarifeUcret1.Value
  else {SEK 1/1 gorusmesi}
    milk := ilk * dm1.tbTarifeUcret1.Value;
  {Sonraki dakikalarin maliyeti}
  if son>0 then
    case dm1.tbTarifekontor2.AsInteger of
       1: mson := son * dm1.tbTarifeUcret2.Value;
      60: mson := ceil(son/60) * dm1.tbTarifeUcret2.Value;
    end;

  dm2.tbArkaIlk.AsInteger := ilk;
  dm2.tbArkaSon.AsInteger := son;
  dm2.tbArkaMIlk.AsCurrency := milk;
  dm2.tbArkaMSon.AsCurrency := mson;
  dm2.tbArkaMTop.AsCurrency := milk+mson;
  dm2.tbArkaSaniye.AsInteger := saniye;

  dm2.tbArkaHedef.AsString := dm2.tbRechnungZIEL.Value;
  dm2.tbArkaTarih.AsString := maskele(dm2.tbRechnungDATUM.Value, '78/56/1234');
  dm2.tbArkaSaat.AsString  := maskele(dm2.tbRechnungUHRZEIT.Value, '12:34:56');
  dm2.tbArkaSure.AsString  := san2saat(saniye);

  dm2.tbRechnung.Edit;
  dm2.tbRechnung.FieldValues['OK'] := 1;
  dm2.tbRechnung.Post;

 dm2.tbArka.Post;

 {dogruysa rechnundan sil sadece hatali olanlar kalsin}
// dm2.tbRechnung.Delete;
end;

procedure TfrmImpGesp.cmdOnSayfaClick(Sender: TObject);
  var
    top     :double;
    islem   :integer;
    ttarife :string;
    rechno  :integer;
    gentop,
    anschluss,
    betreage,
    internet,
    grundgeb,
    bereitst:double;

begin
  rechno := seRechnunganfang.Value;

  dm2.tbVAA.Active := True;


  islem := 0;
  Gauge1.MaxValue := dm1.tbKDatenAlt.RecordCount;

  dm1.tbKDaten.Sort := 'KID ASC';
  dm1.tbKDaten.First;
  while not dm1.tbKDaten.Eof do begin
   {***** daha sonra eklenecek bu rutinler
    if(dm1.tbKDatenK_stornoDat.Value>=strtodate('15.07.2004'))and
      (dm1.tbKDatenK_stornoDat.Value<=strtodate('31.08.2004')) then begin

    end else dm1.tbKDatenK_stornoDat<>'' then
      exit;
    }

    dm2.tbArka.Filtered := False;
    dm2.tbArka.Filter := format('KID = %s', [QuotedStr(dm1.tbKDatenKID.Value)]);
    dm2.tbArka.Filtered := True;

    {Konusma ücretlerinin alinmasi}
    top := 0;
    dm2.tbArka.First;
    while not dm2.tbArka.Eof do begin
      top := top + dm2.tbArkaMtop.Value;
      dm2.tbArka.Next;
    end;

    {Musteri detey ve extra alinacaklar}
    dm1.tbKDatenAlt.Filtered := False;
    dm1.tbKDatenAlt.Filter := format('KID = %s', [QuotedStr(dm1.tbKDatenKID.Value)]);
    dm1.tbKDatenAlt.Filtered := True;

    internet:=0;
    bereitst:=0;
    grundgeb:=0;
    betreage:=0;
    anschluss:=0;
    dm1.tbKDatenAlt.First;
    while not dm1.tbKDatenAlt.Eof do begin
      grundgeb := grundgeb + dm1.tbKDatenAltKGrungeb.Value;
      internet := internet + dm1.tbKDatenAltAADSLBetrag.Value;
      if(dm1.tbKDatenAltWBeginn.AsDateTime>=dtpBas.Date)and
        (dm1.tbKDatenAltWBeginn.AsDateTime<=dtpBit.Date) then begin
         bereitst := bereitst + dm1.tbKDatenAltKAnschlussgeb.AsCurrency + dm1.tbKDatenAltAADSLEinr.AsCurrency;
         anschluss := anschluss + dm1.tbKDatenAltKAnschlussgeb.AsCurrency;
      end;
      dm1.tbKDatenAlt.Next;
    end;

    dm2.tbVor.Append;
    dm2.tbVAA.Filter   := format('KID = %s', [QuotedStr(dm1.tbKDatenKID.Value)]);
    dm2.tbVAA.Filtered := True;
    dm2.tbVAA.First;
    while not dm2.tbVAA.Eof do begin
        betreage := betreage + dm2.tbVAAVBetrag.Value;
      dm2.tbVAA.Next;
    end;
    if betreage>0 then begin
      betreage := betreage - anschluss;
      betreage := betreage - grundgeb;
    end;
    if betreage <0 then betreage := 0;


    ttarife := 'SEK60/1'; {bu satirda cok ugrastirdi}
    if dm1.tbKDatenAltATaktSek.Value then ttarife := 'SEK11';
    if dm1.tbKDatenAltATaktSek1.Value then ttarife := 'SEK60/1';
    if dm1.tbKDatenAltATaktMin.Value then ttarife := 'STD';
    if dm1.tbKDatenAltATaktCBC.Value then memDurum.Lines.Add('SP120 tarife bulundu');   //ttarife := 'SP120';
    if dm1.tbKDatenAltATaktSpezial.Value then memDurum.Lines.Add('PREMIUM 10 tarife bulundu');  //ttarife := 'PREMIUM 10';
    dm2.tbVorRechnungNr.Value:= rechno;
    dm2.tbVorKID.AsString      := dm1.tbKDatenKID.AsString;
    dm2.tbVorKTel.AsString     := format('%s %s', [dm1.tbKDatenAltKTelVorw.Value,
                                                   dm1.tbKDatenAltKTelA.Value]); {hala HATA 1 oooOOOooo tel no yaziyor halen bos olsa bile}
    dm2.tbVorKAnrede.AsString  := dm1.tbKDatenKAnrede.AsString;
    dm2.tbVorKFirma.AsString   := dm1.tbKDatenKFirma.AsString;
    dm2.tbVorTamAd.AsString    := format('%s %s', [dm1.tbKDatenKName.AsString, dm1.tbKDatenKVorName.AsString]);
    dm2.tbVorKName.AsString    := dm1.tbKDatenKName.AsString;
    dm2.tbVorKVorname.AsString := dm1.tbKDatenKVorname.AsString;
    dm2.tbVorKStrasse.AsString := dm1.tbKDatenKStrasse.AsString;
    dm2.tbVorKPLZ.AsString     := dm1.tbKDatenKPLZ.AsString;
    dm2.tbVorKOrt.AsString     := dm1.tbKDatenKOrt.AsString;
    dm2.tbVorKKonto.AsString   := dm1.tbKDatenKKonto.AsString;
    dm2.tbVorKBLZ.AsString     := dm1.tbKDatenKBLZ.AsString; {nicht gleich}

    dm2.tbVorBereitstellungskosten.Value := bereitst;
    dm2.tbVorMtop.Value     := top;
    dm2.tbVorGrundgebuhren.Value := grundgeb;
    dm2.tbVorInternetverbindungen.Value := internet;
    dm2.tbVorBetreage.Value := betreage;
    gentop := bereitst + grundgeb + top + internet + betreage;
    dm2.tbVorZwischensumme.Value := gentop;
    dm2.tbVorMwSt.Value := gentop * 0.16;
    dm2.tbVorRechnungsbetrag.Value := gentop * 1.16;
    dm2.tbVorKunTarif.Value := ttarife;

    dm2.tbVor.Post;
    inc(rechno);

    Gauge1.Progress := dm1.tbKDaten.RecNo;
    inc(islem);
    frmImpGesp.Caption := format('%d', [islem]);
    dm1.tbKDaten.Next;
  end;
end;

procedure TfrmImpGesp.BeginnDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  var
    m,
    i           :integer;
    sTel        :string;
    iTel        :integer;
    sonucKod    :string;
    sonucGrup   :string;
    islem       :integer;
begin

  dm2.tbRechnung.Active := True;
//  if [ssAlt, ssCtrl, ssRight] in Shift then exit;
// Tarih problemi 07.15 ve 08.31 arasi zaten

{
  opendialog1.Execute;
  if opendialog1.FileName='' then exit;
  dm2.tbRechnung.TableName := opendialog1.FileName;
  dm2.tbRechnung.Active := True;
}
  islem := 0;
  Gauge1.MaxValue := dm1.tbKDatenAlt.RecordCount;
  dm1.tbKDatenAlt.First;
  while not dm1.tbKDatenAlt.Eof do begin
    ontel:=dm1.tbKDatenAltKTelVorw.AsString;
    for m:=1 to 10 do begin
      case m of
        01:tel := dm1.tbKDatenAltKTelA.AsString;
        02:tel := dm1.tbKDatenAltKTelB.AsString;
        03:tel := dm1.tbKDatenAltKTelC.AsString;
        04:tel := dm1.tbKDatenAltKTelD.AsString;
        05:tel := dm1.tbKDatenAltKTelE.AsString;
        06:tel := dm1.tbKDatenAltKTelF.AsString;
        07:tel := dm1.tbKDatenAltKTelG.AsString;
        08:tel := dm1.tbKDatenAltKTelH.AsString;
        09:tel := dm1.tbKDatenAltKTelI.AsString;
        10:tel := dm1.tbKDatenAltKTelJ.AsString;
      end;

      if (tel <> '') {and (length(tel)<=11)} then begin
        dm2.tbRechnung.Filtered := False;
        dm2.tbRechnung.Filter := format('(ANSCHLUSS = %s)', [QuotedStr(ontel+tel)]);
        dm2.tbRechnung.Filtered := True;

        dm2.tbRechnung.First;
        while not dm2.tbRechnung.Eof do begin
          sTel := dm2.tbRechnungZIEL.Value;
          iTel := length(sTel);

          {Aranan numara 00 ile basliyorsa}
          if copy(sTel, 1, 2)='00' then begin
            sonucKod := '';
            for i:=1 to iTel do begin
              dm1.tbUlkeKod.Filtered := false;
              dm1.tbUlkeKod.Filter := 'ulkekod =' + QuotedStr(copy(sTel, 1, i));
              dm1.tbUlkeKod.Filtered := True;
              if dm1.tbUlkeKod.RecordCount = 1 then begin
                sonucKod  := dm1.tbUlkeKodulkekod.Value;
                sonucGrup := dm1.tbUlkeKodbolge.Value;
              end;
            end;
            if sonucKod <> '' then
              TelKaydet(sonucGrup, 'class world')
            else
              HataYaz;

          {Aranan numara 0 ile basliyorsa}
          end else if copy(sTel, 1, 1)='0' then


            {Aranan cep mi arastir}
            if dm1.tbMobilKod.Locate('kod', copy(stel,1,4), []) then
              TelKaydet(dm1.tbMobilKodgrup.Value, 'class mobile')
            {Aranan numara sehir iciyse}
            else if copy(sTel, 1, length(ontel)) = ontel then
              TelKaydet('Ci', 'class city')  {Sehir ici}
            else
              TelKaydet('Ge', 'class national')  {Sehir disi}

          else
            HataYaz;


          frmImpGesp.Caption := format('%d', [islem]);
          inc(islem);

          dm2.tbRechnung.Next;
        end;

      end;

    end;
    Gauge1.Progress := dm1.tbKDatenAlt.RecNo;//dm1.tbKDatenAltID.Value;
    dm1.tbKDatenAlt.Next;
  end;
end;

procedure TfrmImpGesp.BitBtn3Click(Sender: TObject);
  var
    buldu     :integer;
begin
  showmessage('Warning!!! Backup Backup Backup');
  dm2.tbFatura.Active := true;
  //  ABCDEFGHIJ             ABCDEFGH
  //  31/12/2004             12:34:45
  buldu := 0;
  gauge1.MaxValue := dm2.tbArka.RecordCount;
  dm2.tbArka.First;
  while not dm2.tbArka.Eof do begin
{
    if dm2.tbRechnung.Locate('ANSCHLUSS;ZIEL;DATUM;UHRZEIT',
      VarArrayOf([dm2.tbArkaKaynak.AsString, dm2.tbArkaHedef.AsString,
                  maskeleS(dm2.tbArkaTarih.AsString, 'GHIJDEAB'),
                  maskeleS(dm2.tbArkaSaat.AsString, 'ABDEGH')]),[]) then
                  }
    dm2.tbFatura.Filtered := false;
    dm2.tbFatura.Filter := format('(ANSCHLUSS=%s) and (ZIEL=%s) and (DATUM=%s) and (UHRZEIT=%s)',
        [
         QuotedStr(dm2.tbArkaKaynak.AsString),
         QuotedStr(dm2.tbArkaHedef.AsString),
         QuotedStr(maskeleS(dm2.tbArkaTarih.AsString, 'GHIJDEAB')),
         QuotedStr(maskeleS(dm2.tbArkaSaat.AsString, 'ABDEGH'))
        ]);
    dm2.tbFatura.Filtered := true;
    if dm2.tbFatura.RecordCount = 1 then begin
    {
      dm2.tbHata.Append;
      dm2.tbHataKID.AsString   := dm2.tbArkaKID.AsString;
      dm2.tbHataHedef.AsString := dm2.tbArkaHedef.AsString;
      dm2.tbHataKaynak.AsString:= dm2.tbArkaKaynak.AsString;
      dm2.tbHataTarih.AsString := dm2.tbArkaTarih.AsString;
      dm2.tbHataSaat.AsString  := dm2.tbArkaSaat.AsString;
      dm2.tbHataSaniye.AsInteger := dm2.tbArkaSaniye.AsInteger;
      dm2.tbHata.Post;
      }

      {
      tbRechnung hata icine konulacak
      oradan gecersiz kayit silinecek hata olusmamasi icin
      kalanlar dogrumu diye kontrol edilecek
      }
//      dm2.tbRechnung.Delete;
      dm2.tbFatura.Delete;
      inc(buldu);
    end;
    gauge1.Progress := dm2.tbArka.RecNo;
    format('%d/%d', [buldu, dm2.tbFatura.RecordCount]);
    dm2.tbArka.Next;
  end;
end;

procedure TfrmImpGesp.BitBtn5Click(Sender: TObject);
  var
    m,
    i           :integer;
    sTel        :string;
    iTel        :integer;
    sonucKod    :string;
    sonucGrup   :string;
    islem       :integer;
begin
  dm2.tbFatura.Active := True;
//  if [ssAlt, ssCtrl, ssRight] in Shift then exit;
// Tarih problemi 07.15 ve 08.31 arasi zaten

{
  opendialog1.Execute;
  if opendialog1.FileName='' then exit;
  dm2.tbRechnung.TableName := opendialog1.FileName;
  dm2.tbRechnung.Active := True;
}
  islem := 0;
  Gauge1.MaxValue := dm1.tbKDatenAlt.RecordCount;
  dm1.tbKDatenAlt.First;
  while not dm1.tbKDatenAlt.Eof do begin
    ontel:=dm1.tbKDatenAltKTelVorw.AsString;
    for m:=1 to 10 do begin
      case m of
        01:tel := dm1.tbKDatenAltKTelA.AsString;
        02:tel := dm1.tbKDatenAltKTelB.AsString;
        03:tel := dm1.tbKDatenAltKTelC.AsString;
        04:tel := dm1.tbKDatenAltKTelD.AsString;
        05:tel := dm1.tbKDatenAltKTelE.AsString;
        06:tel := dm1.tbKDatenAltKTelF.AsString;
        07:tel := dm1.tbKDatenAltKTelG.AsString;
        08:tel := dm1.tbKDatenAltKTelH.AsString;
        09:tel := dm1.tbKDatenAltKTelI.AsString;
        10:tel := dm1.tbKDatenAltKTelJ.AsString;
      end;

      if (tel <> '') {and (length(tel)<=11)} then begin
        dm2.tbFatura.Filtered := False;
        dm2.tbFatura.Filter := format('(ANSCHLUSS = %s)', [QuotedStr(ontel+tel)]);
        dm2.tbFatura.Filtered := True;

        dm2.tbFatura.First;
        while not dm2.tbFatura.Eof do begin
          sTel := dm2.tbFaturaZIEL.Value;
          iTel := length(sTel);

          {Aranan numara 00 ile basliyorsa}
          if copy(sTel, 1, 2)='00' then begin
            sonucKod := '';
            for i:=1 to iTel do begin
              dm1.tbUlkeKod.Filtered := false;
              dm1.tbUlkeKod.Filter := 'ulkekod =' + QuotedStr(copy(sTel, 1, i));
              dm1.tbUlkeKod.Filtered := True;
              if dm1.tbUlkeKod.RecordCount = 1 then begin
                sonucKod  := dm1.tbUlkeKodulkekod.Value;
                sonucGrup := dm1.tbUlkeKodbolge.Value;
              end;
            end;
            if sonucKod <> '' then
              TelKaydet(sonucGrup, 'class world')
            else
              HataYaz;

          {Aranan numara 0 ile basliyorsa}
          end else if copy(sTel, 1, 1)='0' then


            {Aranan cep mi arastir}
            if dm1.tbMobilKod.Locate('kod', copy(stel,1,4), []) then
              TelKaydet(dm1.tbMobilKodgrup.Value, 'class mobile')
            {Aranan numara sehir iciyse}
            else if copy(sTel, 1, length(ontel)) = ontel then
              TelKaydet('Ci', 'class city')  {Sehir ici}
            else
              TelKaydet('Ge', 'class national')  {Sehir disi}

          else
            HataYaz;


          frmImpGesp.Caption := format('%d', [islem]);
          inc(islem);

          dm2.tbFatura.Next;
        end;

      end;

    end;
    Gauge1.Progress := dm1.tbKDatenAlt.RecNo;//dm1.tbKDatenAltID.Value;
    dm1.tbKDatenAlt.Next;
  end;
end;

{
Önce vorseitenin basilmis olmasi gerekiyor
}
procedure TfrmImpGesp.BitBtn6Click(Sender: TObject);
  var
    islem,

    top,
    ProvUmsatz2,
    DSLZ,
    Pre,
    AUB,
    NeATel,
    NeADSL,
    DSLZ_c,
    NeATEL_c,
    PRE_c,
    AUB_c,
    AirProv :double;

    GesUmsatz,
    MontlGeb,
    ProvUmsatz,
    Gesamt     :double;

    storno      :boolean;

begin
  dm1.tbMDaten.Active   := True;
  dm2.tbMArka.Active    := True;
  dm2.tbMArkaAlt.Active := True;

  dm1.tbMDaten.First;
  while not dm1.tbMDaten.Eof do begin
    dm1.tbKDaten.Filter := 'MAID = ' + QuotedStr(dm1.tbMDatenM_ID.AsString);
    dm1.tbKDaten.Filtered := True;
    dm1.tbKDaten.First;
    while not dm1.tbKDaten.Eof do begin
      if dm1.tbKDatenKID.AsString='2500551' then
        beep;
      if dm2.tbVor.Locate('KID', dm1.tbKDatenKID.AsString, []) then begin
        ProvUmsatz2 := 0;
        DSLZ := 0;
        Pre := 0;
        AUB := 0;
        NeATel := 0;
        DSLZ_c := 0;
        NeATEL_c := 0;
        PRE_c := 0;
        AUB_c := 0;
        NeADSL := 0;
        AirProv := 0;
        storno := False;
        dm1.tbKDatenAlt.Filter := 'KID = ' + QuotedStr(dm2.tbVorKID.AsString);
        dm1.tbKDatenAlt.Filtered := True;
        dm1.tbKDatenAlt.First;
        while not dm1.tbKDatenAlt.Eof do begin
          {her ay alinanlar}
          if dm1.tbKDatenAltIDSL.AsBoolean then
            if dm1.tbKDatenAltAADSLBetrag.AsCurrency>19.82{**euro} then
              AirProv := AirProv + dm1.tbKDatenAltAADSLBetrag.AsCurrency * dm1.tbMDatenMProvi.AsCurrency / 100
            else
              ProvUmsatz2 := ProvUmsatz2 + dm1.tbKDatenAltAADSLBetrag.AsCurrency; {ProvUmsatz ara toplam}
          if dm1.tbKDatenAltIISDN.AsBoolean or dm1.tbKDatenAltIAnalog.AsBoolean then
            if dm2.tbVorMTop.AsCurrency>0 {euro} then begin
              AirProv := AirProv + dm2.tbVorMTop.AsCurrency * dm1.tbMDatenMProvi.AsCurrency / 100;
            end;
          {ilk acilista alinacaklar}
          if(dm1.tbKDatenAltWBeginn.AsDateTime>=strtodate(sSecTarihBas)) and
            (dm1.tbKDatenAltWBeginn.AsDateTime<=strtodate(sSecTarihSon)) then begin
            {Neueanschluss}
            if dm1.tbKDatenAltTNeuA.AsBoolean then begin {593 Normal kural: 601 ile ayni anda olamaz}
              if dm1.tbKDatenAltIAnalog.AsBoolean then begin {594 Normal kural: 596 ile ayni anda olamaz}
                NeATel_c := NeATel_c + 1;
                NeATel := NeATel + dm1.tbMDatenNEA_TEL.AsCurrency;
              end;
              if dm1.tbKDatenAltIISDN.AsBoolean then begin {596 Normal kural: 594 ile ayni anda olamaz}
                NeATel_c := NeATel_c + 1;
                NeATel := NeATel + dm1.tbMDatenNEA_TEL.AsCurrency;
              end;
              if dm1.tbKDatenAltIDSL.AsBoolean then
                NeADSL := NeADSL + dm1.tbKDatenAltAADSLEinr.AsCurrency * dm1.tbMDatenNEADSL.AsCurrency / 100
            end;
            {Anschlussübernahme}
            if dm1.tbKDatenAltTAnU.AsBoolean then begin {601 Normal kural: 593 ile ayni anda olamaz}
              if dm1.tbKDatenAltIAnalog.AsBoolean then begin
                AUB_c := AUB_c + 1;
                AUB := AUB + dm1.tbMDatenAUB.AsCurrency;
              end;
              if dm1.tbKDatenAltIISDN.AsBoolean then begin
                AUB_c := AUB_c + 1;
                AUB := AUB + dm1.tbMDatenAUB.AsCurrency;
              end;
            end;
            {Preselect}
            if dm1.tbKDatenAltTPS.AsBoolean then begin
              Pre_c := Pre_c + 1;
              Pre := Pre + dm1.tbMDatenPRE.AsCurrency;
            end;
            {DSL}
            if dm1.tbKDatenAltAADSLEinr.AsCurrency > 0 then begin
              DSLZ_c := DSLZ_c + 1;
              DSLZ := DSLZ + dm1.tbKDatenAltAADSLEinr.AsCurrency * dm1.tbMDatenADSL_P.AsCurrency / 100;
            end;
          end;
          {Stornodatum}
          if(dm1.tbKDatenK_stornoDat.AsDateTime>=strtodate(sSecTarihBas)) and
            (dm1.tbKDatenK_stornoDat.AsDateTime<=strtodate(sSecTarihSon))then
          begin
            if (strtodate(sSecTarihBas)-dm1.tbKDatenK_stornoDat.AsDateTime)<=180 then begin
              memo1.Lines.Add(format('6 ay icindeki storno: %s', [dm2.tbVorKID.AsString]));
              storno := True;
            end;
          end;
          dm1.tbKDatenAlt.Next;
        end;
        {eger silinmis bir kayitsa ve storno=yeni ise ve gorusme
        ucreti 3€ buyukse kayit yapilacak}
        if (dm1.tbKDatenK_stornoDat.AsString='')and(dm2.tbVorZwischensumme.AsCurrency>=3) then begin
          dm2.tbMArka.Append;
            dm2.tbMArkaKID.AsString   := dm2.tbVorKID.AsString;
            dm2.tbMArkaM_ID.AsString  := dm1.tbMDatenM_ID.AsString;
            dm2.tbMArkaKName.AsString := dm2.tbVorKName.AsString;
            dm2.tbMArkaKVorname.AsString    := dm2.tbVorKVorname.AsString;
            dm2.tbMArkaGesUmsatz.AsCurrency := dm2.tbVorZwischensumme.AsCurrency;
            dm2.tbMArkaMontlGeb.AsCurrency  := dm2.tbVorGrundgebuhren.AsCurrency;
            dm2.tbMArkaProvUmsatz.AsCurrency:= dm2.tbVorZwischensumme.AsCurrency - ProvUmsatz2 - dm2.tbMArkaMontlGeb.AsCurrency;
            dm2.tbMArkaNEA_TEL.AsCurrency := NeATel;
            dm2.tbMArkaNEADSL.AsCurrency  := NeADSL;
            dm2.tbMArkaAUB.AsCurrency     := AUB;
            dm2.tbMArkaPRE.AsCurrency     := Pre;
            dm2.tbMArkaDSL_Z.AsCurrency   := DSLZ;
            dm2.tbMArkaDSL_Zc.AsCurrency  := DSLZ_c;
            dm2.tbMArkaNeA_Telc.AsCurrency:= NeATEL_c;
            dm2.tbMArkaPREc.AsCurrency    := PRE_c;
            dm2.tbMArkaAUBc.AsCurrency    := AUB_c;
            dm2.tbMArkaAirprov.AsCurrency := AirProv;
            dm2.tbMArkaGesamt.AsCurrency  := DSLZ + Pre + AUB + NeATel + NeADSL + AirProv;
            dm2.tbMArkaMGrup.AsInteger    := dm1.tbMDatenMGrup.AsInteger;
            dm2.tbMArkaMPos.AsString      := dm1.tbMDatenMPos.AsString;
            if storno then
              dm2.tbMArkaStornodatum.AsDateTime:=dm1.tbKDatenK_storno.AsDateTime; //false bilgisi gonderdigi icin problem yapiyor
            dm2.tbMArkaStorno.AsBoolean   := storno;
          dm2.tbMArka.Post;
        end;
      end;
      dm1.tbKDaten.Next;
    end;
    dm1.tbMDaten.Next;
  end;
end;

procedure TfrmImpGesp.BitBtn7Click(Sender: TObject);
  var
    i     :integer;
    s     :string;

    GesUmsatz,
    MontlGeb,
    ProvUmsatz,
    AirProv,
    NeADSL,
    DSLZ,
    NeATel,
    Pre,
    AUB,
    DSLZ_c,
    NeATEL_c,
    PRE_c,
    AUB_c,
    Gesamt    :double;
   { procedure ictoplam(maid, baba:integer);
      begin
        if dm2.tbMArkaMGrup.AsInteger>0 then
        dm2.tbMArka.FindFirst
          ictoplam(dm2.tbMArkaMGrup.AsInteger, dm2.tbMArkaMAID.AsInteger);
        while dm2.tbMArka do
    end;
    }
begin
  dm1.tbMDaten.Active   := True;
  dm2.tbMArka.Active    := True;
  dm2.tbMArkaAlt.Active := True;
  dm1.tbMDatenAlt.Active:= True;
{
soyle olabilir zaten ana tablo bulundu. Alt tabloyu olustururken
babasi olan tablodan rakam degerlerini almak gerekli. Aradaki farki
isleyebilmek icin. Arka icerisinde arama yapilip ArkaAlt yazilirken
MDaten kullanilabilir tabii ne kadar kullanilabilir bakmak lazim
MDaten once babadan alinmasi gereken bilgiler bir degiskene
saklanabilir.
}
  for i:=4 downto 1 do begin
    case i of
      0:s:='CT'; {HENÜZ YOK VE BAGLANTI 0 ZATEN KOK DUGUM}
      1:s:='DM';
      2:s:='RM';
      3:s:='SM';
      4:s:='SMA';
    end;
    dm1.tbMDaten.Filter := format('MPos = %s', [QuotedStr(s)]);
    dm1.tbMDaten.Filtered := True;

    GesUmsatz := 0;
    MontlGeb  := 0;
    ProvUmsatz:= 0;
    AirProv   := 0;
    NeADSL    := 0;
    DSLZ      := 0;
    NeATel    := 0;
    Pre       := 0;
    AUB       := 0;
    DSLZ_c    := 0;
    NeATEL_c  := 0;
    PRE_c     := 0;
    AUB_c     := 0;
    Gesamt    := 0;
    dm1.tbMDaten.First;
    while not dm1.tbMDaten.Eof do begin
      {gruplanmis bir alandan alma}
      dm2.tbMArkaAlt.Filter := 'MGrup = ' + QuotedStr(dm1.tbMDatenM_ID.AsString);
      dm2.tbMArkaAlt.Filtered := True;
      dm2.tbMArkaAlt.First;
      while not dm2.tbMArkaAlt.Eof do begin
        GesUmsatz  := GesUmsatz + dm2.tbMArkaAltGesUmsatz.AsCurrency;
        MontlGeb   := MontlGeb + dm2.tbMArkaAltMontlGeb.AsCurrency;
        ProvUmsatz := ProvUmsatz + dm2.tbMArkaAltProvUmsatz.AsCurrency;
        AirProv    := AirProv + dm2.tbMArkaAltAirprov.AsCurrency;
        NeADSL     := NeADSL + dm2.tbMArkaAltNEADSL.AsCurrency;
        DSLZ       := dm1.tbMDatenDSL_Z.AsCurrency - dm2.tbMArkaAltDSL_Z.AsCurrency * dm2.tbMArkaAltDSL_Zc.AsCurrency;
        DSLZ_c     := dm2.tbMArkaAltDSL_Zc.AsCurrency;
        NeATel     := dm1.tbMDatenNEA_TEL.AsCurrency - dm2.tbMArkaAltNEA_TEL.AsCurrency * dm2.tbMArkaAltNEA_TELc.AsCurrency;
        NeATel_c   := dm2.tbMArkaAltNeA_Telc.AsCurrency;
        Pre        := dm1.tbMDatenPRE.AsCurrency - dm2.tbMArkaAltPRE.AsCurrency * dm2.tbMArkaAltPREc.AsCurrency;
        Pre_c      := dm2.tbMArkaAltPREc.AsCurrency;
        AUB        := dm1.tbMDatenAUB.AsCurrency - dm2.tbMArkaAltAUB.AsCurrency * dm2.tbMArkaAltAUB.AsCurrency;
        AUB_c      := dm2.tbMArkaAltAUBc.AsCurrency;
        {rakamlarin farkini kendi uzeriden hesaplayarak alacak}
        dm2.tbMArkaAlt.Next;
      end;
      {henüz gruplanmamis bir alani gruplama}
      dm2.tbMArka.Filter := 'MGrup = ' + QuotedStr(dm1.tbMDatenM_ID.AsString);
      dm2.tbMArka.Filtered := True;
      dm2.tbMArka.First;
      while not (dm2.tbMArka.Eof) {and (dm2.tbMArkaAlt.RecordCount>0)} do begin
        {yapilan 4 anschluss da kayit edilecek}
        GesUmsatz  := GesUmsatz + dm2.tbMArkaGesUmsatz.AsCurrency;
        MontlGeb   := MontlGeb + dm2.tbMArkaMontlGeb.AsCurrency;
        ProvUmsatz := ProvUmsatz + dm2.tbMArkaProvUmsatz.AsCurrency;
        AirProv    := AirProv + dm2.tbMArkaAirprov.AsCurrency;
        NeADSL     := NeADSL + dm2.tbMArkaNEADSL.AsCurrency;
        DSLZ       := DSLZ + dm2.tbMArkaDSL_Z.AsCurrency;
        NeATel     := NeATel + dm2.tbMArkaNEA_TEL.AsCurrency;
        Pre        := Pre + dm2.tbMArkaPRE.AsCurrency;
        AUB        := AUB + dm2.tbMArkaAUB.AsCurrency;

        {oguldan alinacak veriler}
        dm1.tbMDatenAlt.Locate('M_ID', dm2.tbMArkaM_ID.AsString,[]);
        Gesamt :=          AirProv * (dm1.tbMDatenMProvi.AsCurrency-dm1.tbMDatenAltMProvi.AsCurrency) / 100;
        Gesamt := Gesamt + NeADSL  * (dm1.tbMDatenNEADSL.AsCurrency-dm1.tbMDatenAltNEADSL.AsCurrency) / 100;
        Gesamt := Gesamt + DSLZ  +(dm1.tbMDatenDSL_Z.AsCurrency-dm1.tbMDatenAltDSL_Z.AsCurrency);
        Gesamt := Gesamt + NeATel+(dm1.tbMDatenNEA_TEL.AsCurrency-dm1.tbMDatenAltNEA_TEL.AsCurrency);
        Gesamt := Gesamt + Pre   +(dm1.tbMDatenPRE.AsCurrency-dm1.tbMDatenAltPRE.AsCurrency);
        Gesamt := Gesamt + AUB   +(dm1.tbMDatenPRE.AsCurrency-dm1.tbMDatenAUB.AsCurrency);
        dm2.tbMArka.Next;
      end;
      if dm2.tbMArka.RecordCount > 0 then begin
        dm2.tbMArkaAlt.Append;
          dm2.tbMArkaAltMName.AsString := dm1.tbMDatenAltMName.AsString;
          dm2.tbMArkaAltMVorname.AsString := dm1.tbMDatenAltMVorname.AsString;
          dm2.tbMArkaAltMPos.AsString  := dm1.tbMDatenAltMPos.AsString;
          dm2.tbMArkaAltM_ID.AsInteger := dm1.tbMDatenAltM_ID.AsInteger;
          dm2.tbMArkaAltMGrup.AsInteger:= dm1.tbMDatenAltMGrup.AsInteger;
          dm2.tbMArkaAltGesUmsatz.AsCurrency := GesUmsatz;
          dm2.tbMArkaAltMontlGeb.AsCurrency  := MontlGeb;
          dm2.tbMArkaAltProvUmsatz.AsCurrency:= ProvUmsatz;
          dm2.tbMArkaAltAirprov.AsCurrency   := AirProv;
          dm2.tbMArkaAltNEADSL.AsCurrency    := NeADSL;
          dm2.tbMArkaAltDSL_Z.AsCurrency     := DSLZ;
          dm2.tbMArkaAltNEA_TEL.AsCurrency   := NeATel;
          dm2.tbMArkaAltPRE.AsCurrency       := Pre;
          dm2.tbMArkaAltAUB.AsCurrency       := AUB;
          dm2.tbMArkaAltGesamt.AsCurrency    := Gesamt;
        dm2.tbMArkaAlt.Post;
      end;
      dm1.tbMDaten.Next;
    end;
  end;

end;

procedure TfrmImpGesp.BitBtn9Click(Sender: TObject);
  var
    i     :integer;
    s     :string;

    GesUmsatz,
    MontlGeb,
    ProvUmsatz,
    AirProv,
    NeADSL,
    DSLZ,
    NeATel,
    Pre,
    AUB,
    Gesamt    :double;
    DSLZ_c,
    NeATEL_c,
    PRE_c,
    AUB_c     :integer;
   { procedure ictoplam(maid, baba:integer);
      begin
        if dm2.tbMArkaMGrup.AsInteger>0 then
        dm2.tbMArka.FindFirst
          ictoplam(dm2.tbMArkaMGrup.AsInteger, dm2.tbMArkaMAID.AsInteger);
        while dm2.tbMArka do
    end;
    }
begin
  dm1.tbMDaten.Active   := True;
  dm2.tbMArka.Active    := True;
  dm2.tbMArkaAlt.Active := True;
  dm1.tbMDatenAlt.Active:= True;
{
soyle olabilir zaten ana tablo bulundu. Alt tabloyu olustururken
babasi olan tablodan rakam degerlerini almak gerekli. Aradaki farki
isleyebilmek icin. Arka icerisinde arama yapilip ArkaAlt yazilirken
MDaten kullanilabilir tabii ne kadar kullanilabilir bakmak lazim
MDaten once babadan alinmasi gereken bilgiler bir degiskene
saklanabilir.
}
  for i:=4 downto 1 do begin
    case i of
      0:s:='CT'; {HENÜZ YOK VE BAGLANTI 0 ZATEN KOK DUGUM}
      1:s:='DM';
      2:s:='RM';
      3:s:='SM';
      4:s:='SMA';
    end;

    dm1.tbMDaten.Filter := format('MPos = %s', [QuotedStr(s)]);
    dm1.tbMDaten.Filtered := True;
    dm1.tbMDaten.First;
    while not dm1.tbMDaten.Eof do begin
      GesUmsatz := 0;
      MontlGeb  := 0;
      ProvUmsatz:= 0;
      AirProv   := 0;
      NeADSL    := 0;
      DSLZ      := 0;
      NeATel    := 0;
      Pre       := 0;
      AUB       := 0;
      DSLZ_c    := 0;
      NeATEL_c  := 0;
      PRE_c     := 0;
      AUB_c     := 0;
      Gesamt    := 0;

      dm2.tbMArka.Filter := 'M_ID = ' + QuotedStr(dm1.tbMDatenM_ID.AsString);
      dm2.tbMArka.Filtered := True;
      dm2.tbMArka.First;
      while not (dm2.tbMArka.Eof) do begin
        GesUmsatz  := GesUmsatz + dm2.tbMArkaGesUmsatz.AsCurrency;
        MontlGeb   := MontlGeb + dm2.tbMArkaMontlGeb.AsCurrency;
        ProvUmsatz := ProvUmsatz + dm2.tbMArkaProvUmsatz.AsCurrency;
        AirProv    := AirProv + dm2.tbMArkaAirprov.AsCurrency;
        NeADSL     := NeADSL + dm2.tbMArkaNEADSL.AsCurrency;
        DSLZ       := DSLZ + dm2.tbMArkaDSL_Z.AsCurrency;
        NeATel     := NeATel + dm2.tbMArkaNEA_TEL.AsCurrency;
        Pre        := Pre + dm2.tbMArkaPRE.AsCurrency;
        AUB        := AUB + dm2.tbMArkaAUB.AsCurrency;
        if dm2.tbMArkaDSL_Z.AsCurrency>0 then inc(DSLZ_c);
        if dm2.tbMArkaNEA_TEL.AsCurrency>0 then inc(NeATEL_c);
        if dm2.tbMArkaPRE.AsCurrency>0 then inc(Pre_c);
        if dm2.tbMArkaAUB.AsCurrency>0 then inc(AUB_c);

        Gesamt := Gesamt + AirProv + NeADSL + DSLZ + NeATel + Pre + AUB;
        dm2.tbMArka.Next;
      end;
      if dm2.tbMArka.RecordCount > 0 then begin
        dm2.tbMArkaAlt.Append;
          dm2.tbMArkaAltMName.AsString := dm1.tbMDatenMName.AsString;
          dm2.tbMArkaAltMVorname.AsString := dm1.tbMDatenMVorname.AsString;
          dm2.tbMArkaAltMPos.AsString  := dm1.tbMDatenMPos.AsString;
          dm2.tbMArkaAltM_ID.AsInteger := dm1.tbMDatenM_ID.AsInteger;
          dm2.tbMArkaAltMGrup.AsInteger:= dm1.tbMDatenMGrup.AsInteger;
          dm2.tbMArkaAltGesUmsatz.AsCurrency := GesUmsatz;
          dm2.tbMArkaAltMontlGeb.AsCurrency  := MontlGeb;
          dm2.tbMArkaAltProvUmsatz.AsCurrency:= ProvUmsatz;
          dm2.tbMArkaAltAirprov.AsCurrency   := AirProv;
          dm2.tbMArkaAltNEADSL.AsCurrency    := NeADSL;
          dm2.tbMArkaAltDSL_Z.AsCurrency     := DSLZ;
          dm2.tbMArkaAltNEA_TEL.AsCurrency   := NeATel;
          dm2.tbMArkaAltPRE.AsCurrency       := Pre;
          dm2.tbMArkaAltAUB.AsCurrency       := AUB;
          dm2.tbMArkaAltDSL_Zc.AsCurrency    := DSLZ_c;
          dm2.tbMArkaAltNeA_Telc.AsCurrency  := NeATel_c;
          dm2.tbMArkaAltPREc.AsCurrency      := Pre_c;
          dm2.tbMArkaAltAUBc.AsCurrency      := AUB_c;
          dm2.tbMArkaAltGesamt.AsCurrency    := Gesamt;
        dm2.tbMArkaAlt.Post;
      end;
      dm1.tbMDaten.Next;
    end;
  end;
end;

procedure TfrmImpGesp.BitBtn10Click(Sender: TObject);
  var
    i     :integer;
    s     :string;

    GesUmsatz,
    MontlGeb,
    ProvUmsatz,
    AirProv,
    NeADSL,
    DSLZ,
    NeATel,
    Pre,
    AUB,
    Gesamt    :double;
    DSLZ_c,
    NeATEL_c,
    PRE_c,
    AUB_c     :integer;

    Airprov_f,
    NeADSL_f,
    DSLZ_f,
    NeATel_f,
    Pre_f,
    AUB_f     :double; {farklar DM-RM-SM-SMA % ve #}
begin
  dm1.tbMDaten.Active   := True;
  dm1.tbMDatenAlt.Active:= True;
  dm2.tbMArkaAltS.Active    := True;
  dm2.tbMArkaAlt.Active := True;

  for i:=3 downto 1 do begin
    case i of
      0:s:='CT'; {HENÜZ YOK VE BAGLANTI 0 ZATEN KOK DUGUM}
      1:s:='DM';
      2:s:='RM';
      3:s:='SM';
    end;



{    dm1.tbMDaten.Filter := format('MPos = %s', [QuotedStr(s)]);
    dm1.tbMDaten.Filtered := True;
    dm1.tbMDaten.First;}
    dm2.tbMArkaAltS.Filter := 'MPos = ' + QuotedStr(s);
    dm2.tbMArkaAltS.Filtered := True;
    dm2.tbMArkaAltS.First;
    while not dm2.tbMArkaAltS.Eof do begin
      GesUmsatz := 0;
      MontlGeb  := 0;
      ProvUmsatz:= 0;
      AirProv   := 0;
      NeADSL    := 0;
      DSLZ      := 0;
      NeATel    := 0;
      Pre       := 0;
      AUB       := 0;
      DSLZ_c    := 0;
      NeATEL_c  := 0;
      PRE_c     := 0;
      AUB_c     := 0;
      Gesamt    := 0;

      dm2.tbMArkaAlt.Filter := 'MGrup = ' + QuotedStr(dm2.tbMArkaAltSM_ID.AsString);
      dm2.tbMArkaAlt.Filtered := True;
      dm2.tbMArkaAlt.First;
      while not dm2.tbMArkaAlt.Eof do begin
        dm1.tbMDaten.Locate('M_ID' , dm2.tbMArkaAltSM_ID.AsInteger, []); {AltS = MDaten}
        dm1.tbMDatenAlt.Locate('M_ID', dm2.tbMArkaAltM_ID.AsInteger, []); {Alt = MDatenAlt}
        Airprov_f :=(dm1.tbMDatenMProvi.AsCurrency - dm1.tbMDatenAltMProvi.AsCurrency)/100;
        NeADSL_f  :=(dm1.tbMDatenNEADSL.AsCurrency - dm1.tbMDatenAltNEADSL.AsCurrency)/100;
        DSLZ_f    := dm1.tbMDatenDSL_Z.AsCurrency  - dm1.tbMDatenAltDSL_Z.AsCurrency;
        NeATel_f  := dm1.tbMDatenNEA_TEL.AsCurrency- dm1.tbMDatenAltNEA_TEL.AsCurrency;
        Pre_f     := dm1.tbMDatenPRE.AsCurrency    - dm1.tbMDatenAltPRE.AsCurrency;
        AUB_f     := dm1.tbMDatenAUB.AsCurrency    - dm1.tbMDatenAltAUB.AsCurrency;


        GesUmsatz  := GesUmsatz + dm2.tbMArkaAltSGesUmsatz.AsCurrency + dm2.tbMArkaAltGesUmsatz.AsCurrency;
        MontlGeb   := MontlGeb + dm2.tbMArkaAltSMontlGeb.AsCurrency + dm2.tbMArkaAltMontlGeb.AsCurrency;
        ProvUmsatz := ProvUmsatz + dm2.tbMArkaAltSProvUmsatz.AsCurrency + dm2.tbMArkaAltProvUmsatz.AsCurrency;
        AirProv    := AirProv + dm2.tbMArkaAltSAirprov.AsCurrency + dm2.tbMArkaAltAirprov.AsCurrency * Airprov_f;
        NeADSL     := NeADSL + dm2.tbMArkaAltSNEADSL.AsCurrency + dm2.tbMArkaAltNEADSL.AsCurrency * NeADSL_f;
        DSLZ       := DSLZ + dm2.tbMArkaAltSDSL_Z.AsCurrency + dm2.tbMArkaAltDSL_Zc.AsCurrency * DSLZ_f;
        NeATel     := NeATel + dm2.tbMArkaAltSNEA_TEL.AsCurrency + dm2.tbMArkaAltNeA_Telc.AsCurrency * NeATel_f;
        Pre        := Pre + dm2.tbMArkaAltSPRE.AsCurrency + dm2.tbMArkaAltPREc.AsCurrency * Pre_f;
        AUB        := AUB + dm2.tbMArkaAltSAUB.AsCurrency + dm2.tbMArkaAltAUBc.AsCurrency * AUB_f;

        inc(DSLZ_c, dm2.tbMArkaAltSDSL_Zc.AsInteger+dm2.tbMArkaAltDSL_Zc.AsInteger);
        inc(NeATEL_c, dm2.tbMArkaAltSNEA_TEL.AsInteger + dm2.tbMArkaAltNeA_Telc.AsInteger);
        inc(Pre_c, dm2.tbMArkaAltSPREc.AsInteger + dm2.tbMArkaAltPREc.AsInteger);
        inc(AUB_c, dm2.tbMArkaAltSAUBc.AsInteger + dm2.tbMArkaAltAUBc.AsInteger);

        Gesamt := Gesamt + AirProv + NeADSL + DSLZ + NeATel + Pre + AUB;
//        showmessagefmt('%d',[dm2.tbMArkaAltS.RecordCount]);
        dm2.tbMArkaAlt.Next;
      end;
      if Gesamt>0 then begin
        dm2.tbMArkaAltS.Edit; {AltS = MDaten}
          dm2.tbMArkaAltSMName.AsString := dm1.tbMDatenMName.AsString;
          dm2.tbMArkaAltSMVorname.AsString := dm1.tbMDatenMVorname.AsString;
          dm2.tbMArkaAltSMPos.AsString  := dm1.tbMDatenMPos.AsString;
          dm2.tbMArkaAltSM_ID.AsInteger := dm1.tbMDatenM_ID.AsInteger;
          dm2.tbMArkaAltSMGrup.AsInteger:= dm1.tbMDatenMGrup.AsInteger;
          dm2.tbMArkaAltSGesUmsatz.AsCurrency := GesUmsatz;
          dm2.tbMArkaAltSMontlGeb.AsCurrency  := MontlGeb;
          dm2.tbMArkaAltSProvUmsatz.AsCurrency:= ProvUmsatz;
          dm2.tbMArkaAltSAirprov.AsCurrency   := AirProv;
          dm2.tbMArkaAltSNEADSL.AsCurrency    := NeADSL;
          dm2.tbMArkaAltSDSL_Z.AsCurrency     := DSLZ;
          dm2.tbMArkaAltSNEA_TEL.AsCurrency   := NeATel;
          dm2.tbMArkaAltSPRE.AsCurrency       := Pre;
          dm2.tbMArkaAltSAUB.AsCurrency       := AUB;
          dm2.tbMArkaAltSDSL_Zc.AsCurrency    := DSLZ_c;
          dm2.tbMArkaAltSNeA_Telc.AsCurrency  := NeATel_c;
          dm2.tbMArkaAltSPREc.AsCurrency      := Pre_c;
          dm2.tbMArkaAltSAUBc.AsCurrency      := AUB_c;
          dm2.tbMArkaAltSGesamt.AsCurrency    := Gesamt;
        dm2.tbMArkaAltS.Post;
      end;
      dm2.tbMArkaAltS.Next;
    end;
  end;
end;

procedure TfrmImpGesp.BitBtn11Click(Sender: TObject);
  var
    say,
    ic,
    i       :integer;
    anrede,
    name,
    vorname,
    strasse,
    plz,
    ort,
    tarif,
    vorwahl,
    ruftnummer,
    kopfnummer,
    beginnblock,
    endeblock,
    s,
    no,
    id      :string;
  procedure altYaz;
  begin
    {normal numaralar (block degil)}
    memo1.Lines.Add('<kunde>');
    memo1.Lines.Add('    <id>' +id+ '</id>');
    memo1.Lines.Add('    <anrede>' +anrede+ '</anrede>');
    memo1.Lines.Add('    <vorname>' +vorname+ '</vorname>');
    memo1.Lines.Add('    <name>' +name+ '</name>');
    memo1.Lines.Add('    <strasse>' +strasse+ '</strasse>');
    memo1.Lines.Add('    <plz>' +plz+ '</plz>');
    memo1.Lines.Add('    <ort>' +ort+ '</ort>');
    memo1.Lines.Add('    <tarif>' +tarif+ '</tarif>');
    memo1.Lines.Add('    <vorwahl1>' +vorwahl+ '</vorwahl1>');
    memo1.Lines.Add('    <rufnummer1>' +ruftnummer+ '</rufnummer1>');
    memo1.Lines.Add('    <kopfnummer>' +kopfnummer+ '</kopfnummer>');
    memo1.Lines.Add('    <beginnblock>' +beginnblock+ '</beginnblock>');
    memo1.Lines.Add('    <endeblock>' +endeblock+ '</endeblock>');
    memo1.Lines.Add('    <befehl>insert</befehl>');
    memo1.Lines.Add('</kunde>');
  end;
begin
  dm2.tbXML.Active := True;
  dm1.tbKDaten.Active := True;

  memo1.Lines.Add('<?xml version="1.0" encoding="ISO-8859-1" ?>');
  memo1.Lines.Add('<reseller_contracts>');
  memo1.Lines.Add('<reseller_id>00285162</reseller_id>');

  i := 0;
  dm2.tbXML.First;
  while not dm2.tbXML.Eof do begin
    dm1.tbKDaten.Locate('KID', dm2.tbXMLKID.AsString, []);
    if dm1.tbKDatenK_stornoDat.AsString='' then begin
      ruftnummer := ''; {dolu basiyo yoxa}
      if dm2.tbXMLKTelA.AsString<>'' then ruftnummer := dm2.tbXMLKTelA.AsString;
      if dm2.tbXMLKTelB.AsString<>'' then ruftnummer := ruftnummer + ',' + dm2.tbXMLKTelB.AsString;
      if dm2.tbXMLKTelC.AsString<>'' then ruftnummer := ruftnummer + ',' + dm2.tbXMLKTelC.AsString;
      if dm2.tbXMLKTelD.AsString<>'' then ruftnummer := ruftnummer + ',' + dm2.tbXMLKTelD.AsString;
      if dm2.tbXMLKTelE.AsString<>'' then ruftnummer := ruftnummer + ',' + dm2.tbXMLKTelE.AsString;
      if dm2.tbXMLKTelF.AsString<>'' then ruftnummer := ruftnummer + ',' + dm2.tbXMLKTelF.AsString;
      if dm2.tbXMLKTelG.AsString<>'' then ruftnummer := ruftnummer + ',' + dm2.tbXMLKTelG.AsString;
      if dm2.tbXMLKTelH.AsString<>'' then ruftnummer := ruftnummer + ',' + dm2.tbXMLKTelH.AsString;
      if dm2.tbXMLKTelI.AsString<>'' then ruftnummer := ruftnummer + ',' + dm2.tbXMLKTelI.AsString;
      if dm2.tbXMLKTelJ.AsString<>'' then ruftnummer := ruftnummer + ',' + dm2.tbXMLKTelJ.AsString;

      inc(i);
      no := inttostr(i);
      s := copy('00000000', 1, 8-length(no));
      id := '00285162_' + s + no;

      anrede := dm1.tbKDatenKAnrede.AsString;
      name   := dm1.tbKDatenKName.AsString;
      vorname:= dm1.tbKDatenKVorname.AsString;
      strasse:= dm1.tbKDatenKStrasse.AsString;
      plz    := dm1.tbKDatenKPLZ.AsString;
      ort    := dm1.tbKDatenKOrt.AsString;
      tarif  := 'SL P L';
      vorwahl:= dm2.tbXMLKTelVorw.AsString;
      kopfnummer := dm2.tbXMLKTelBlock1.AsString;
      beginnblock:= dm2.tbXMLKTelBlock1V.AsString;
      endeblock  := dm2.tbXMLKTelBlock1N.AsString;

      altyaz;

{
      memo1.Lines.Add('    <id>' +id+ '</id>');
      memo1.Lines.Add('    <anrede>' +anrede+ '</anrede>');
      memo1.Lines.Add('    <vorname>' +vorname+ '</vorname>');
      memo1.Lines.Add('    <name>' +name+ '</name>');
      memo1.Lines.Add('    <strasse>' +strasse+ '</strasse>');
      memo1.Lines.Add('    <plz>' +plz+ '</plz>');
      memo1.Lines.Add('    <ort>' +ort+ '</ort>');
      memo1.Lines.Add('    <tarif>' +tarif+ '</tarif>');
      memo1.Lines.Add('    <vorwahl2>' +vorwahl+ '</vorwahl2>');
      memo1.Lines.Add('    <kopfnummer>' +kopfnummer+ '</kopfnummer>');
      memo1.Lines.Add('    <beginnblock>' +beginnblock+ '</beginnblock>');
      memo1.Lines.Add('    <endeblock>' +endblock+ '</endeblock>');
      memo1.Lines.Add('    <befehl>insert</befehl>');
}
      {ara sonlandirici}
    end;
    dm2.tbXML.Next;
  end;
  memo1.Lines.Add('</reseller_contracts>');
end;

procedure TfrmImpGesp.BitBtn12Click(Sender: TObject);
begin
  dm1.tbKDaten.Active := True;
  dm2.tbXML.Active := True;

  dm2.tbXML.First;
  while not dm2.tbXML.Eof do begin
    if dm1.tbKDaten.Locate('KID', dm2.tbXMLKID.AsString, []) then begin
      dm2.tbXML.Edit;
        dm2.tbXMLName.AsString := dm1.tbKDatenKName.AsString;
        dm2.tbXMLVorname.AsString := dm1.tbKDatenKVorname.AsString;
      dm2.tbXML.Post;
    end;
    dm2.tbXML.Next;
  end;
end;

procedure TfrmImpGesp.BitBtn13Click(Sender: TObject);
begin
  if opendialog1.Execute then begin
    txtRuckseiten.Text := opendialog1.FileName;
    dm2.tbRechnung.Active := False;
    dm2.tbRechnung.TableName := txtRuckseiten.Text;
    dm2.tbRechnung.Active := True;
  end;
end;

procedure TfrmImpGesp.BitBtn4Click(Sender: TObject);
begin
  cboXML.Items.Add(cboXML.Text);
end;

procedure TfrmImpGesp.BitBtn14Click(Sender: TObject);
begin
  cboXML.Items.Delete(cboXML.ItemIndex);
end;

procedure TfrmImpGesp.BitBtn15Click(Sender: TObject);
  var
    m,
    i           :integer;
    sTel        :string;
    iTel        :integer;
    sonucKod    :string;
    sonucGrup   :string;
    islem       :integer;
    block,
    blockBeg,
    blockEnde   :string;
begin

  dm2.tbRechnung.Active := True;
//  if [ssAlt, ssCtrl, ssRight] in Shift then exit;
// Tarih problemi 07.15 ve 08.31 arasi zaten

{
  opendialog1.Execute;
  if opendialog1.FileName='' then exit;
  dm2.tbRechnung.TableName := opendialog1.FileName;
  dm2.tbRechnung.Active := True;
}
  islem := 0;
  Gauge1.MaxValue := dm1.tbKDatenAlt.RecordCount;
  dm1.tbKDatenAlt.First;
  while not dm1.tbKDatenAlt.Eof do begin
    ontel:=dm1.tbKDatenAltKTelVorw.AsString;
    for m:=1 to 10 do begin
      case m of
        01:tel := dm1.tbKDatenAltKTelA.AsString;
        02:tel := dm1.tbKDatenAltKTelB.AsString;
        03:tel := dm1.tbKDatenAltKTelC.AsString;
        04:tel := dm1.tbKDatenAltKTelD.AsString;
        05:tel := dm1.tbKDatenAltKTelE.AsString;
        06:tel := dm1.tbKDatenAltKTelF.AsString;
        07:tel := dm1.tbKDatenAltKTelG.AsString;
        08:tel := dm1.tbKDatenAltKTelH.AsString;
        09:tel := dm1.tbKDatenAltKTelI.AsString;
        10:tel := dm1.tbKDatenAltKTelJ.AsString;
      end;
      block := dm1.tbKDatenAltKTelBlock1.AsString;
      blockBeg := dm1.tbKDatenAltKTelBlock1V.AsString;
      blockEnde := dm1.tbKDatenAltKTelBlock1N.AsString;
      if block<>'' then tel := block;

      if (tel <> '') then begin
        dm2.tbRechnung.Filtered := False;
        dm2.tbRechnung.Filter := format('(ANSCHLUSS = %s*)', [QuotedStr(ontel+tel)]);
        dm2.tbRechnung.Filtered := True;

        dm2.tbRechnung.First;
        while not dm2.tbRechnung.Eof do begin
          sTel := dm2.tbRechnungZIEL.Value;
          iTel := length(sTel);
          tel := dm2.tbRechnungANSCHLUSS.AsString;

          {Aranan numara 00 ile basliyorsa}
          if copy(sTel, 1, 2)='00' then begin
            sonucKod := '';
            for i:=1 to iTel do begin
              dm1.tbUlkeKod.Filtered := false;
              dm1.tbUlkeKod.Filter := 'ulkekod =' + QuotedStr(copy(sTel, 1, i));
              dm1.tbUlkeKod.Filtered := True;
              if dm1.tbUlkeKod.RecordCount = 1 then begin
                sonucKod  := dm1.tbUlkeKodulkekod.Value;
                sonucGrup := dm1.tbUlkeKodbolge.Value;
              end;
            end;
            if sonucKod <> '' then
              TelKaydet(sonucGrup, 'class world')
            else
              HataYaz;

          {Aranan numara 0 ile basliyorsa}
          end else if copy(sTel, 1, 1)='0' then


            {Aranan cep mi arastir}
            if dm1.tbMobilKod.Locate('kod', copy(stel,1,4), []) then
              TelKaydet(dm1.tbMobilKodgrup.Value, 'class mobile')
            {Aranan numara sehir iciyse}
            else if copy(sTel, 1, length(ontel)) = ontel then
              TelKaydet('Ci', 'class city')  {Sehir ici}
            else
              TelKaydet('Ge', 'class national')  {Sehir disi}

          else
            HataYaz;


          frmImpGesp.Caption := format('%d', [islem]);
          inc(islem);

          dm2.tbRechnung.Next;
        end;

      end;

    end;
    Gauge1.Progress := dm1.tbKDatenAlt.RecNo;//dm1.tbKDatenAltID.Value;
    dm1.tbKDatenAlt.Next;
  end;
end;

procedure TfrmImpGesp.BitBtn8Click(Sender: TObject);
begin
  dm2.tbMArka.Active := True;
  dm2.tbMOn.Active := True;
  dm1.tbMDaten.Active := True;

  dm1.tbMDaten.First;
  while dm1.tbMDaten.Eof do begin

    dm2.tbMArka.Filter := 'M_ID ' + QuotedStr(dm1.tbMDatenM_ID.AsString);
    dm2.tbMArka.Filtered := True;
    dm2.tbMArka.First;

    while dm2.tbMArka.Eof do begin
      dm2.tbMOnM_ID.AsString := dm1.tbMDatenM_ID.AsString;
      dm2.tbMOnMTitel.AsString := dm1.tbMDatenMTitel.AsString;
      dm2.tbMOnMFirma.AsString := dm1.tbMDatenMFirma.AsString;
      dm2.tbMOnMName.AsString  := dm1.tbMDatenMName.AsString;
      dm2.tbMOnMVorname.AsString := dm1.tbMDatenMVorname.AsString;
      dm2.tbMOnAirTime.AsFloat := dm2.tbMArkaAirprov.AsFloat;
      dm2.tbMOnAbschluss.AsFloat;
      dm2.tbMOnDifferenzFP.AsFloat;
      dm2.tbMOnDifferenzAP.AsFloat;
      dm2.tbMOnAusZahlung.AsFloat;
    end;


  end;

end;

end.

{
Önce rück seite daha sonra rück seite ile
bulunmayanlar F2 Eksik Bul ile bulunabilir
eksikler giderildikten sonra ek gorusmeler
aya dahil edilmek icin Ek KID Bul ile excelden
alinan ve Ek tablosuna atilan telefonlarin
KID bulunacak. Daha sonra on sayfa veya arka
sayfa basilacak.

Fatura yedeklendikten sonra Eksik Ara F2 calistirilmali
cunku buldugu numaralari listeden silecek.

}
