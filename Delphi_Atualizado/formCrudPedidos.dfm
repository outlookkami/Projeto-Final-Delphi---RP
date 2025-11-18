object crudPedidos: TcrudPedidos
  Left = 0
  Top = 0
  Caption = 'Ver Pedidos'
  ClientHeight = 701
  ClientWidth = 1151
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1151
    Height = 701
    Align = alClient
    TabOrder = 0
    DesignSize = (
      1151
      701)
    object lblDadosPedido: TLabel
      Left = 897
      Top = 1
      Width = 144
      Height = 25
      Align = alCustom
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Dados do pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnIncluirPedi: TPanel
      Left = 592
      Top = 74
      Width = 152
      Height = 43
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Incluir Pedido'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = btnIncluirPediClick
    end
    object pnlPesquisa: TPanel
      Left = 48
      Top = 27
      Width = 696
      Height = 41
      Anchors = [akLeft, akTop, akRight]
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clBtnHighlight
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        692
        37)
      object iconePesquisa: TImage
        Left = 650
        Top = -2
        Width = 34
        Height = 41
        Anchors = [akTop, akRight]
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
          00400806000000AA6971DE000000097048597300000EC300000EC301C76FA864
          0000001974455874536F667477617265007777772E696E6B73636170652E6F72
          679BEE3C1A0000086A4944415478DAE59B096C544518C777B787D0DB231A8C27
          91A3284A3802222888015B445214C170080A3610286DA180805AB92CD66D4B23
          3135A208085AC170C87D055040E530111401010B888940B0F400BA4BFD7DF16D
          33FBD896F796DD3E5CBE6476E67DF366DEF7FD67BE39BFB5DB0248D9D9D9E109
          09096DAE5CB9D2A9BABABA85DD6E6F06FB1EE2389E6349BB4957903E4BBA8470
          88E7FD2E976BEBB871E30E90AE0EA43C46C87EBD151415154594959525391C8E
          8128F62CAC583FABFA9BF2CB0161616969E976C0BC724303909F9F9F80C02349
          A611EE0AB05C47A8FBFD88888879696969976E2800A4C52B2A2A321070328F71
          4115CE6EFF9368627A7AFAC260998729009C4E674704994BB2791DAF55127610
          76127E05A8A3943943280F83AAAAAAA2E0DD89C934213F91D089D08E105E479D
          DB29FADA9831630E5B0200F6E8888B8B9B48F29D5A04AD22AC202C080F0F5F6B
          B6DBCE9A352B967229803488C76EB5C87581FC111919199FD72B0028DF00E517
          914CF1912D8A16D13A4E5AA7241002E5E5E5B52412B0FB131C3E5E71024256A0
          4CA24E00B4814E5AB6B38FEC3584B4CCCCCC238110444F050505EDF9F61C421B
          1FD98BA2A3A387A4A6A656050D005AA221D13A1FCA5F244C44F1D9C1505C2559
          57C4C6C64EA1B5A7F018A60781E972D0F54E973E01282E2E0E3B79F2A4B47CB2
          2EEB34C224D3057F0AB6F22A31F826F3DD2F49C6E8B2F26988CC800340EB4F23
          9AA2631F4688EE287FBC3E95F71026D18E15A698DDEDBAAC0160B0286000F0A1
          1E7C68B5CD7B003A29CB5B96AB7F58A1BC225B7BE4D868F3EE09654CA96D592B
          FC76DD00E4E6E64633A21F2079BFC2AE207400E59FAD54DE43F4CE5E44CB75B2
          6FA56776F56766F002005B9B4525E375EF0C41F9CFAC565C2566A71C66870981
          90B306002A6D44A5BF936CE8E1F1BC6CECD8B129662B0D36C9ECC0DA6437C9C7
          14F609668587C8BBEC2F00F9289CAEE4C9D2B545A0163881264C41A6E7ADAA0E
          F4DE544CE123D300C852949DD76992D19E0CD98DD1FA59562B7A0D1056123DA7
          B00E6106CD4C03404543893E51F8175D2ED783E3C78FFFCB6A25EB226D56D8E5
          A590DDDE915EB0D32C009B89BA2AFC2F40F265AB153442C8BE8FA89502C08700
          30D2300073E6CC89B974E9D239D2110A3F0900D65AAD9C410032245258C790BD
          B16100B465E62A8557C1D6F4B6609FC4048A66CF9EDDC4ED761F52793C37CECA
          CA3A661480A900F0A6C25B0F823DAC56CC0CD10B8EDBBC176F8697C77666BF62
          46FCBE350CBB7D063634C548E11B85006009D10B0A6B2A00BC6D08000ACBCEAE
          6641010083016081D54A99211A71BA7646E9A16200E86708000A9FA2F0DD0AAF
          0B85B75AAD9419C28C87D370EA02680B3A3C6D08007AC0059BB2BB028CD62C80
          F659AD94194207393E5B5CA394DDBE875EDCD628002E9B72DAC2C222916DEF41
          AB95320980EC105728AC83F48044A300845C0F80F602401B236543720C409F6D
          34E2538600D0CF02147E85C2F3AD56CA0CA1C30CA2490ACBD42CE0B50E806652
          78B291C2370A01C052A23E9E67F4994623BE6508000ACB6D4FCDCB74A50D8CA0
          DDAD56CA24007256799FC232B5124C02B1D50AEF7FB517C0FE9BD2685E07A2CC
          640F183DC0F5EC06C56121D2C304909E74A1D5462AB09A002013009C0ACBDC6E
          507EE8429B886A564E72098119F4B75A3923E463295F80EC19A60000C52114FC
          54E15FE4B931F59CB65AC1BA08F37D9CDEBA43E5391C8E0EE9E9E9DF9B024033
          0351B666410400790030D66A25EB225A5FCC3449611D40E69666EE07D4536127
          68AAF76C1554F4B0555761D722E4ED82BC5B541ECF4319BBE699A9477F2F7094
          640325FF1B06945E562BABA7ECECECC8B8B838B17D75BD7FACB4B4B4B9DFF702
          1A083301E10DDD3BC30061AED54AABC498954BEF1CE7A588DDDE97DEBAC46C5D
          5E0014151545959797EF27F9A0C2AED48E9AEBF54ABC36C2EEE5A66AA94EF64D
          34D233FED477D5ED30E87643E1F536E57658BCB55C2E5727A3078DC122CD496B
          03C928857D9E5EFB28B67F222000681FCAE6435E676A3CCBBDA1F8071CB54279
          CD65660DE15685CD63753F94FFCADF7A7D02A079852D23A91F00E5A6A817DD6D
          777D2A4F833C4F03C87E3F4A9765F8F0D3140042E22304BA6BF9F093BA2CF111
          CAE2C31F045B71CD0D773A3264F990B50A7E077AE4DEA00020949393131F1919
          29CE08571D2E882D1246FBEB99712D62467A820610905BD5F1DA39363EDDD9F8
          EC090A0042858585B7B8DDEE05BA33030F5D16CF5106C8DC400D90282E0A4FE2
          7B2F1A910F3A4FE8418FFC21280008218C6C9B65DE959397081FAFC8C1EA2AF1
          F4E6DD5508536952E904A23E941D48DCA516B94AA97F14EFF4B6795F8208FD43
          5E92995B615300784846627AC3C77CEC913A5E937304B9B2FE0E61C53C8E8485
          859DA5AB96F1EC90FF0D848787DF41DC94BC44F89DA9AFB5ED6A3F409536F3CE
          70998134EF1071977D49F7CE05EA4AC61CBE0D1A00429A00A3E53E5137250583
          8E8B93A4DE3F5873A09C4F9EFE0A5F3CC67A322E6D0B1A001E12AF1206C8119A
          5B4DA3002BFE0BF516C4C4C4CCABCD1D5673E6942DFC205D5639657BB136D872
          EDCF04E01F23D21AF1F1F1E25B3840BC4861C5FB59D529C24A5A70B1D11694F5
          0ADF9E8BC2437459B293ED4DCFD9187400549256292929698512B276909D9AD8
          F9BD0419E4E4ACA15AFBCFD019D2726627FF25F891596497BFFF191210308722
          CA0ED3655522470A60AEAB3700AC226D962A24394A977559A66FCC61456D6543
          0200058402DB7FFF61F20281DED10F735816D200784060AACED3F93B0AC9B2B9
          3F207C1DD20078C8C75599909B30587F611292006820F872F977CB8CC198B030
          E401D040F0BAF6534078D573011CD20008399DCE09D87F8E0F1086C90972C803
          20C4EC20CBF6A93AB6FCD768C04D018010E6207FC57B57C73E7DD300A0812027
          4BEF29ACE3371500429A3BCD7492B23D7FFD5FA5F0C973C979C5F50000000049
          454E44AE426082}
        Proportional = True
        ExplicitLeft = 649
      end
    end
    object DBGrid1: TDBGrid
      Left = 48
      Top = 131
      Width = 696
      Height = 528
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSPedidos
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo_pedido'
          Title.Caption = 'C'#243'd. Pedido'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco_cliente'
          Title.Caption = 'Endere'#231'o Cliente'
          Width = 219
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep_cliente'
          Title.Caption = 'CEP Cliente'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'placa_veiculo'
          Title.Caption = 'Placa Ve'#237'culo'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'marca'
          Title.Caption = 'Marca'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'modelo'
          Title.Caption = 'Modelo'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cor'
          Title.Caption = 'Cor'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao_pedido'
          Title.Caption = 'Descri'#231#227'o do Pedido'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'contato_cliente'
          Title.Caption = 'Contato Cliente'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_pedido'
          Title.Caption = 'Data Pedido'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_cliente'
          Title.Caption = 'Nome do cliente'
          Width = 280
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status_pedido'
          Title.Caption = 'Status do pedido'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email_cliente'
          Title.Caption = 'Email Cliente'
          Width = 280
          Visible = True
        end>
    end
    object edtPesquisa: TEdit
      Left = 56
      Top = 32
      Width = 638
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TextHint = 'Pesquise'
    end
    object gridPanelLogin: TGridPanel
      Left = 769
      Top = 32
      Width = 361
      Height = 647
      Align = alCustom
      Anchors = [akTop, akRight, akBottom]
      BevelEdges = []
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Label2
          Row = 1
        end
        item
          Column = 0
          Control = Label3
          Row = 3
        end
        item
          Column = 0
          Control = Label4
          Row = 5
        end
        item
          Column = 0
          Control = Label5
          Row = 7
        end
        item
          Column = 0
          Control = Label6
          Row = 9
        end
        item
          Column = 0
          Control = Label7
          Row = 11
        end
        item
          Column = 0
          Control = Label8
          Row = 13
        end
        item
          Column = 0
          Control = Label10
          Row = 17
        end
        item
          Column = 0
          Control = leEmailCliente
          Row = 4
        end
        item
          Column = 0
          Control = GridPanel1
          Row = 0
        end
        item
          Column = 0
          Control = GridPanel2
          Row = 2
        end
        item
          Column = 0
          Control = leEndereco
          Row = 6
        end
        item
          Column = 0
          Control = GridPanel5
          Row = 8
        end
        item
          Column = 0
          Control = leMarca
          Row = 10
        end
        item
          Column = 0
          Control = leModelo
          Row = 12
        end
        item
          Column = 0
          Control = Label9
          Row = 18
        end
        item
          Column = 0
          Control = lblStatus
          Row = 19
        end
        item
          Column = 0
          Control = cbStatus
          Row = 20
        end
        item
          Column = 0
          Control = pnlFazerOrcPedido
          Row = 21
        end
        item
          Column = 0
          Control = pnlIncluirPedido
          Row = 22
        end
        item
          Column = 0
          Control = lblDescricaoPedido
          Row = 14
        end
        item
          Column = 0
          Control = descPedido
          Row = 15
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      RowCollection = <
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          Value = 4.761904761904762000
        end
        item
          SizeStyle = ssAbsolute
          Value = 45.000000000000000000
        end
        item
          Value = 4.761904761904762000
        end
        item
          SizeStyle = ssAuto
        end>
      TabOrder = 4
      DesignSize = (
        361
        647)
      object Label2: TLabel
        Left = 178
        Top = 29
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 64
      end
      object Label3: TLabel
        Left = 178
        Top = 83
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 125
      end
      object Label4: TLabel
        Left = 178
        Top = 136
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 185
      end
      object Label5: TLabel
        Left = 178
        Top = 190
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 250
      end
      object Label6: TLabel
        Left = 178
        Top = 243
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 311
      end
      object Label7: TLabel
        Left = 178
        Top = 297
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 373
      end
      object Label8: TLabel
        Left = 178
        Top = 350
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 202
        ExplicitTop = 411
      end
      object Label10: TLabel
        Left = 178
        Top = 457
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 198
        ExplicitTop = 520
      end
      object leEmailCliente: TLabeledEdit
        Left = 10
        Top = 131
        Width = 341
        Height = 29
        Anchors = []
        EditLabel.Width = 54
        EditLabel.Height = 21
        EditLabel.Caption = '*E-mail:'
        TabOrder = 0
        Text = ''
        TextHint = 'Digite o endere'#231'o de e-mail'
      end
      object GridPanel1: TGridPanel
        Left = 1
        Top = 0
        Width = 358
        Height = 50
        Anchors = []
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 180.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 59.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = leCodPedido
            Row = 0
          end
          item
            Column = 1
            Control = GridPanel10
            Row = 0
          end>
        ParentBackground = False
        ParentColor = True
        RowCollection = <
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 1
        DesignSize = (
          358
          50)
        object leCodPedido: TLabeledEdit
          Left = 11
          Top = 24
          Width = 157
          Height = 37
          Anchors = []
          EditLabel.Width = 126
          EditLabel.Height = 21
          EditLabel.Caption = 'C'#243'digo do Pedido:'
          TabOrder = 0
          Text = ''
          ExplicitTop = 16
        end
        object GridPanel10: TGridPanel
          Left = 174
          Top = -5
          Width = 185
          Height = 52
          Align = alCustom
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = lblDataPedido
              Row = 0
            end
            item
              Column = 0
              Control = dtPedido
              Row = 1
            end>
          ParentBackground = False
          RowCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 20.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 100.000000000000000000
            end
            item
              SizeStyle = ssAuto
            end>
          TabOrder = 1
          object lblDataPedido: TLabel
            Left = 6
            Top = 0
            Width = 107
            Height = 20
            Align = alCustom
            Caption = 'Data do Pedido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object dtPedido: TDateTimePicker
            Left = 14
            Top = 26
            Width = 115
            Height = 31
            Align = alCustom
            Date = 45950.000000000000000000
            Time = 0.594754340279905600
            TabOrder = 0
          end
        end
      end
      object GridPanel2: TGridPanel
        Left = 2
        Top = 53
        Width = 356
        Height = 53
        Anchors = []
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 180.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 59.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = leContato
            Row = 0
          end
          item
            Column = 1
            Control = leCEP
            Row = 0
          end>
        ParentBackground = False
        ParentColor = True
        RowCollection = <
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 2
        ExplicitTop = 72
        DesignSize = (
          356
          53)
        object leContato: TLabeledEdit
          Left = 7
          Top = 24
          Width = 165
          Height = 29
          Anchors = []
          EditLabel.Width = 129
          EditLabel.Height = 21
          EditLabel.Caption = 'Contato do cliente:'
          TabOrder = 0
          Text = ''
        end
        object leCEP: TLabeledEdit
          Left = 180
          Top = 24
          Width = 165
          Height = 29
          Anchors = []
          EditLabel.Width = 101
          EditLabel.Height = 21
          EditLabel.Caption = 'CEP do cliente:'
          TabOrder = 1
          Text = ''
        end
      end
      object leEndereco: TLabeledEdit
        Left = 10
        Top = 184
        Width = 341
        Height = 29
        Anchors = []
        EditLabel.Width = 67
        EditLabel.Height = 21
        EditLabel.Caption = 'Endere'#231'o:'
        TabOrder = 3
        Text = ''
        TextHint = 'Informe o endere'#231'o'
      end
      object GridPanel5: TGridPanel
        Left = 0
        Top = 214
        Width = 360
        Height = 55
        Anchors = []
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 40.735354790552790000
          end
          item
            Value = 59.264645209447220000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = lePlaca
            Row = 0
          end
          item
            Column = 1
            Control = leCorVeiculo
            Row = 0
          end>
        ParentBackground = False
        ParentColor = True
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 4
        DesignSize = (
          360
          55)
        object lePlaca: TLabeledEdit
          Left = 10
          Top = 25
          Width = 126
          Height = 29
          Anchors = []
          EditLabel.Width = 114
          EditLabel.Height = 21
          EditLabel.Caption = 'Placa do ve'#237'culo:'
          TabOrder = 0
          Text = ''
          TextHint = 'Placa do ve'#237'culo'
        end
        object leCorVeiculo: TLabeledEdit
          Left = 157
          Top = 25
          Width = 193
          Height = 29
          Anchors = []
          EditLabel.Width = 103
          EditLabel.Height = 21
          EditLabel.Caption = 'Cor do ve'#237'culo:'
          TabOrder = 1
          Text = ''
          TextHint = 'Cor do ve'#237'culo'
        end
      end
      object leMarca: TLabeledEdit
        Left = 13
        Top = 291
        Width = 334
        Height = 29
        Anchors = [akTop, akBottom]
        EditLabel.Width = 121
        EditLabel.Height = 21
        EditLabel.Caption = 'Marca do ve'#237'culo:'
        TabOrder = 5
        Text = ''
        TextHint = 'Marca do ve'#237'culo'
      end
      object leModelo: TLabeledEdit
        Left = 14
        Top = 345
        Width = 332
        Height = 29
        Anchors = [akTop]
        EditLabel.Width = 131
        EditLabel.Height = 21
        EditLabel.Caption = 'Modelo do ve'#237'culo:'
        TabOrder = 6
        Text = ''
        TextHint = 'Modelo do ve'#237'culo'
      end
      object Label9: TLabel
        Left = 178
        Top = 484
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 157
        ExplicitTop = 511
      end
      object lblStatus: TLabel
        Left = 14
        Top = 496
        Width = 45
        Height = 21
        Align = alCustom
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Status:'
      end
      object cbStatus: TComboBox
        Left = 0
        Top = 534
        Width = 361
        Height = 29
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 7
        Items.Strings = (
          'Or'#231'amento Pendente'
          'Or'#231'amento Realizado'
          'Or'#231'amento Aprovado'
          'Realizando Servi'#231'o'
          'Pedido Finalizado')
      end
      object pnlFazerOrcPedido: TPanel
        Left = 183
        Top = 586
        Width = 162
        Height = 41
        Cursor = crHandPoint
        Align = alCustom
        Anchors = [akBottom]
        Caption = 'Fazer Or'#231'amento'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 8
        OnClick = pnlFazerOrcPedidoClick
      end
      object pnlIncluirPedido: TPanel
        Left = 16
        Top = 586
        Width = 161
        Height = 41
        Cursor = crHandPoint
        Align = alCustom
        Anchors = [akBottom]
        Caption = 'Incluir Pedido'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 9
        Visible = False
      end
      object lblDescricaoPedido: TLabel
        Left = 16
        Top = 380
        Width = 143
        Height = 21
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Descri'#231#227'o do Pedido:'
      end
      object descPedido: TMemo
        Left = 15
        Top = 401
        Width = 331
        Height = 89
        Anchors = [akTop, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          '')
        ParentFont = False
        TabOrder = 10
      end
    end
    object btnEditPedi: TPanel
      Left = 434
      Top = 74
      Width = 152
      Height = 43
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Editar Pedido'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
    end
    object btnExcluPedi: TPanel
      Left = 276
      Top = 74
      Width = 152
      Height = 43
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Excluir Pedido'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
    end
  end
  object DSPedidos: TDataSource
    DataSet = DM.QueryPedidos
    Left = 40
    Top = 80
  end
  object RESTClient1: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 16
    Top = 240
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 16
    Top = 288
  end
  object RESTResponse1: TRESTResponse
    Left = 16
    Top = 352
  end
end
