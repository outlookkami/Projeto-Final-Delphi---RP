unit unitSessao;

interface
type
    TDadosLogin = record
      emailUsuario: String;
      tipoUsuario: String;
      codigoUsuario: String;
    end;
    TDadosCliente = record
      codigoCli: Integer;
      nomeCli, contatoCli, emailCli, cepCli, enderecoCli, numEnderecoCli, bairroCli, cidadeCli, ufCli, veiculoCli: String;
    end;

var dadosLogin: TDadosLogin;
var dadosCliente: TDadosCliente;

procedure lerDadosLogin;
procedure lerDadosCliente;
//procedure dadosCliente(var codigoCli: Integer; var nomeCli, ContatoCli, EnderecoCli, CEPCli: String);
procedure dadosFuncionario(codigoFunc: Integer; nomeFunc, funcao: String);

implementation

uses dataModuleNormal, IniFiles, SysUtils, Vcl.Dialogs;

var iniCli, iniArq: TIniFile;

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
//    if dadosLogin.tipoUsuario = Cliente
end;

procedure lerDadosCliente;
var iniCli: TIniFile;
    caminhoIni: String;
    codigoCliStr: String;
begin
    caminhoIni := ExtractFilePath(ParamStr(0)) + 'dadoscliente.ini';
    iniCli := TIniFile.Create(caminhoIni);

    try
    codigoCliStr := iniCli.ReadString('Cliente', 'CodigoCli', '');
    dadosCliente.codigoCli := StrToInt(codigoCliStr);
      //dadosCliente.codigoCli := iniCli.ReadString('Cliente', 'CodigoCli', '');
      dadosCliente.nomeCli := iniCli.ReadString('Cliente', 'NomeCli', '');
      dadosCliente.contatoCli := iniCli.ReadString('Cliente', 'TelefoneCli', '');
      dadosCliente.emailCli := iniCli.ReadString('Cliente', 'EmailCli', '');
      dadosCliente.cepCli := iniCli.ReadString('Cliente', 'CEPCli', '');
      dadosCliente.enderecoCli := iniCli.ReadString('Cliente', 'EnderecoCli', '');
      dadosCliente.numEnderecoCli := iniCli.ReadString('Cliente', 'NumEndereco', '');
      dadosCliente.bairroCli := iniCli.ReadString('Cliente', 'Bairro', '');
      dadosCliente.cidadeCli := iniCli.ReadString('Cliente', 'Cidade', '');
      dadosCliente.ufCli := iniCli.ReadString('Cliente', 'UF', '');
      dadosCliente.veiculoCli := iniCli.ReadString('Cliente', 'Veiculo', '');

    finally
      iniCli.Free;
    end;

end;

//procedure registDadosCliente;
//var iniCli: TIniFile;
//    codigoCli: Integer;
//    nomeCli, telefoneCli, emailCli, cepCli, enderecoCli, numEnd, bairro, cidade,
//    uf, veiculo, codCli: String;
//begin
//    if dadosLogin.tipoUsuario = 'Cliente' then begin
//
//    DM.QueryClientes.SQL.Text := 'SELECT * FROM "Clientes" WHERE email_cliente = :Email';
//    DM.QueryClientes.ParamByName('Email').AsString := dadosLogin.emailUsuario;
//    codigoCli := DM.QueryClientes.FieldByName('codigo_cliente').AsInteger;
//    nomeCli := DM.QueryClientes.FieldByName('nome_cliente').AsString;
//    telefoneCli := DM.QueryClientes.FieldByName('telefone_cliente').AsString;
//    emailCli := DM.QueryClientes.FieldByName('email_cliente').AsString;
//    cepCli := DM.QueryClientes.FieldByName('cep_cliente').AsString;
//    enderecoCli := DM.QueryClientes.FieldByName('endereco_cliente').AsString;
//    numEnd := DM.QueryClientes.FieldByName('numeroEndereco').AsString;
//    bairro := DM.QueryClientes.FieldByName('bairro').AsString;
//    cidade := DM.QueryClientes.FieldByName('cidade').AsString;
//    uf := DM.QueryClientes.FieldByName('uf').AsString;
//    veiculo := DM.QueryClientes.FieldByName('veiculo').AsString;
//    codCli := IntToStr(codigoCli);
//
//
//    iniCli := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'dadoscliente.ini');
//    try
//      iniCli.WriteString('Cliente', 'CodigoCli', codCli);
//      iniCli.WriteString('Cliente', 'NomeCli', nomeCli);
//      iniCli.WriteString('Cliente', 'TelefoneCli', telefoneCli);
//      iniCli.WriteString('Cliente', 'EmailCli', emailCli);
//      iniCli.WriteString('Cliente', 'CEPCli', cepCli);
//      iniCli.WriteString('Cliente', 'EnderecoCli', enderecoCli);
//      iniCli.WriteString('Cliente', 'NumEndereco', numEnd);
//      iniCli.WriteString('Cliente', 'Bairro', bairro);
//      iniCli.WriteString('Cliente', 'Cidade', cidade);
//      iniCli.WriteString('Cliente', 'UF', uf);
//      iniCli.WriteString('Cliente', 'Veículo', veiculo);
//////      if tipoUsuario = 'Cliente' then begin
//////          DM.QueryClientes.SQL.Text := 'SELECT codigo_cliente FROM "Clientes" WHERE email_cliente = :Email';
//////          DM.QueryClientes.ParamByName('Email').AsString := leUsuario.Text;
//////          codigoCliente := DM.QueryClientes.FieldByName('codigo_cliente').AsInteger;
//////          iniArq.WriteString('Login', 'Codigo', IntToStr(codigoCliente));
//////          end;
//////
//////      end else begin
//    finally
//       iniCli.Free;
//    end;
//end;

    // criar outro ini que grave as informações do cliente
    // nos outros forms pegar as informações do cliente diretamente do arquivo ini com os dados de cliente
//end;

//procedure dadosCliente(var codigoCli: Integer; var nomeCli, Contato, Endereco, CEP: String);
//begin
//    //lerDadosLogin(dadosLogin.emailUsuario, dadosLogin.tipoUsuario);
//    //DM.QueryClientes.Open;
//
//    with DM.QueryClientes do begin
//      Close;
//      SQL.Text := 'SELECT email_cliente, codigo_cliente, nome_cliente, telefone_cliente, endereco_cliente, cep_cliente FROM "Clientes" WHERE email_cliente = :Email_Cli';
//      ParamByName('Email_Cli').AsString := dadosLogin.emailUsuario;
//      Open;
//      if not IsEmpty then begin
//      codigoCli := FieldByName('codigo_cliente').AsInteger;
//      nomeCli := FieldByName('nome_cliente').AsString;
//      Contato := FieldByName('telefone_cliente').AsString;
//      Endereco := FieldByName('endereco_cliente').AsString;
//      CEP := FieldByName('cep_cliente').AsString;
//      end;
//    end;
//end;

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
