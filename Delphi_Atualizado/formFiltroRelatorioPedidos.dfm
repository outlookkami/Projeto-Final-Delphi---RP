object formFiltroRelPedidos: TformFiltroRelPedidos
  Left = 0
  Top = 0
  Caption = 'Filtrar Relat'#243'rio de Pedidos'
  ClientHeight = 648
  ClientWidth = 978
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 32
    Top = 48
    Width = 889
    Height = 377
    TabOrder = 0
    DesignSize = (
      889
      377)
    object Label1: TLabel
      Left = 377
      Top = 80
      Width = 161
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Preencha os filtros '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblPeriodo: TLabel
      Left = 312
      Top = 128
      Width = 54
      Height = 20
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Per'#237'odo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblDataInicio: TLabel
      Left = 312
      Top = 163
      Width = 75
      Height = 15
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Data de in'#237'cio:'
    end
    object lblDataFim: TLabel
      Left = 312
      Top = 200
      Width = 64
      Height = 15
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Data de fim:'
    end
    object Label2: TLabel
      Left = 353
      Top = 16
      Width = 189
      Height = 30
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Relat'#243'rio de Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object dtInicio: TDateTimePicker
      Left = 393
      Top = 163
      Width = 194
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      Date = 45982.000000000000000000
      Time = 0.585727141202369200
      TabOrder = 0
    end
    object dtFim: TDateTimePicker
      Left = 393
      Top = 200
      Width = 194
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      Date = 45982.000000000000000000
      Time = 0.585765752315637700
      TabOrder = 1
    end
    object Button1: TButton
      Left = 393
      Top = 280
      Width = 136
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Gerar Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object QueryPedidos: TFDQuery
    Active = True
    Connection = DM.ConexaoBanco
    SQL.Strings = (
      'SELECT * FROM Pedidos;')
    Left = 112
    Top = 264
    ParamData = <
      item
        Name = 'dataInicio'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
      end
      item
        Name = 'dataFim'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
      end>
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
    object QueryPedidoscodigo_cliente: TStringField
      FieldName = 'codigo_cliente'
      Origin = 'codigo_cliente'
      Size = 5
    end
  end
end
