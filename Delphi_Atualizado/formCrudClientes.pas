unit formCrudClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
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
    pnlSalvar: TPanel;
    procedure leCEPExit(Sender: TObject);
    procedure pnlCadastraCliCrudClick(Sender: TObject);
    procedure btnIncluirCliClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnInativCliClick(Sender: TObject);
    procedure btnExcluCliClick(Sender: TObject);
    procedure recarregarGrid;
    procedure LimparCampos;
    procedure btnEditCliClick(Sender: TObject);
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

var codigoCliente: String;


procedure TformCrudCli.DBGrid1CellClick(Column: TColumn);
// Mostrar dados nos campos do formulário lateral
begin
    codigoCliente :=  DBGrid1.Fields[0].Value;

    leNome.Text := DM.QueryClientes.FieldByName('nome_cliente').AsString;
    leTelefone.Text := DM.QueryClientes.FieldByName('telefone_cliente').AsString;
    leEmail.Text := DM.QueryClientes.FieldByName('email_cliente').AsString;
    leCEP.Text := DM.QueryClientes.FieldByName('cep_cliente').AsString;
    leEndereco.Text := DM.QueryClientes.FieldByName('endereco_cliente').AsString;
    leBairro.Text := DM.QueryClientes.FieldByName('bairro').AsString;
    leNumero.Text := DM.QueryClientes.FieldByName('num_endereco').AsString;
    leCidade.Text := DM.QueryClientes.FieldByName('cidade').AsString;
    cbUF.Text := DM.QueryClientes.FieldByName('uf').AsString;
end;

procedure TformCrudCli.LimparCampos;
begin
// Limpar campos do formulário lateral

    leNome.Clear;
    leTelefone.Clear;
    leEmail.Clear;
    leCEP.Clear;
    leEndereco.Clear;
    leNumero.Clear;
    leBairro.Clear;
    leCidade.Clear;
    leSenha.Clear;
    leConfSenha.Clear;
    cbUF.ItemIndex:= -1;

end;


procedure TformCrudCli.recarregarGrid;
begin
    with DM.QueryClientes do begin
      Close;
      SQL.Text := 'SELECT * FROM "Clientes" ORDER BY nome_cliente';
      Open;
    end;
end;

procedure TformCrudCli.btnIncluirCliClick(Sender: TObject);
// Abrir inclusão de Cliente
begin
    btnExcluCli.Enabled := False;
    btnInativCli.Enabled := False;
    btnEditCli.Enabled := False;
    pnlCadastraCliCrud.Visible := True;
    leNome.SetFocus;
    DM.QueryClientes.Insert;
    DM.QueryClientes.Open;
end;

procedure TformCrudCli.btnEditCliClick(Sender: TObject);
// Editar Cliente
begin
    pnlCadastraCliCrud.Visible := False;
    pnlSalvar.Visible := True;

    if not DM.QueryClientes.Active then begin
      DM.QueryClientes.Open;
    end else if DM.QueryClientes.Active then begin
      DM.QueryClientes.Edit;
    end else begin
      ShowMessage('Não foi possível acessar os dados do cliente para edição.');
    end;

end;

procedure TformCrudCli.btnExcluCliClick(Sender: TObject);
// Excluir Cliente
begin
    if (DM.QueryClientes.FieldByName('ativo_in').AsBoolean = True) then begin
      ShowMessage('O cliente deve estar inativo antes de ser excluído.');
    end else if
     MessageDlg('Tem certeza de que deseja excluir o cliente? Essa ação não poderá ser revertida', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      DM.QueryClientes.Close;
      DM.QueryClientes.SQL.Text := 'DELETE FROM "Clientes" WHERE codigo_cliente = :codCli';
      DM.QueryClientes.ParamByName('codCli').AsInteger := StrToInt(codigoCliente);
      DM.QueryClientes.ExecSQL;

      recarregarGrid;
     end;
end;

procedure TformCrudCli.btnInativCliClick(Sender: TObject);
// Inativar Cliente
begin
    DM.QueryClientes.Close;
    DM.QueryClientes.SQL.Text := 'UPDATE "Clientes" SET ativo_in = false WHERE codigo_cliente = :codCli';
    DM.QueryClientes.ParamByName('codCli').AsInteger := StrToInt(codigoCliente);
    DM.QueryClientes.ExecSQL;

    recarregarGrid;

//     DM.QueryClientes.Open;
//    DM.QueryClientes.SQL.Text := 'UPDATE "Clientes" SET ativo_in = false WHERE codigo_cliente = :codCli';
//    DM.QueryClientes.ParamByName('codCli').AsInteger := StrToInt(codigoCliente);
//    DM.QueryClientes.ExecSQL;
//    DM.QueryClientes.Post;
//    DM.QueryClientes.Open;

//    if (DM.QueryFuncionarios.State in [dsInsert, dsEdit]) then begin
//    DM.QueryClientes.Post;
//    end;
//    DM.QueryFuncionarios.Open;
//    DM.QueryFuncionarios.SQL.Text := 'UPDATE "Funcionarios" SET ativo_in = :boolAtivo WHERE codigo_funcionario = :codFunc';
//    DM.QueryFuncionarios.ParamByName('boolAtivo').AsBoolean := False;
//    DM.QueryFuncionarios.ParamByName('codFunc').AsInteger := StrToInt(codigoFuncionario);
//    DM.QueryFuncionarios.ExecSQL;
end;

procedure TformCrudCli.leCEPExit(Sender: TObject);
// Consulta CEP
begin
    unitCEPConsultor.ConsultaCEP(leCEP.Text, TCustomEdit(leEndereco), TCustomEdit(leBairro), TCustomEdit(leCidade), cbUF, RESTClient1, RESTRequest1, RESTResponse1);
end;

procedure TformCrudCli.pnlCadastraCliCrudClick(Sender: TObject);
begin
    formCadastroDeClientes.pnlCadastrarClick(pnlCadastraCliCrud);
end;

end.
