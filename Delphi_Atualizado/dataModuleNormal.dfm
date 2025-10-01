object DM: TDM
  Height = 480
  Width = 640
  object ConexaoBanco: TFDConnection
    Params.Strings = (
      'User_Name=postgres'
      'Database=ProjetoDelphiJLA'
      'Password=root'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 112
    Top = 104
  end
  object QueryClientes: TFDQuery
    Active = True
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM "Clientes";')
    Left = 112
    Top = 192
    object QueryClientescodigo_cliente: TIntegerField
      FieldName = 'codigo_cliente'
      Origin = 'codigo_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryClienteshash_senha_cli: TStringField
      FieldName = 'hash_senha_cli'
      Origin = 'hash_senha_cli'
      Size = 255
    end
    object QueryClientesnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 100
    end
    object QueryClientestelefone_cliente: TStringField
      FieldName = 'telefone_cliente'
      Origin = 'telefone_cliente'
      Size = 11
    end
    object QueryClientesemail_cliente: TStringField
      FieldName = 'email_cliente'
      Origin = 'email_cliente'
      Size = 250
    end
    object QueryClientescep_cliente: TStringField
      FieldName = 'cep_cliente'
      Origin = 'cep_cliente'
      Size = 8
    end
    object QueryClientesendereco_cliente: TStringField
      FieldName = 'endereco_cliente'
      Origin = 'endereco_cliente'
      Size = 60
    end
    object QueryClientesnum_endereco: TStringField
      FieldName = 'num_endereco'
      Origin = 'num_endereco'
      Size = 7
    end
    object QueryClientesbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object QueryClientescidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object QueryClientesuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object QueryClientesveiculo: TStringField
      FieldName = 'veiculo'
      Origin = 'veiculo'
      Size = 7
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Console'
    Left = 392
    Top = 104
  end
  object FDPhysPgDriverLink2: TFDPhysPgDriverLink
    VendorLib = 
      'C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualiz' +
      'ado\BancoDeDados\lib\libpq.dll'
    Left = 248
    Top = 104
  end
  object QueryFuncionarios: TFDQuery
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM "Funcionarios";')
    Left = 232
    Top = 192
    object QueryFuncionarioscodigo_funcionario: TIntegerField
      FieldName = 'codigo_funcionario'
      Origin = 'codigo_funcionario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryFuncionarioshash_senha_func: TStringField
      FieldName = 'hash_senha_func'
      Origin = 'hash_senha_func'
      Size = 255
    end
    object QueryFuncionariosnome_funcionario: TStringField
      FieldName = 'nome_funcionario'
      Origin = 'nome_funcionario'
      Size = 100
    end
    object QueryFuncionariostelefone_funcionario: TStringField
      FieldName = 'telefone_funcionario'
      Origin = 'telefone_funcionario'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 11
    end
    object QueryFuncionariosemail_funcionario: TStringField
      FieldName = 'email_funcionario'
      Origin = 'email_funcionario'
      Size = 255
    end
    object QueryFuncionarioscep_funcionario: TStringField
      FieldName = 'cep_funcionario'
      Origin = 'cep_funcionario'
      EditMask = '00000\-999;1;_'
      Size = 8
    end
    object QueryFuncionariosendereco_funcionario: TStringField
      FieldName = 'endereco_funcionario'
      Origin = 'endereco_funcionario'
      Size = 60
    end
    object QueryFuncionariosnum_endereco: TStringField
      FieldName = 'num_endereco'
      Origin = 'num_endereco'
      Size = 7
    end
    object QueryFuncionariosbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object QueryFuncionarioscidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object QueryFuncionariosuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object QueryFuncionariosfuncao: TStringField
      FieldName = 'funcao'
      Origin = 'funcao'
      Size = 8190
    end
    object QueryFuncionarioscpf_funcionario: TStringField
      FieldName = 'cpf_funcionario'
      Origin = 'cpf_funcionario'
      Size = 11
    end
    object QueryFuncionariosrg_funcionario: TStringField
      FieldName = 'rg_funcionario'
      Origin = 'rg_funcionario'
      Size = 9
    end
  end
  object Perfil: TFDQuery
    Connection = ConexaoBanco
    Left = 56
    Top = 352
  end
  object QueryUsuarios: TFDQuery
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM Usuarios;')
    Left = 352
    Top = 192
    object QueryUsuariosid_usuario: TIntegerField
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryUsuariostipo_usuario: TStringField
      FieldName = 'tipo_usuario'
      Origin = 'tipo_usuario'
      Size = 15
    end
    object QueryUsuariosnome_usuario: TStringField
      FieldName = 'nome_usuario'
      Origin = 'nome_usuario'
      Size = 255
    end
    object QueryUsuariossenha_hash: TStringField
      FieldName = 'senha_hash'
      Origin = 'senha_hash'
      Size = 255
    end
  end
end
