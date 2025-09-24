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
    Active = True
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM "Funcionarios";')
    Left = 232
    Top = 192
  end
  object QueryLogin: TFDQuery
    Active = True
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM Usuarios;')
    Left = 336
    Top = 192
  end
  object Perfil: TFDQuery
    Connection = ConexaoBanco
    Left = 168
    Top = 256
  end
end
