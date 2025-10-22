unit formCrudClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TformCrudCli = class(TForm)
    Panel1: TPanel;
    lblDadosCli: TLabel;
    btnIncluirCli: TPanel;
    pnlPesquisa: TPanel;
    iconePesquisa: TImage;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    gridPanelLogin: TGridPanel;
    lblVazio5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    leNumero: TLabeledEdit;
    leBairro: TLabeledEdit;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    leCidade: TLabeledEdit;
    GridPanel7: TGridPanel;
    Label12: TLabel;
    cbUF: TComboBox;
    pnlSelecionaFuncao: TPanel;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    leCEP: TLabeledEdit;
    leEmail: TLabeledEdit;
    leTelefone: TLabeledEdit;
    leNome: TLabeledEdit;
    leEndereco: TLabeledEdit;
    leConfSenha: TLabeledEdit;
    btnInativCli: TPanel;
    btnExcluCli: TPanel;
    DSCliente: TDataSource;
    leSenha: TLabeledEdit;
    btnEditCli: TPanel;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTClient1: TRESTClient;
    pnlCadastraCliCrud: TPanel;
    procedure leCEPExit(Sender: TObject);
    procedure pnlCadastraCliCrudClick(Sender: TObject);
    procedure btnIncluirCliClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  formCrudCli: TformCrudCli;

implementation

{$R *.dfm}

uses  System.Hash,
      dataModuleNormal,
      frameCadastroVeiculo,
      formCadastroClientes,
      unitCEPConsultor;

// Mostrar dados nos campos do formulário lateral
procedure TformCrudCli.DBGrid1CellClick(Column: TColumn);
begin
    //codigoFuncionario :=  DBGrid1.Fields[0].Value;
    leNome.Text := DM.QueryClientes.FieldByName('nome_funcionario').AsString;
    leTelefone.Text := DM.QueryClientes.FieldByName('telefone_funcionario').AsString;
    leEmail.Text := DM.QueryClientes.FieldByName('email_funcionario').AsString;
    leCEP.Text := DM.QueryClientes.FieldByName('cep_funcionario').AsString;
    leEndereco.Text := DM.QueryClientes.FieldByName('endereco_funcionario').AsString;
    leBairro.Text := DM.QueryClientes.FieldByName('bairro').AsString;
    leNumero.Text := DM.QueryClientes.FieldByName('num_endereco').AsString;
    leCidade.Text := DM.QueryClientes.FieldByName('cidade').AsString;
    cbUF.Text := DM.QueryClientes.FieldByName('uf').AsString;


end;

procedure TformCrudCli.btnIncluirCliClick(Sender: TObject);
begin
    btnExcluCli.Enabled := False;
    btnInativCli.Enabled := False;
    btnEditCli.Enabled := False;
    pnlCadastraCliCrud.Visible := True;
    leNome.SetFocus;
end;


procedure TformCrudCli.leCEPExit(Sender: TObject);
begin
    unitCEPConsultor.ConsultaCEP(leCEP.Text, TCustomEdit(leEndereco), TCustomEdit(leBairro), TCustomEdit(leCidade), cbUF, RESTClient1, RESTRequest1, RESTResponse1);
end;

procedure TformCrudCli.pnlCadastraCliCrudClick(Sender: TObject);
begin
    formCadastroDeClientes.pnlCadastrarClick(pnlCadastraCliCrud);
end;


end.
