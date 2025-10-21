unit formCrudFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, DataModuleNormal,
  Datasnap.DBClient, Vcl.Buttons, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TformCrudFunc = class(TForm)
    Panel1: TPanel;
    btnIncluirFunc: TPanel;
    pnlPesquisa: TPanel;
    iconePesquisa: TImage;
    DBGrid1: TDBGrid;
    DSFuncionarios: TDataSource;
    lblDadosFunc: TLabel;
    gridPanelLogin: TGridPanel;
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
    lblSelecionaFuncao: TLabel;
    cbFuncao: TComboBox;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    leCEP: TLabeledEdit;
    leEmail: TLabeledEdit;
    leTelefone: TLabeledEdit;
    leNome: TLabeledEdit;
    leEndereco: TLabeledEdit;
    leRG: TLabeledEdit;
    edtPesquisa: TEdit;
    btnEditFunc: TPanel;
    btnInativFunc: TPanel;
    btnExcluFunc: TPanel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    pnlCadastrar: TPanel;
    leCPF: TLabeledEdit;
    procedure btnInativFuncClick(Sender: TObject);
    procedure iconePesquisaClick(Sender: TObject);
    procedure btnEditFuncClick(Sender: TObject);
    procedure btnIncluirFuncClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure leCEPExit(Sender: TObject);
    procedure SenhaFunc;
    procedure pnlCadastrarClick(Sender: TObject);
    procedure FunciClien(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCrudFunc: TformCrudFunc;

implementation

{$R *.dfm}

uses  unitCEPConsultor,
      frameCadastroDeSenhaFuncionário,
      System.Hash;

procedure TformCrudFunc.FormCreate(Sender: TObject);
begin
//      DM.QueryFuncionarios.Close;
//      DM.QueryFuncionarios.Open;
end;

procedure TformCrudFunc.btnInativFuncClick(Sender: TObject);
begin
//    DM.QueryFuncionarios.SQL.Text := 'SELECT * FROM "Funcionarios" WHERE ativo_in = True';
//    if Funcionario.ativo_in <> true then begin
//      ShowMessage('O funcionário deve estar inativo antes de ser excluído.');
//    end;
end;

procedure TformCrudFunc.SenhaFunc;
var SenhaFuncionario: TframeCadSenhaFuncionario;
senhaFunci: String;
begin
    frameCadSenhaFuncionario := TframeCadSenhaFuncionario.Create(Self);
    frameCadSenhaFuncionario.Parent := Self;
    frameCadSenhaFuncionario.Align := alClient;
    frameCadSenhaFuncionario.Show;
    senhaFunci := frameCadSenhaFuncionario.SenhaFunc;
end;


procedure TformCrudFunc.btnIncluirFuncClick(Sender: TObject);
begin
    pnlCadastrar.Visible := True;

    DM.QueryFuncionarios.Open;
    DM.QueryFuncionarios.Insert;
end;


procedure TformCrudFunc.btnEditFuncClick(Sender: TObject);
begin
    DM.QueryFuncionarios.Open;
    DM.QueryFuncionarios.Edit;

    DM.QueryFuncionarios.SQL.Text := 'SET ativo_in = false';
end;

procedure TformCrudFunc.iconePesquisaClick(Sender: TObject);
begin
    //DM.QueryFuncionarios
end;

procedure TformCrudFunc.leCEPExit(Sender: TObject);
begin
      unitCEPConsultor.ConsultaCEP(leCEP.Text, TCustomEdit(leEndereco), TCustomEdit(leBairro), TCustomEdit(leCidade), cbUF, RESTClient1, RESTRequest1, RESTResponse1);
end;

procedure TformCrudFunc.FunciClien(Sender: TObject);
var hash: String;
begin
    with DM.QueryClientes do begin
    DM.QueryClientes.SQL.Text := 'INSERT INTO "Clientes" (nome_cliente, telefone_cliente, email_cliente, cep_cliente, endereco_cliente, num_endereco, bairro, cidade, uf) VALUES(:Nome, :Telefone, :Email, :CEP, :Endereco, :Numero, :Bairro, :Cidade, :UF);';

    ParamByName('Nome').AsString := leNome.Text;
    ParamByName('Telefone').AsString := leTelefone.Text;
    ParamByName('Email').AsString := leEmail.Text;
    ParamByName('CEP').AsString := leCEP.Text;
    ParamByName('Endereco').AsString := leEndereco.Text;
    ParamByName('Numero').AsString := leNumero.Text;
    ParamByName('Bairro').AsString := leBairro.Text;
    ParamByName('Cidade').AsString := leCidade.Text;
    ParamByName('UF').AsString := cbUf.Text;
    //ParamByName('SenhaHash').AsString := hash;

    ExecSQL;
    end;
end;

procedure TformCrudFunc.pnlCadastrarClick(Sender: TObject);
var hash, senhaFunci: String;
begin
    if (leNome.Text = '') or (leEmail.Text = '') or (leCPF.Text = '') then begin
        ShowMessage('Preencha os campos obrigatórios');
        Exit;
    end else begin
        SenhaFunc;
        with DM.QueryFuncionarios do begin

        SQL.Text := 'INSERT INTO "Funcionarios" (nome_funcionario, telefone_funcionario, email_funcionario, cep_funcionario, endereco_funcionario, num_endereco, bairro, cidade, uf, funcao, cpf_funcionario, rg_funcionario, hash_senha_func) VALUES (:Nome, :Telefone, :Email, :CEP, :Endereco, :Numero, :Bairro, :Cidade, :UF, :Funcao, :CPF, :RG, :Senha);';

        ParamByName('Nome').AsString := leNome.Text;
        ParamByName('Telefone').AsString := leTelefone.Text;
        ParamByName('Email').AsString := leEmail.Text;
        ParamByName('CEP').AsString := leCEP.Text;
        ParamByName('Endereco').AsString := leEndereco.Text;
        ParamByName('Numero').AsString := leNumero.Text;
        ParamByName('Bairro').AsString := leBairro.Text;
        ParamByName('Cidade').AsString := leCidade.Text;
        ParamByName('UF').AsString := cbUf.Text;
        ParamByName('Funcao').AsString := cbFuncao.Text;
        ParamByName('CPF').AsString := leCPF.Text;
        ParamByName('RG').AsString := leRG.Text;
        ParamByName('Senha').AsString := senhaFunci;  // Senha só é recebida no frame/form de Cadastro de Senha de Funcionário

          if senhaFunci = '' then begin
          senhaFunci := 'senha1234';
          end;

          if cbFuncao.Text = 'Administrador' then begin
            if MessageDlg('Tem certeza que deseja adicionar funcionário com a função de "Administrador"? Esse usuário terá acesso à todas as permissões de um administrador.',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes then


        ExecSQL;

        if MessageDlg('Cadastro finalizado com sucesso! Deseja incluir o funcionário como cliente?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then FunciClien(leEmail);
          end else begin
                ShowMessage('Funcionário não incluído. Aguarde o retorno à tela.');
                Sleep(4000);
            end;
        end;
    end;
end;
end.


if cbFuncao.Text = 'Administrador' then begin
          if MessageDlg('Tem certeza que deseja adicionar funcionário com a função de "Administrador"? Esse usuário terá acesso à todas as permissões de um administrador.',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then

        ExecSQL;


          end else
        end;
        if MessageDlg('Cadastro finalizado com sucesso! Deseja incluir o funcionário como cliente?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then FunciClien(leEmail);
