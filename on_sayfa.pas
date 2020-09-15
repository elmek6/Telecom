unit on_sayfa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TfrmOnSayfa = class(TForm)
    DBGrid1: TDBGrid;
    DBCheckBox1: TDBCheckBox;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOnSayfa: TfrmOnSayfa;

implementation

uses dm_2;

{$R *.dfm}

end.
