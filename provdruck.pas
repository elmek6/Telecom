unit provdruck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TfrmProv = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProv: TfrmProv;

implementation

uses dm_1, qrMArka, qrMOn, dm_2;

{$R *.dfm}

procedure TfrmProv.BitBtn3Click(Sender: TObject);
begin
  qrMA_Arka.qryMA_ArkaAlt.Close;
  qrMA_Arka.qryMA_ArkaAlt.SQL.Clear;
  qrMA_Arka.qryMA_ArkaAlt.SQL.Add('select * from markaalt');
  qrMA_Arka.qryMA_ArkaAlt.SQL.Add(format('where MGRUP = %s', [dbgrid1.SelectedField.DataSet.FieldValues['M_ID']]));
  qrMA_Arka.qryMA_ArkaAlt.Open;
  qrMA_Arka.qryMA_ArkaAlt.Active := True;

  qrMA_Arka.qryMArka.Close;
  qrMA_Arka.qryMArka.SQL.Clear;
  qrMA_Arka.qryMArka.SQL.Add('select * from marka');
  qrMA_Arka.qryMArka.SQL.Add(format('where M_ID = %s', [dbgrid1.SelectedField.DataSet.FieldValues['M_ID']]));
  qrMA_Arka.qryMArka.Open;
  qrMA_Arka.qryMArka.Active := True;
  qrMA_Arka.Preview;
end;

procedure TfrmProv.FormShow(Sender: TObject);
begin
  dm1.tbMDaten.Active := True;
end;

procedure TfrmProv.BitBtn2Click(Sender: TObject);
begin
  dm2.tbMOn.Active := True;
  if not dm2.tbMOn.Locate('M_ID', dbgrid1.SelectedField.DataSet.FieldValues['M_ID'], []) then
    showmessage('M ID wird nicht gefunden');

  qrMA_On.Preview;
end;

end.
