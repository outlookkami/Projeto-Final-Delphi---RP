unit formLoginJLA;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, System.Hash, Vcl.ExtCtrls, Vcl.Imaging.jpeg, System.ImageList,
  Vcl.ImgList, System.UITypes, Vcl.Imaging.pngimage, Vcl.Skia, Vcl.DBCtrls,
  DataModuleNormal, Data.DB, FireDAC.Stan.Param;



type
  TformLogin = class(TForm)
    pnlLogin: TPanel;
    pnlBaseLogin: TPanel;
    pnlLayoutLogin: TPanel;
    GridPanelLogin: TGridPanel;
    Label3: TLabel;
    Label4: TLabel;
    GridPanel3: TGridPanel;
    cadeadoSenha: TImage;
    GridPanel4: TGridPanel;
    lblVazio001: TLabel;
    lblVazio002: TLabel;
    lblVazio003: TLabel;
    lblVazio004: TLabel;
    lblVazio005: TLabel;
    lblVazio006: TLabel;
    imgFechar: TImage;
    Image1: TImage;
    lblAvisoSenha: TLabel;
    DSLogin: TDataSource;
    leSenhaLogin: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    GridPanel2: TGridPanel;
    lblVazio: TLabel;
    lblAvisoUsuario: TLabel;
    leUsuario: TLabeledEdit;
    lblEsqueceuSenha: TLabel;
    pnlEntrar: TPanel;
    lblCadastreAqui: TLabel;
    BalloonHint1: TBalloonHint;
    procedure cadeadoSenhaClick(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure lblCadastreAquiClick(Sender: TObject);
    procedure lblEsqueceuSenhaClick(Sender: TObject);
    procedure HideShowSenha;
    procedure pnlEntrarClick(Sender: TObject);
    procedure registDadosLogin;
    procedure registDadosCliente;
  private
    { Private declarations }

  public
    { Public declarations }
    //procedure pnlEntrarClick(Sender: TObject);
  end;

var
  formLogin: TformLogin;

implementation

{$R *.dfm}

uses  formTrocarSenha,
      frameTrocarSenhaUsuario,
      formCadastroClientes,
      formPáginaDeInícioClientes,
      formPáginaDeInícioFunc,
      formPáginaDeInícioADM,
      IniFiles;

var iniArq, iniCli: TIniFile;

// Registrando dados do cliente caso o usuário logado seja um cliente
procedure TformLogin.registDadosCliente;
var codigoCli: Integer;
    nomeCli, telefoneCli, emailCli, cepCli, enderecoCli, numEnd, bairro, cidade,
    uf, veiculo, codCli: String;
begin
    //DM.QueryClientes.SQL.Text := 'SELECT * FROM "Clientes" WHERE email_cliente = :Email';
    //DM.QueryClientes.ParamByName('Email').AsString := leUsuario.Text;
    if DM.QueryClientes.IsEmpty then
      exit;

    codigoCli := DM.QueryClientes.FieldByName('codigo_cliente').AsInteger;
    nomeCli := DM.QueryClientes.FieldByName('nome_cliente').AsString;
    telefoneCli := DM.QueryClientes.FieldByName('telefone_cliente').AsString;
    emailCli := DM.QueryClientes.FieldByName('email_cliente').AsString;
    cepCli := DM.QueryClientes.FieldByName('cep_cliente').AsString;
    enderecoCli := DM.QueryClientes.FieldByName('endereco_cliente').AsString;
    numEnd := DM.QueryClientes.FieldByName('num_endereco').AsString;
    bairro := DM.QueryClientes.FieldByName('bairro').AsString;
    cidade := DM.QueryClientes.FieldByName('cidade').AsString;
    uf := DM.QueryClientes.FieldByName('uf').AsString;
    veiculo := DM.QueryClientes.FieldByName('veiculo').AsString;
    codCli := IntToStr(codigoCli);


    iniCli := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'dadoscliente.ini');
    try
      iniCli.WriteString('Cliente', 'CodigoCli', codCli);
      iniCli.WriteString('Cliente', 'NomeCli', nomeCli);
      iniCli.WriteString('Cliente', 'TelefoneCli', telefoneCli);
      iniCli.WriteString('Cliente', 'EmailCli', emailCli);
      iniCli.WriteString('Cliente', 'CEPCli', cepCli);
      iniCli.WriteString('Cliente', 'EnderecoCli', enderecoCli);
      iniCli.WriteString('Cliente', 'NumEndereco', numEnd);
      iniCli.WriteString('Cliente', 'Bairro', bairro);
      iniCli.WriteString('Cliente', 'Cidade', cidade);
      iniCli.WriteString('Cliente', 'UF', uf);
      iniCli.WriteString('Cliente', 'Veiculo', veiculo);
////      if tipoUsuario = 'Cliente' then begin
////          DM.QueryClientes.SQL.Text := 'SELECT codigo_cliente FROM "Clientes" WHERE email_cliente = :Email';
////          DM.QueryClientes.ParamByName('Email').AsString := leUsuario.Text;
////          codigoCliente := DM.QueryClientes.FieldByName('codigo_cliente').AsInteger;
////          iniArq.WriteString('Login', 'Codigo', IntToStr(codigoCliente));
////          end;
////
////      end else begin
    finally
       iniCli.Free;
    end;
end;


// Registra os dados do login no arquivo ini
procedure TformLogin.registDadosLogin;
var tipoUsuario, emailUsuario, codigoUsuario: String;
    codigoCliente: Integer;
    codCli:String;
    status: String;
