unit unitSessao;

interface
type
    TDadosLogin = record
      emailUsuario: String;
      tipoUsuario: String;
    end;
//    TDadosCliente = record
//      codigoCli: Integer;
//      nomeCli, Contato, Endereco, CEP: String
//    end;

procedure lerDadosLogin(var emailUsuario, tipoUsuario: String);
procedure dadosCliente(var codigoCli: Integer; var nomeCli, Contato, Endereco, CEP: String);
procedure dadosFuncionario(codigoFunc: Integer; nomeFunc, funcao: String);

var dadosLogin: TDadosLogin;

implementation

uses dataModuleNormal, IniFiles, SysUtils;

var  iniArq: TIniFile;

// Faz a leitura do arquivo ini com os dados de login
//reutilizável
procedure lerDadosLogin(var emailUsuario, tipoUsuario: String);
begin
    iniArq := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'login.ini');
    try
      dadosLogin.emailUsuario := iniArq.ReadString('Login', 'Usuario', '');
      dadosLogin.tipoUsuario := iniArq.ReadString('Login', 'TipoUsuario', '');
    finally
      iniArq.Free;
    end;
end;

procedure dadosCliente(var codigoCli: Integer; var nomeCli, Contato, Endereco, CEP: String);
//var emailUsuario: String;
begin
    //DM.QueryClientes.Open;
    with DM.QueryClientes do begin
      SQL.Text := 'SELECT * FROM "Clientes" WHERE email_cliente = :Email_Cli';
      ParamByName('Email_Cli').AsString := dadosLogin.emailUsuario;
      if not DM.QueryClientes.IsEmpty then begin
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
