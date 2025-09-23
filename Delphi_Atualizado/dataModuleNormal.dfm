object DataModule1: TDataModule1
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
  object QueryCadastro: TFDQuery
    Active = True
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM "Clientes";')
    Left = 112
    Top = 192
    object QueryCadastrocodigo_cliente: TIntegerField
      FieldName = 'codigo_cliente'
      Origin = 'codigo_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryCadastrohash_senha_cli: TStringField
      FieldName = 'hash_senha_cli'
      Origin = 'hash_senha_cli'
      Size = 255
    end
    object QueryCadastronome_cliente: TStringField
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 100
    end
    object QueryCadastrotelefone_cliente: TStringField
      FieldName = 'telefone_cliente'
      Origin = 'telefone_cliente'
      Size = 11
    end
    object QueryCadastroemail_cliente: TStringField
      FieldName = 'email_cliente'
      Origin = 'email_cliente'
      Size = 250
    end
    object QueryCadastrocep_cliente: TStringField
      FieldName = 'cep_cliente'
      Origin = 'cep_cliente'
      Size = 8
    end
    object QueryCadastroendereco_cliente: TStringField
      FieldName = 'endereco_cliente'
      Origin = 'endereco_cliente'
      Size = 60
    end
    object QueryCadastronum_endereco: TStringField
      FieldName = 'num_endereco'
      Origin = 'num_endereco'
      Size = 7
    end
    object QueryCadastrobairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object QueryCadastrocidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object QueryCadastrouf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object QueryCadastroveiculo: TStringField
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
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 
      'C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualiz' +
      'ado\lib-FD\libpq.dll'
    OnDriverCreated = FDPhysPgDriverLink1DriverCreated
    Left = 240
    Top = 104
  end
end
