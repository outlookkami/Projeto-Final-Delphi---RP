unit crudClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, frameCadastroVeiculo;

type
  TcrudCli = class(TFrame)
    Panel1: TPanel;
    pnlPesquisa: TPanel;
    DBEdit1: TDBEdit;
    iconePesquisa: TImage;
    DBGrid1: TDBGrid;
    btnIncluirCli: TPanel;
    DSCadastro: TDataSource;
//    procedure btnIncluirCliClick(Sender: TObject);
//    procedure pnlCadastrarClick(Sender: TObject);
//    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var crudCli: TcrudCli;

implementation

{$R *.dfm}

//procedure TcrudCli.btnIncluirCliClick(Sender: TObject);
//begin
//   pnlCadastro.Visible := True;
//end;
//
//procedure TcrudCli.Panel1Click(Sender: TObject);
//begin
//
//end;
//
//procedure TcrudCli.pnlCadastrarClick(Sender: TObject);
//begin
//    pnlCadastro.Visible := False;
//    if MessageDlg('Cadastro finalizado com sucesso! Deseja incluir um veículo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//    frameCadVeiculo1.Visible := True;
//end;

end.
