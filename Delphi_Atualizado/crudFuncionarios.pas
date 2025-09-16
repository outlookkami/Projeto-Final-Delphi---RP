unit crudFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.pngimage;

type
  TFrame2 = class(TFrame)
    Panel1: TPanel;
    btnIncluirFunc: TPanel;
    pnlPesquisa: TPanel;
    iconePesquisa: TImage;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
