unit crudClientesSemErro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.pngimage;

type
  TframeCrudClientes = class(TFrame)
    Panel1: TPanel;
    btnIncluirCli: TPanel;
    pnlPesquisa: TPanel;
    iconePesquisa: TImage;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    pnlLogin: TPanel;
    Label1: TLabel;
    gridPanelLogin: TGridPanel;
    lblV1: TLabel;
    dbleNomeCompleto: TDBLabeledEdit;
    lblV2: TLabel;
    dbleTelefone: TDBLabeledEdit;
    Label3: TLabel;
    dbleEmail: TDBLabeledEdit;
    Label4: TLabel;
    dbleCEP: TDBLabeledEdit;
    Label5: TLabel;
    dbleEndereco: TDBLabeledEdit;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    dbleNumero: TDBLabeledEdit;
    dbleBairro: TDBLabeledEdit;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    dbleCidade: TDBLabeledEdit;
    dbleUF: TDBLabeledEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    pnlCadastrar: TPanel;
    Label13: TLabel;
    GridPanel5: TGridPanel;
    Label10: TLabel;
    leSenha: TLabeledEdit;
    cadeadoSenha: TImage;
    Label14: TLabel;
    GridPanel6: TGridPanel;
    leConfSenha: TLabeledEdit;
    cadeadoConfSenha: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameCrudClientes: TframeCrudClientes;

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
