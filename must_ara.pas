unit must_ara;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, ImgList, ComCtrls,
  ToolWin;

type
  TfrmMusteriEk = class(TForm)
    txtSuzgec: TEdit;
    cboAlanlar: TComboBox;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    dsKD: TDataSource;
    ToolBar1: TToolBar;
    BackBtn: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    ToolButton11: TToolButton;
    ActionImgs: TImageList;
    tbKD: TADOTable;
    procedure ara(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMusteriEk: TfrmMusteriEk;

implementation

uses musteri, Vertriebspartner, dm_1;

{$R *.dfm}

procedure TfrmMusteriEk.ara(Sender: TObject);
begin
  tbKD.Locate(cboAlanlar.Items[cboAlanlar.ItemIndex], txtSuzgec.Text, [loPartialKey]);
//  tbKD.Filter := format('%s = ''%s*''', [cboAlanlar.Items[cboAlanlar.ItemIndex], txtSuzgec.Text]);
//  tbKD.Filtered := true;
end;

procedure TfrmMusteriEk.FormShow(Sender: TObject);
begin
  tbKD.Active := True;
  tbKD.Sort   := 'KID ASC';
  tbKD.Filtered := false;
end;

procedure TfrmMusteriEk.DBGrid1TitleClick(Column: TColumn);
begin
  tbKD.Sort := column.Title.Caption + ' ASC';
end;

end.
