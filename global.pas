unit GLOBAL;

interface

uses
  SysUtils, IniFiles, QForms, Registry, DateUtils, Classes;

const
  PRG_SIGN = 'CS';
  FILECLASS = 'class.ini';
  FILEDATEN = 'data.mdb';
  sMONATEN :array[1..12] of string =
            ('Januar', 'Februar', 'März',      'April',   'Mai',      'Juni',
             'Juli',   'August',  'September', 'Oktober', 'November', 'Dezember');

const
  LisansSize = 35;
type
    {NO-TTMMJJJJ-CCCC-MMMM-XXXX}
    {12 34567890 1234 5678 9012
     AB CDEFGHIJ KLMN OPQR STUV
     --------------------------
     00-01012005-0070-6000-XXXX
     01-01022005-0090-2000-XXXX
     02-01032005-0100-0060-XXXX
    }

  TLisans = record
    Boy,
    No,
    CalismaSay,
    DakikaSay,
    GuvenlikKod :integer;
    Cozumsuz,
    Cozumlu,
    Tarih      :string;
  end;

var
  PrgPath      :string; {system}
  sDaten       :string;
  sDonem       :string;
  sDonemTar    :string;
  sSecTarihBas,          {secili ayin ilk tarih araligi 01.10.2004 gibi}
  sSecTarihSon :string;  {secili ayin son tarih araligi 31.10.2004 gibi}
  iSecAy       :integer; {secili ay}
  iSecYil      :integer; {secili yil}
  sSecTarih    :string;
  iDonemSay    :integer;
  User         :array[1..9] of string;
  iUserAktif   :integer;
  iRun         :integer;
  iRunTime     :integer;
  Lisans       :TLisans;



function maskele(orj,maske:string):string;
function san2saat(s: integer): string;
function maskeleS(orj, maske: string): string;
function hextostr(value: string): string;
function strtohex(value: string): string;
function TarihYap(gun, ay, yil: integer): string;
procedure GenelOku;
procedure GenelYaz;
procedure RegYaz;
procedure RegOku;
procedure TarihSec(m: integer; j:integer);
procedure Koruma;

implementation

uses dm_2, main;

{1 ile 9 arasinda sayi dondurur}
function maskele(orj,maske:string):string;
var
  i,boy :integer;
begin
  result := '';
  boy := length(maske);
  for i:=1 to boy do begin
    if (maske[i]>='1')and(maske[i]<='9') then
      result := result + orj[byte(maske[i])-48]
    else
      result := result + maske[i];
  end;
end;

function san2saat(s: integer): string;
var
  h,m:integer;
  ho,
  mi,
  se : string;
begin
  h:= 0;
  m:=0;
  if s>=3600 then begin
    h := s div 3600;
    s := s - h*3600;
  end;
  if s>=60 then begin
    m := s div 60;
    s := s - m*60;
  end;
  if h>9 then ho := inttostr(h) else ho := '0'+inttostr(h);
  if m>9 then mi := inttostr(m) else mi := '0'+inttostr(m);
  if s>9 then se := inttostr(s) else se := '0'+inttostr(s);

  result := ho + '.' + mi + '.' + se;
end;

{A ile Z arasinda sayi dondurur}
function maskeleS(orj, maske: string): string;
var
  c:char;
  s,
  i,boy :integer;
begin
  result := '';
  boy := length(orj); {milyon degerlere cikiyor bazen}
  for i:=1 to 29 do begin
    if (i<=length(maske))and(maske[i] in ['A'..'Z']) then begin
      s := byte(maske[i])-64;

      if s > 250 then
        application.Minimize;

      if s>length(orj) then
        setlength(orj, s);

      result := result + orj[s];
//result[0] := 1;
//format
{
      //-------

      c := maske[i];
      c := byte(c)-64;
      result := orj
      }

    end
    else if i<=length(maske) then
      result := result + maske[i];
  end;
end;

