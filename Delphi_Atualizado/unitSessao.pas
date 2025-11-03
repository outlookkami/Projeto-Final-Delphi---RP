unit unitSessao;

interface
type
    TDadosLogin = record
      emailUsuario: String;
      tipoUsuario: String;
      codigoUsuario: String;
    end;
//    TDadosCliente = record
//      codigoCli: Integer;
//      nomeCli, Contato, Endereco, CEP: String
//    end;

var dadosLogin: TDadosLogin;

procedure lerDadosLogin;
procedure dadosCliente(var codigoCli: Integer; var nomeCli, Contato, Endereco, CEP: String);
procedure dadosFuncionario(codigoFunc: Integer; nomeFunc, funcao: String);

implementation

uses dataModuleNormal, IniFiles, SysUtils, Vcl.Dialogs;

// Faz a leitura do arquivo ini com os dados de login
//reutilizável
procedure lerDadosLogin;//(var emailUsuario, tipoUsuario: String);
var iniArq: TIniFile;
    caminhoIni: String;
begin
    caminhoIni := ExtractFilePath(ParamStr(0)) + 'login.ini';
    iniArq := TIniFile.Create(caminhoIni);
    try
      dadosLogin.emailUsuario := iniArq.ReadString('Login', 'Usuario', '');
      dadosLogin.tipoUsuario := iniArq.ReadString('Login', 'TipoUsuario', '');
      dadosLogin.codigoUsuario := iniArq.ReadString('Login', 'CodigoUsuario', '');
    finally
      iniArq.Free;
    end;
    // if dadosLogin.tipoUsuario = Cliente
    // criar outro ini que grave as informações do cliente
    // nos outros forms pegar as informações do cliente diretamente do arquivo ini com os dados de cliente
end;

procedure dadosCliente(var codigoCli: Integer; var nomeCli, Contato, Endereco, CEP: String);
begin
    //lerDadosLogin(dadosLogin.emailUsuario, dadosLogin.tipoUsuario);
    //DM.QueryClientes.Open;

    with DM.QueryClientes do begin
      Close;
      SQL.Text := 'SELECT email_cliente, codigo_cliente, nome_cliente, telefone_cliente, endereco_cliente, cep_cliente FROM "Clientes" WHERE email_cliente = :Email_Cli';
      ParamByName('Email_Cli').AsString := dadosLogin.emailUsuario;
      Open;
      if not IsEmpty then begin
      codigoCli := FieldByName('codigo_cliente').AsInteger;
      nomeCli := FieldByName('nome_cliente').AsString;
      Contato := FieldByName('telefone_cliente').AsString;
      Endereco := FieldByName('endereco_cliente').AsString;
      CEP := FieldByName('cep_cliente').AsString;
      end;
    end;
end;

procedure dadosFuncionario(codigoFunc: Integer; nomeFunc, Funcao: String);
begin
    with DM.QueryFuncionarios do begin
      DM.QueryFuncionarios.SQL.Text := 'SELECT * FROM "Funcionarios" WHERE email_cliente = :Email_Func';
      ParamByName('Email_Func').AsString := dadosLogin.emailUsuario;
      codigoFunc := FieldByName('codigo_funcionario').AsInteger;
      nomeFunc := FieldByName('nome_funcionario').AsString;
      Funcao := FieldByName('funcao').AsString;
    end;
end;

////TipoUsuario := DM.QueryUsuarios.FieldByName('tipo_usuario').AsString
//procedure dadosUsuario(var tipoUsuario, emailUsuario: String);
//begin
////    dadosLogin(emailUsuario, tipoUsuario);
////  tipoUsuario := DM.QueryUsuarios.FieldByName('tipo_usuario').AsString;
////  emailUsuario :=  DM.QueryUsuarios.FieldByName('email_usuario').AsString;
//
//    if dadosLogin.tipoUsuario = 'Cliente' then begin
//      dadosCliente(codigoCli, nomeCli, Contato, Endereco, CEP);
//
//    end else if (tipoUsuario = 'Funcionario') or (tipoUsuario = 'Administrador') then begin
//      dadosFuncionario;
//    end;
//end;
end.