begin
    emailUsuario := Trim(leUsuario.Text);
    tipoUsuario := DM.QueryUsuarios.FieldByName('tipo_usuario').AsString;
    //emailUsuario := DM.QueryUsuarios.FieldByName('nome_usuario').AsString;
    codigoUsuario := DM.QueryUsuarios.FieldByName('id_usuario').AsString;
    status := DM.QueryUsuarios.FieldByName('ativo_in').AsString;

    //codigoCliente := DM.QueryClientes.FieldByName('codigo_cliente').AsString;

    iniArq := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'login.ini');
    try
      iniArq.WriteString('Login', 'Usuario', leUsuario.Text);
      iniArq.WriteString('Login', 'TipoUsuario', tipoUsuario);
      iniArq.WriteString('Login', 'CodigoUsuario', codigoUsuario);
      iniArq.WriteString('Login', 'Status', status);
      if tipoUsuario = 'Cliente' then begin
        DM.QueryClientes.Close;
        DM.QueryClientes.SQL.Text := 'SELECT * FROM "Clientes" WHERE email_cliente = :Email';
        DM.QueryClientes.ParamByName('Email').AsString := emailUsuario;
        DM.QueryClientes.Open;
      end;
       if not DM.QueryClientes.IsEmpty then begin
        registDadosCliente;
       end;
//       if tipoUsuario = 'Cliente' then begin
//          DM.QueryClientes.SQL.Text := 'SELECT codigo_cliente FROM "Clientes" WHERE email_cliente = :Email';
//          DM.QueryClientes.ParamByName('Email').AsString := leUsuario.Text;
//          codigoCliente := DM.QueryClientes.FieldByName('codigo_cliente').AsInteger;
//          codCli := IntToStr(codigoCliente);
//          iniArq.WriteString('Cliente', 'CodigoCliente', codCli);
//          end;
    finally
       iniArq.Free;
    end;

end;

// Procedures para o funcionamento do botão de mostrar senha
procedure TformLogin.HideShowSenha;
begin
    if leSenhaLogin.PasswordChar = '*' then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leSenhaLogin.PasswordChar := #0;
    end else if leSenhaLogin.PasswordChar = #0 then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    leSenhaLogin.PasswordChar := '*';
    end;
end;

procedure TformLogin.cadeadoSenhaClick(Sender: TObject);
begin
     HideShowSenha;
end;

// Botão de fechar no canto superior direito da tela
procedure TformLogin.imgFecharClick(Sender: TObject);
begin
    Close;
end;

// Redireciona para a página de cadastro
procedure TformLogin.lblCadastreAquiClick(Sender: TObject);
begin
//    formCadastroDeClientes.Create(Self);
//    formCadastroDeClientes.Parent := Self;
//    formCadastroDeClientes.Align := alClient;
    formCadastroDeClientes.Show;
end;

// Redireciona para a página de trocar senha
procedure TformLogin.lblEsqueceuSenhaClick(Sender: TObject);
var formTrocaSenha: TformTrocaSenha;
begin
    formTrocaSenha := TformTrocaSenha.Create(Self);
    try
      formTrocaSenha.loginTrocaSenha := leUsuario.Text;
      formTrocaSenha.ShowModal;
    finally
      formTrocaSenha.Free;
    end;
end;


// Verificações do Login
procedure TformLogin.pnlEntrarClick(Sender: TObject);
 var
 tipoUsuario: String;
 funcionarioAdm, status: Boolean;
begin
  if (leSenhaLogin.Text = '') or (Trim(leUsuario.Text) = '') then begin
    ShowMessage('Preencha todos os campos.');
  end;

  if leSenhaLogin.Text = '' then begin
      lblAvisoSenha.Caption := 'Informe sua senha';
      leSenhaLogin.SetFocus;
  end else begin
      lblAvisoSenha.Caption := '';
  end;

  if leUsuario.Text = '' then begin
      lblAvisoUsuario.Caption := 'Informe seu usuário';
      leUsuario.SetFocus;
  end else begin
        lblAvisoUsuario.Caption := '';
  end;

  begin
     if (DM.QueryFuncionarios.FieldByName('funcao').AsString = 'Administrador') then begin
       funcionarioAdm := true;
     end;

     DM.QueryUsuarios.SQL.Text := 'SELECT * FROM Usuarios WHERE nome_usuario = :usuario AND senha_hash = :senha';

     DM.QueryUsuarios.ParamByName('usuario').AsString := Trim(leUsuario.Text);
     DM.QueryUsuarios.ParamByName('senha').AsString := THashSHA1.GetHashString(leSenhaLogin.Text);

     DM.QueryUsuarios.Open;

      if not DM.QueryUsuarios.IsEmpty then begin
        tipoUsuario := DM.QueryUsuarios.FieldByName('tipo_usuario').AsString;
        status := DM.QueryUsuarios.FieldByName('ativo_in').AsBoolean;
        registDadosLogin;
        Self.Hide;
        if (status = False) then begin
          ShowMessage('Usuário está inativo, entre em contato com um administrador para retomar o acesso.');
          Exit;
        end;
          if (tipoUsuario = 'Cliente') then begin
          Application.CreateForm(TformPáginaInicialCli, formPáginaInicialCli);
          formPáginaInicialCli.Show;

            end else if (tipoUsuario = 'Administrador') or (funcionarioAdm = true) then begin
                Application.CreateForm(TformPáginaInicialADM, formPáginaInicialADM);
                formPáginaInicialADM.Show;
              end else if (tipoUsuario = 'Funcionario') and (funcionarioAdm = False) then begin
             Application.CreateForm(TformPáginaInicialFunc, formPáginaInicialFunc);
             formPáginaInicialFunc.Show;
                end;

      end else begin
      ShowMessage('Usuário ou senha incorretos. Tente novamente.');
        end;
  end;
end;
end.