procedure GenelOku;
  var
    dosya   :TiniFile;
begin

  dosya := TIniFile.Create(PrgPath+FILECLASS);
  try
    sDaten     := dosya.ReadString('main', 'Daten', FILEDATEN);
    sDonem     := dosya.ReadString('main', 'Donem', 'August 2004');
    sDonemTar  := dosya.ReadString('main', 'DonemTarih', '09.01.2004');
    iDonemSay  := dosya.ReadInteger('main', 'DonemSay', 0);
    iSecAy     := dosya.ReadInteger('main', 'CalismaAy', 8);
    iSecYil    := dosya.ReadInteger('main', 'CalismaYil', 2004);
  finally
    dosya.Free;
  end;
end;

procedure GenelYaz;
  var
    dosya   :TiniFile;
begin
  dosya := TIniFile.Create(PrgPath+FILECLASS);
  try
    dosya.WriteString('main', 'Daten', sDaten);
    dosya.WriteString('main', 'Donem', sDonem);
    dosya.WriteString('main', 'DonemTarih', sDonemTar);
    dosya.WriteInteger('main', 'CalismaAy', iSecAy);
    dosya.WriteInteger('main', 'DonemSay', iDonemSay);
    dosya.WriteInteger('main', 'CalismaYil', iSecYil);
  finally
    dosya.Free;
  end;
end;

function TarihYap(gun, ay, yil: integer): string;
begin
  {ay 13 oldugunda yil bir sene fazlasi ve ay-12}
  if ay>12 then begin
    dec(ay, 12);
    inc(yil, ay);
  end;

  {eger gün False verilirse ayin son günü}
  if gun = -1 then
    gun := DaysInAMonth(yil, ay);

  if gun<9 then
    result := '0' + inttostr(gun)
  else
    result := inttostr(gun);

  if ay<9 then
    result := result + '.0' + inttostr(ay)
  else
    result := result + '.' + inttostr(ay);

  result := result + '.' + inttostr(yil);

end;

procedure RegYaz;
  var
    reg   :TRegIniFile;

