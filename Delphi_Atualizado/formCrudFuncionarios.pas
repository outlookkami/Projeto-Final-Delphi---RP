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
    leNome: TLabeledEdit;
    bitbtnInativFunc: TBitBtn;
    bitbtnAtualizar: TBitBtn;
    bitbtnAtivarFunc: TBitBtn;
    procedure btnExcluFuncClick(Sender: TObject);
    procedure btnEditFuncClick(Sender: TObject);
    procedure btnIncluirFuncClick(Sender: TObject);
    procedure btnInativFuncClick(Sender: TObject);

    procedure leCEPExit(Sender: TObject);
    procedure SenhaFunc;
    procedure pnlCadastrarClick(Sender: TObject);
    procedure FunciClien(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure pnlSalvarClick(Sender: TObject);
    procedure LimparCampos;
    procedure bitbtnInativFuncClick(Sender: TObject);
    procedure bitbtnAtualizarClick(Sender: TObject);
    procedure bitbtnAtivarFuncClick(Sender: TObject);
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

var codigoFuncionario: String;


procedure TformCrudFunc.DBGrid1CellClick(Column: TColumn);
// Mostrar dados nos campos do formulário lateral
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


procedure TformCrudFunc.LimparCampos;
// Limpar campos do formulário lateral
begin
    leNome.Clear;
    leTelefone.Clear;
    leEmail.Clear;
    leCEP.Clear;
    leEndereco.Clear;
    leBairro.Clear;
    leNumero.Clear;
    leCidade.Clear;
    cbUF.Clear;
    cbFuncao.ItemIndex:= -1;
    leCPF.Clear;
    leRG.Clear;
end;


procedure TformCrudFunc.bitbtnAtivarFuncClick(Sender: TObject);
begin
    DM.QueryFuncionarios.Open;
    DM.QueryFuncionarios.SQL.Text := 'UPDATE "Funcionarios" SET ativo_in = :boolAtivo WHERE codigo_funcionario = :codFunc';
    DM.QueryFuncionarios.ParamByName('boolAtivo').AsBoolean := True;
    DM.QueryFuncionarios.ParamByName('codFunc').AsInteger := StrToInt(codigoFuncionario);
    DM.QueryFuncionarios.ExecSQL;
    DM.QueryFuncionarios.Post;
    DM.QueryFuncionarios.Open;
    DM.QueryFuncionarios.Close;
end;

procedure TformCrudFunc.bitbtnAtualizarClick(Sender: TObject);
// Atualizar DBGrid
begin
    with DM.QueryFuncionarios do begin
      Open;
      Update;
      Post;
      Open;
      //SQL.Text := 'SELECT codigo_funcionario, nome_funcionario, telefone_funcionario, email_funcionario, cep_funcionario, endereco_funcionario, num_endereco, bairro, cidade, uf, funcao, cpf_funcionario, rg_funcionario, ativo_in ORDER BY nome_funcionario';
    end;
end;


procedure TformCrudFunc.btnIncluirFuncClick(Sender: TObject);
// Incluir funcionário
begin
    pnlSalvar.Visible := False;
    pnlCadastrar.Visible := True;
    DM.QueryFuncionarios.Close;

    DM.QueryFuncionarios.Open;
    LimparCampos;
    if not (DM.QueryFuncionarios.State in [dsInsert, dsEdit]) then begin
      DM.QueryFuncionarios.Insert;
    end;
//      DM.QueryFuncionarios.Close;
//      DM.QueryFuncionarios.Open;
end;


procedure TformCrudFunc.bitbtnInativFuncClick(Sender: TObject);
// Inativar funcionário
begin
codigoFuncionario :=  DBGrid1.Fields[0].Value;
    DM.QueryFuncionarios.Open;
    if (DM.QueryFuncionarios.State in [dsInsert, dsEdit]) then
    DM.QueryFuncionarios.SQL.Text := 'UPDATE "Funcionarios" SET ativo_in = false WHERE codigo_funcionario = :codFunc';
    //DM.QueryFuncionarios.ParamByName('boolAtivo').AsBoolean := False;

    DM.QueryFuncionarios.ParamByName('codFunc').AsInteger := StrToInt(codigoFuncionario);

    DM.QueryFuncionarios.ExecSQL;
    DM.QueryFuncionarios.Post;
    DM.QueryFuncionarios.Open;
end;


procedure TformCrudFunc.btnEditFuncClick(Sender: TObject);
//Editar Funcionário
begin
    pnlCadastrar.Visible := False;
    pnlSalvar.Visible := True;

//    if (DM.QueryFuncionarios.FieldByName('ativo_in') = False) begin
//        if MessageDlg('Funcionário deve estar ativo para realizar edição! Deseja tornar o funcionário ativo?',
//              mtConfirmation, [mbYes, mbNo], 0) = mrYes then DM.QueryFuncionarios.SQL.Text := 'UPDATE "Funcionarios" SET ativo_in = :boolAtivo WHERE codigo_funcionario = :codFunc';
//              ParamByName('boolAtivo').AsBoolean := False;
//              ParamByName('codFunc').AsInteger := StrToInt(codigoFuncionario);
//      end;

//    with DM.QueryFuncionarios do begin
//    Open;
//
//
//
//
//    ExecSQL;
//    end;
    DM.QueryFuncionarios.Open;
    if (DM.QueryFuncionarios.State in [dsInsert, dsEdit]) then
    DM.QueryFuncionarios.Edit;
    DM.QueryFuncionarios.Close;
end;


procedure TformCrudFunc.pnlSalvarClick(Sender: TObject);
// Salvar
begin
    if not (DM.QueryFuncionarios.State in [dsInsert, dsEdit]) then
    DM.QueryFuncionarios.Open;
    DM.QueryFuncionarios.Post;
    DM.QueryFuncionarios.Close;
    DM.QueryFuncionarios.Open;
end;


procedure TformCrudFunc.btnInativFuncClick(Sender: TObject);
// Inativar funcionário
begin
    DM.QueryFuncionarios.SQL.Text := 'UPDATE "Funcionarios" SET ativo_in = :boolAtivo WHERE codigo_funcionario = :codFunc';
    DM.QueryFuncionarios.ParamByName('boolAtivo').AsBoolean := False;
    DM.QueryFuncionarios.ParamByName('codFunc').AsInteger := StrToInt(codigoFuncionario);
    DM.QueryFuncionarios.ExecSQL;
end;


procedure TformCrudFunc.btnExcluFuncClick(Sender: TObject);
// Excluir funcionário
begin
    if (DM.QueryFuncionarios.FieldByName('ativo_in').AsBoolean = True) then begin
      ShowMessage('O funcionário deve estar inativo antes de ser excluído.');
    end else begin
     if MessageDlg('Tem certeza de que deseja excluir o funcionário? Essa ação não poderá ser revertida.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then DM.QueryFuncionarios.Delete;;
    end;
    DM.QueryFuncionarios.Open;
end;


procedure TformCrudFunc.SenhaFunc;
// Mostrar frame para cadastrar a senha do funcionário
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


procedure TformCrudFunc.leCEPExit(Sender: TObject);
// Consulta da API de CEP  (unitCEPConsultor)
begin
      unitCEPConsultor.ConsultaCEP(leCEP.Text, TCustomEdit(leEndereco), TCustomEdit(leBairro), TCustomEdit(leCidade), cbUF, RESTClient1, RESTRequest1, RESTResponse1);
end;


procedure TformCrudFunc.FunciClien(Sender: TObject);
// Incluindo funcionário como Cliente
var hash: String;
begin
    hash := THashSHA1.GetHashString(leCPF.Text);

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


procedure TformCrudFunc.pnlCadastrarClick(Sender: TObject);
// Cadastrando funcionário no banco de dados
var hash, senhaFunci: String;
begin
    hash := THashSHA1.GetHashString(leCPF.Text);
    if (leNome.Text = '') or (leEmail.Text = '') or (leCPF.Text = '') then begin
        ShowMessage('Preencha os campos obrigatórios');
        Exit;
    end else begin

        with DM.QueryFuncionarios do begin
        DM.QueryFuncionarios.Close;
        DM.QueryFuncionarios.Open;
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
        // Senha inicial será o CPF do funcionário

          if cbFuncao.Text = 'Administrador' then begin
            if MessageDlg('Tem certeza que deseja adicionar funcionário com a função de "Administrador"? Esse usuário terá acesso à todas as permissões de um administrador.',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin

            ExecSQL;

              if MessageDlg('Cadastro finalizado com sucesso! Deseja incluir o funcionário como cliente?',
              mtConfirmation, [mbYes, mbNo], 0) = mrYes then FunciClien(leEmail);
            end else begin
                ShowMessage('Funcionário não registrado como cliente. Aguarde o retorno à tela.');
                Sleep(4000);
                Close;
              end;
          end;
          ExecSQL;
          DM.QueryFuncionarios.Close;
          DM.QueryFuncionarios.Open;
//          DM.QueryFuncionarios.Insert;
        end;
    end;
end;

end.
