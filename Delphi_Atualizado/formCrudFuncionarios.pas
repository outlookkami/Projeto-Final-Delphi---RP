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
    pnlSalvar: TPanel;
    procedure iconePesquisaClick(Sender: TObject);
    procedure btnExcluFuncClick(Sender: TObject);
    procedure btnEditFuncClick(Sender: TObject);
    procedure btnIncluirFuncClick(Sender: TObject);
    procedure btnInativFuncClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure leCEPExit(Sender: TObject);
    procedure SenhaFunc;
    procedure pnlCadastrarClick(Sender: TObject);
    procedure FunciClien(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure pnlSalvarClick(Sender: TObject);
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
var codigoFuncionario: String;

// Mostrar dados nos campos do formulário lateral
procedure TformCrudFunc.DBGrid1CellClick(Column: TColumn);
begin
    codigoFuncionario :=  DBGrid1.Fields[0].Value;

    leNome.Text := DM.QueryFuncionarios.FieldByName('nome_funcionario').AsString;
    leTelefone.Text := DM.QueryFuncionarios.FieldByName('telefone_funcionario').AsString;
    leEmail.Text := DM.QueryFuncionarios.FieldByName('email_funcionario').AsString;
    leCEP.Text := DM.QueryFuncionarios.FieldByName('cep_funcionario').AsString;
    leEndereco.Text := DM.QueryFuncionarios.FieldByName('endereco_funcionario').AsString;
    leBairro.Text := DM.QueryFuncionarios.FieldByName('bairro').AsString;
    leNumero.Text := DM.QueryFuncionarios.FieldByName('num_endereco').AsString;
    leCidade.Text := DM.QueryFuncionarios.FieldByName('cidade').AsString;
    cbUF.Text := DM.QueryFuncionarios.FieldByName('uf').AsString;
    cbFuncao.Text := DM.QueryFuncionarios.FieldByName('funcao').AsString;
    leCPF.Text := DM.QueryFuncionarios.FieldByName('cpf_funcionario').AsString;
    leRG.Text := DM.QueryFuncionarios.FieldByName('rg_funcionario').AsString;
end;

// Incluir funcionário
procedure TformCrudFunc.btnIncluirFuncClick(Sender: TObject);
begin
    pnlSalvar.Visible := False;
    pnlCadastrar.Visible := True;

    DM.QueryFuncionarios.Open;
    if not (DM.QueryFuncionarios.State in [dsInsert, dsEdit]) then
      DM.QueryFuncionarios.Insert;
end;

// Editar funcionário
procedure TformCrudFunc.btnEditFuncClick(Sender: TObject);
begin
    pnlCadastrar.Visible := False;
    pnlSalvar.Visible := True;

    if not (DM.QueryFuncionarios.State in [dsInsert, dsEdit]) then
    DM.QueryFuncionarios.Edit;
end;

procedure TformCrudFunc.pnlSalvarClick(Sender: TObject);
begin
    if not (DM.QueryFuncionarios.State in [dsInsert, dsEdit]) then
//    DM.QueryFuncionarios.Open;
    DM.QueryFuncionarios.Post;
end;

// Inativar funcionário
procedure TformCrudFunc.btnInativFuncClick(Sender: TObject);
begin
    DM.QueryFuncionarios.Open;
    DM.QueryFuncionarios.SQL.Text := 'UPDATE "Funcionarios" SET ativo_in = :boolAtivo WHERE codigo_funcionario = :codFunc';
    DM.QueryFuncionarios.ParamByName('boolAtivo').AsBoolean := False;
    DM.QueryFuncionarios.ParamByName('codFunc').AsInteger := StrToInt(codigoFuncionario);
    DM.QueryFuncionarios.ExecSQL;
    //DM.QueryFuncionarios.Close;
end;

// Excluir funcionário
procedure TformCrudFunc.btnExcluFuncClick(Sender: TObject);
begin
    if (DM.QueryFuncionarios.FieldByName('ativo_in').AsBoolean = True) then begin
      ShowMessage('O funcionário deve estar inativo antes de ser excluído.');
    end else begin
      DM.QueryFuncionarios.Delete;
    end;
    DM.QueryFuncionarios.Open;
end;

// Mostrar frame para cadastrar a senha do funcionário
procedure TformCrudFunc.SenhaFunc;
var SenhaFuncionario: TframeCadSenhaFuncionario;
senhaFunci: String;
begin
    frameCadSenhaFuncionario := TframeCadSenhaFuncionario.Create(Self);
    frameCadSenhaFuncionario.Parent := Self;
    frameCadSenhaFuncionario.Align := alClient;
    frameCadSenhaFuncionario.Show;
    senhaFunci := frameCadSenhaFuncionario.senhaFuncionario;
    //senhaFunci := frameCadSenhaFuncionario.SenhaFunc;
end;

// ???Pesquisa???
procedure TformCrudFunc.iconePesquisaClick(Sender: TObject);
begin
    //DM.QueryFuncionarios
end;

// Consulta da API de CEP  (unitCEPConsultor)
procedure TformCrudFunc.leCEPExit(Sender: TObject);
begin
      unitCEPConsultor.ConsultaCEP(leCEP.Text, TCustomEdit(leEndereco), TCustomEdit(leBairro), TCustomEdit(leCidade), cbUF, RESTClient1, RESTRequest1, RESTResponse1);
end;

// Incluindo funcionário como Cliente
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
    ParamByName('SenhaHash').AsString := hash;

    ExecSQL;
    end;
end;

// Cadastrando funcionário no banco de dados
procedure TformCrudFunc.pnlCadastrarClick(Sender: TObject);
var hash, senhaFunci: String;
begin
    hash := THashSHA1.GetHashString(leCPF.Text);
    if (leNome.Text = '') or (leEmail.Text = '') or (leCPF.Text = '') then begin
        ShowMessage('Preencha os campos obrigatórios');
        Exit;
    end else begin

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
        ParamByName('Senha').AsString := hash;
        //SenhaFunc; //Senha só é recebida no frame/form de Cadastro de Senha de Funcionário

//          if senhaFunci = '' then begin
//          senhaFunci := 'senha1234';
//          end;

          if cbFuncao.Text = 'Administrador' then begin
            if MessageDlg('Tem certeza que deseja adicionar funcionário com a função de "Administrador"? Esse usuário terá acesso à todas as permissões de um administrador.',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin

            ExecSQL;

              if MessageDlg('Cadastro finalizado com sucesso! Deseja incluir o funcionário como cliente?',
              mtConfirmation, [mbYes, mbNo], 0) = mrYes then FunciClien(leEmail);
            end else begin
                ShowMessage('Funcionário não incluído. Aguarde o retorno à tela.');
                Sleep(4000);
                Close;
              end;
          end;
        end;
    end;
end;

end.