begin
  reg := TRegIniFile.create('SOFTWARE\classtel\');

    inc(iRun);

    reg.WriteInteger(PRG_SIGN, 'Active user' , iUserAktif);
    reg.WriteInteger(PRG_SIGN, 'R', iRun);
    reg.WriteInteger(PRG_SIGN, 'RT', iRunTime);

    reg.WriteString(PRG_SIGN, 'Lizenz', Lisans.Cozumsuz);
  reg.free;
end;

procedure RegOku;
  var
    reg   :TRegIniFile;

begin
  reg := TRegIniFile.create('SOFTWARE\classtel\');

    iUserAktif := reg.ReadInteger(PRG_SIGN, 'Active user' , 1);
    iRun       := reg.ReadInteger(PRG_SIGN, 'R', 0);
    iRunTime   := reg.ReadInteger(PRG_SIGN, 'RT', 0);

    Lisans.Cozumsuz := reg.ReadString(PRG_SIGN, 'Lizenz', '303232303031323030353030393032303030303030303030303031323731');
    Lisans.Cozumlu := hextostr(Lisans.Cozumsuz);

  reg.free;
end;

procedure TarihSec(m: integer; j:integer);
  const
    s       :array[1..12] of string = ('01','02','03','04','05','06','07','08','09','10','11','12');
  var
    lsDBPassword,
    Global_DBConnection_String  :string;
begin
  sSecTarih:= s[M] + '-' + inttostr(J) + '.mdb';
  iSecAy   := M;
  iSecYil  := J;
  if(iSecAy=2)and(iSecYil=iSecAy*1002+1) then iSecYil:=iSecAy*1002;
  sDonem   := sMONATEN[M] + ' ' + inttostr(J);
  sDonemTar:= TarihYap(1, M+1, J);
  sSecTarihBas := TarihYap(1, iSecAy, J);
  sSecTarihSon := TarihYap(-1, iSecAy, J);
  dm2.ADOC2.Connected := False;
  lsDBPassword := '';
  Global_DBConnection_String :=
    'Provider=Microsoft.Jet.OLEDB.4.0;' +
    'Data Source=' + sSecTarih + ';' +
    'Persist Security Info=False;' +
    'Jet OLEDB:Database Password=' + lsDBPassword;

  dm2.ADOC2.ConnectionString := Global_DBConnection_String;
  dm2.ADOC2.Connected := True;

  dm2.tbArka.Active := True;
  dm2.tbVor.Active := True;
  dm2.tbVor.Sort := 'KID ASC';
  dm2.tbHata.Active := True;
  dm2.tbVAA.Active := True;
  dm2.tbVAA.Sort := 'KID ASC';


  frmMain.Caption := format('class telecom - %s', [sDonem]);

  Koruma;
  (*
  {koruma1}
  if (date>strtodate(lisans.Tarih)) or (iDonemSay=lisans.No) or (iRun>lisans.CalismaSay) then begin     {her seferinde bir artmali}
    dm2.ADOC2.Destroy;
    iDonemSay := 1;   {her seferinde bir artmali}
    genelYaz;
  end;
  *)

end;

function hextostr(value: string): string;
  var
    Buffer: array[0..255] of Char;
    pc :pchar;
begin
  pc := pchar(value);
  hextobin(pc, buffer, sizeof(buffer)); { >0 error }
  result := copy(buffer, 1, length(value)div 2);
end;

function strtohex(value: string): string;
  var
    Buffer: array[0..$FF] of Char;
    pc: array[0..$1FF] of Char;
begin
  strcopy(buffer, pchar(value));
  bintohex(buffer, pc, length(value));
  result := copy(pc, 1, length(value)*2);
end;


procedure Koruma;
  var
    comp,
    i      :integer;
    donma  :integer;
begin
  donma := 0;

    {NO-TTMMJJJJ-CCCC-MMMM-RRRRRRR-XXXX}
    {12 34567890 1234 5678 901234567890
     AB CDEFGHIJ KLMN OPQR
     ----------------------------------
     00-01012005-0070-6000-RRRRRRR-XXXX
     01-01022005-0090-2000-RRRRRRR-XXXX
     02-01032005-0100-0060-RRRRRRR-XXXX
    }

  try
    if length(Lisans.Cozumlu)=30 then begin
      Lisans.No          := strtoint(maskeles(Lisans.Cozumlu,'AB'));
      Lisans.Tarih       := maskeleS(Lisans.Cozumlu,'CD.EF.GHIJ');
      Lisans.CalismaSay  := strtoint(MaskeleS(Lisans.Cozumlu,'KLMN'));
      Lisans.DakikaSay   := strtoint(MaskeleS(Lisans.Cozumlu, 'OPQR'));
      Lisans.GuvenlikKod := strtoint(copy(Lisans.Cozumlu, length(Lisans.Cozumlu)-4,5));

      comp := 0;
      for i:=1 to length(Lisans.Cozumlu)-4 do
        inc(comp, byte(Lisans.Cozumlu[i]));

      if Lisans.No = iDonemSay then inc(donma);
      if date > strtodate(Lisans.Tarih) then inc(donma);
      if Lisans.CalismaSay <= iRun then inc(donma);
      if Lisans.DakikaSay <= iRunTime then inc(donma);
      if Lisans.GuvenlikKod <> comp then inc(donma);
    end else
      inc(donma);

  except
    inc(donma);
  end;

  if donma<>0 then begin
    iDonemSay := Lisans.No;
    RegYaz;
    genelYaz;
    dm2.ADOC2.Destroy;
  end;
end;

BEGIN
  PrgPath := application.ExeName;
  while PrgPath[Length(PrgPath)]<>'\' do delete(PrgPath,length(PrgPath),1);

END.
