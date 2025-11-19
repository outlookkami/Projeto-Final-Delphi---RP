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
    object QueryClientescliente_data_criacao: TSQLTimeStampField
      FieldName = 'cliente_data_criacao'
      Origin = 'cliente_data_criacao'
      ProviderFlags = [pfInUpdate]
    end
    object QueryClientesativo_in: TBooleanField
      FieldName = 'ativo_in'
      Origin = 'ativo_in'
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
      EditMask = '(00)00000-0000;0;_'
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
      EditMask = '00000-000;0;_'
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
      EditMask = '000.000.000-00;0;_'
      Size = 11
    end
    object QueryFuncionariosrg_funcionario: TStringField
      FieldName = 'rg_funcionario'
      Origin = 'rg_funcionario'
      EditMask = '00.000.000-0;0;_'
      Size = 9
    end
    object QueryFuncionariosativo_in: TBooleanField
      FieldName = 'ativo_in'
      Origin = 'ativo_in'
    end
    object QueryFuncionariosfuncionario_data_criacao: TSQLTimeStampField
      FieldName = 'funcionario_data_criacao'
      Origin = 'funcionario_data_criacao'
      ProviderFlags = [pfInUpdate]
    end
  end
  object QueryPerfil: TFDQuery
    Connection = ConexaoBanco
    Left = 128
    Top = 408
  end
  object QueryUsuarios: TFDQuery
    Active = True
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
    object QueryUsuariosusuario_data_criacao: TSQLTimeStampField
      FieldName = 'usuario_data_criacao'
      Origin = 'usuario_data_criacao'
      ProviderFlags = [pfInUpdate]
    end
    object QueryUsuariosativo_in: TBooleanField
      FieldName = 'ativo_in'
      Origin = 'ativo_in'
    end
  end
  object QueryProdutos: TFDQuery
    Active = True
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM produtos;')
    Left = 456
    Top = 192
    object QueryProdutoscodigo_produto: TIntegerField
      FieldName = 'codigo_produto'
      Origin = 'codigo_produto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryProdutoscodigo_barras: TStringField
      FieldName = 'codigo_barras'
      Origin = 'codigo_barras'
    end
    object QueryProdutosnome_produto: TStringField
      FieldName = 'nome_produto'
      Origin = 'nome_produto'
      Size = 80
    end
    object QueryProdutoscategoria: TStringField
      FieldName = 'categoria'
      Origin = 'categoria'
    end
    object QueryProdutosunidade_medida: TStringField
      FieldName = 'unidade_medida'
      Origin = 'unidade_medida'
    end
    object QueryProdutosquant_estoque: TIntegerField
      FieldName = 'quant_estoque'
      Origin = 'quant_estoque'
    end
    object QueryProdutosquant_est_prevista: TIntegerField
      FieldName = 'quant_est_prevista'
      Origin = 'quant_est_prevista'
    end
    object QueryProdutospreco_compra: TBCDField
      FieldName = 'preco_compra'
      Origin = 'preco_compra'
      currency = True
      Precision = 7
      Size = 2
    end
    object QueryProdutospreco_venda: TBCDField
      FieldName = 'preco_venda'
      Origin = 'preco_venda'
      currency = True
      Precision = 7
      Size = 2
    end
    object QueryProdutosmarca: TStringField
      FieldName = 'marca'
      Origin = 'marca'
      Size = 40
    end
    object QueryProdutosdata_criacao: TSQLTimeStampField
      FieldName = 'data_criacao'
    end
    object QueryProdutosativo_in: TBooleanField
      FieldName = 'ativo_in'
      Origin = 'ativo_in'
    end
  end
  object FDTransaction1: TFDTransaction
    Connection = ConexaoBanco
    Left = 184
    Top = 56
  end
  object QueryPedidos: TFDQuery
    Active = True
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM Pedidos;')
    Left = 112
    Top = 264
    object QueryPedidoscodigo_pedido: TIntegerField
      FieldName = 'codigo_pedido'
      Origin = 'codigo_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryPedidosendereco_cliente: TStringField
      FieldName = 'endereco_cliente'
      Origin = 'endereco_cliente'
      Size = 60
    end
    object QueryPedidoscep_cliente: TStringField
      FieldName = 'cep_cliente'
      Origin = 'cep_cliente'
      EditMask = '00000-000;0;_'
      Size = 8
    end
    object QueryPedidosplaca_veiculo: TStringField
      FieldName = 'placa_veiculo'
      Origin = 'placa_veiculo'
      Size = 7
    end
    object QueryPedidosmarca: TStringField
      FieldName = 'marca'
      Origin = 'marca'
    end
    object QueryPedidosmodelo: TStringField
      FieldName = 'modelo'
      Origin = 'modelo'
    end
    object QueryPedidoscor: TStringField
      FieldName = 'cor'
      Origin = 'cor'
    end
    object QueryPedidosdescricao_pedido: TMemoField
      FieldName = 'descricao_pedido'
      Origin = 'descricao_pedido'
      BlobType = ftMemo
    end
    object QueryPedidoscontato_cliente: TStringField
      FieldName = 'contato_cliente'
      Origin = 'contato_cliente'
      Size = 11
    end
    object QueryPedidosdata_pedido: TSQLTimeStampField
      FieldName = 'data_pedido'
      Origin = 'data_pedido'
      ProviderFlags = [pfInUpdate]
    end
    object QueryPedidosnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 100
    end
    object QueryPedidosstatus_pedido: TStringField
      FieldName = 'status_pedido'
      Origin = 'status_pedido'
    end
    object QueryPedidosemail_cliente: TStringField
      FieldName = 'email_cliente'
      Origin = 'email_cliente'
      Size = 255
    end
  end
  object QueryVeiculos: TFDQuery
    Active = True
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM Veiculos;')
    Left = 216
    Top = 264
    object QueryVeiculoscodigo_veiculo: TIntegerField
      FieldName = 'codigo_veiculo'
      Origin = 'codigo_veiculo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryVeiculosplaca_veiculo: TStringField
      FieldName = 'placa_veiculo'
      Origin = 'placa_veiculo'
      Size = 7
    end
    object QueryVeiculosmodelo: TStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 40
    end
    object QueryVeiculosmarca: TStringField
      FieldName = 'marca'
      Origin = 'marca'
      Size = 40
    end
    object QueryVeiculoscor: TStringField
      FieldName = 'cor'
      Origin = 'cor'
    end
    object QueryVeiculosano_fab: TStringField
      FieldName = 'ano_fab'
      Origin = 'ano_fab'
      Size = 4
    end
    object QueryVeiculosano_mod: TSmallintField
      FieldName = 'ano_mod'
      Origin = 'ano_mod'
    end
    object QueryVeiculosnome_usuario_cliente: TStringField
      FieldName = 'nome_usuario_cliente'
      Origin = 'nome_usuario_cliente'
      Size = 255
    end
    object QueryVeiculoscontato_cliente: TStringField
      FieldName = 'contato_cliente'
      Origin = 'contato_cliente'
      Size = 11
    end
    object QueryVeiculoschassi: TStringField
      FieldName = 'chassi'
      Origin = 'chassi'
      Size = 17
    end
  end
  object QueryLogin: TFDQuery
    Active = True
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM Usuarios;')
    Left = 312
    Top = 264
    object QueryLoginid_usuario: TIntegerField
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryLogintipo_usuario: TStringField
      FieldName = 'tipo_usuario'
      Origin = 'tipo_usuario'
      Size = 15
    end
    object QueryLoginnome_usuario: TStringField
      FieldName = 'nome_usuario'
      Origin = 'nome_usuario'
      Size = 255
    end
    object QueryLoginsenha_hash: TStringField
      FieldName = 'senha_hash'
      Origin = 'senha_hash'
      Size = 255
    end
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 208
    Top = 408
  end
  object QueryOrcamentos: TFDQuery
    Active = True
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM Orcamentos;')
    Left = 424
    Top = 264
    object QueryOrcamentoscodigo_orcamento: TIntegerField
      FieldName = 'codigo_orcamento'
      Origin = 'codigo_orcamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryOrcamentosdata_emissao: TDateField
      FieldName = 'data_emissao'
      Origin = 'data_emissao'
    end
    object QueryOrcamentosvalidade: TDateField
      FieldName = 'validade'
      Origin = 'validade'
    end
    object QueryOrcamentoscontato_cliente: TStringField
      FieldName = 'contato_cliente'
      Origin = 'contato_cliente'
      Size = 11
    end
    object QueryOrcamentosemail_cliente: TStringField
      FieldName = 'email_cliente'
      Origin = 'email_cliente'
      Size = 255
    end
    object QueryOrcamentosnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 100
    end
    object QueryOrcamentoscep_cliente: TStringField
      FieldName = 'cep_cliente'
      Origin = 'cep_cliente'
      Size = 8
    end
    object QueryOrcamentosplaca_veiculo: TStringField
      FieldName = 'placa_veiculo'
      Origin = 'placa_veiculo'
      Size = 7
    end
    object QueryOrcamentosmarca: TStringField
      FieldName = 'marca'
      Origin = 'marca'
      Size = 40
    end
    object QueryOrcamentosmodelo: TStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 40
    end
    object QueryOrcamentoscor: TStringField
      FieldName = 'cor'
      Origin = 'cor'
    end
    object QueryOrcamentosstatus_orcamento: TStringField
      FieldName = 'status_orcamento'
      Origin = 'status_orcamento'
      Size = 25
    end
    object QueryOrcamentosdescricao_servico: TMemoField
      FieldName = 'descricao_servico'
      Origin = 'descricao_servico'
      BlobType = ftMemo
    end
    object QueryOrcamentosdescricao_pedido: TMemoField
      FieldName = 'descricao_pedido'
      Origin = 'descricao_pedido'
      BlobType = ftMemo
    end
    object QueryOrcamentoscodigo_cliente: TStringField
      FieldName = 'codigo_cliente'
      Origin = 'codigo_cliente'
      Size = 5
    end
    object QueryOrcamentoscodigo_pedido: TIntegerField
      FieldName = 'codigo_pedido'
      Origin = 'codigo_pedido'
    end
    object QueryOrcamentosvalor_mdo: TBCDField
      FieldName = 'valor_mdo'
      Origin = 'valor_mdo'
      Precision = 6
      Size = 2
    end
    object QueryOrcamentosvalor_materiais: TBCDField
      FieldName = 'valor_materiais'
      Origin = 'valor_materiais'
      Precision = 6
      Size = 2
    end
    object QueryOrcamentosvalor_total: TBCDField
      FieldName = 'valor_total'
      Origin = 'valor_total'
      Precision = 6
      Size = 2
    end
    object QueryOrcamentoslista_materiais: TMemoField
      FieldName = 'lista_materiais'
      Origin = 'lista_materiais'
      BlobType = ftMemo
    end
  end
  object QueryClientesLogin: TFDQuery
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM "Clientes";')
    Left = 112
    Top = 336
  end
  object QueryPedidosRel: TFDQuery
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM Pedidos;')
    Left = 416
    Top = 345
    object QueryPedidosRelcodigo_pedido: TIntegerField
      FieldName = 'codigo_pedido'
      Origin = 'codigo_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryPedidosReldata_pedido: TSQLTimeStampField
      FieldName = 'data_pedido'
      Origin = 'data_pedido'
      ProviderFlags = [pfInUpdate]
    end
    object QueryPedidosRelstatus_pedido: TStringField
      FieldName = 'status_pedido'
      Origin = 'status_pedido'
      Size = 25
    end
  end
  object QueryPedidosOrcamentos: TFDQuery
    Connection = ConexaoBanco
    SQL.Strings = (
      'SELECT'
      '    -- Dados do Pedido'
      '    p.codigo_pedido        AS pedido_codigo,'
      '    p.data_pedido          AS pedido_data,'
      '    p.nome_cliente         AS pedido_nome,'
      '    p.contato_cliente      AS pedido_contato,'
      '    p.endereco_cliente     AS pedido_endereco,'
      '    p.cep_cliente          AS pedido_cep,'
      '    p.email_cliente        AS pedido_email,'
      '    p.placa_veiculo        AS pedido_placa,'
      '    p.modelo               AS pedido_modelo,'
      '    p.marca                AS pedido_marca,'
      '    p.cor                  AS pedido_cor,'
      '    p.descricao_pedido     AS pedido_descricao,'
      '    p.status_pedido        AS pedido_status,'
      '    p.codigo_cliente       AS pedido_codigo_cliente,'
      ''
      '    -- Dados do Or'#231'amento'
      '    o.codigo_orcamento     AS orc_codigo,'
      '    o.data_emissao         AS orc_data_emissao,'
      '    o.validade             AS orc_validade,'
      '    o.nome_cliente         AS orc_nome,'
      '    o.contato_cliente      AS orc_contato,'
      '    o.email_cliente        AS orc_email,'
      '    o.cep_cliente          AS orc_cep,'
      '    o.placa_veiculo        AS orc_placa,'
      '    o.marca                AS orc_marca,'
      '    o.modelo               AS orc_modelo,'
      '    o.cor                  AS orc_cor,'
      '    o.status_orcamento     AS orc_status,'
      '    o.descricao_servico    AS orc_descricao_servico,'
      '    o.codigo_cliente       AS orc_codigo_cliente,'
      '    o.valor_mdo            AS orc_valor_mdo,'
      '    o.valor_materiais      AS orc_valor_materiais,'
      '    o.valor_total          AS orc_valor_total,'
      '    o.lista_materiais      AS orc_lista_materiais'
      ''
      'FROM pedidos p'
      'INNER JOIN orcamentos o'
      '    ON o.codigo_pedido = p.codigo_pedido'
      ''
      'ORDER BY p.codigo_pedido;'
      '')
    Left = 272
    Top = 336
  end
end
