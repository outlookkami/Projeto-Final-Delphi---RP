object frameFormularioDePedido: TframeFormularioDePedido
  Left = 0
  Top = 0
  Width = 890
  Height = 711
  TabOrder = 0
  object pnlFrameFormPedido: TPanel
    Left = 0
    Top = 0
    Width = 890
    Height = 711
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 3
    DesignSize = (
      890
      711)
    object lblDescServico: TLabel
      Left = 97
      Top = 307
      Width = 125
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Descri'#231#227'o do servi'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 331
      Top = 16
      Width = 281
      Height = 65
      Anchors = [akLeft, akTop, akRight]
      Caption = 'INSERIR LOGO'
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
    end
    object GridPanel1: TGridPanel
      Left = 94
      Top = 183
      Width = 721
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 230.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 290.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 120.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = dbleContato
          Row = 0
        end
        item
          Column = 1
          Control = lblVazio4
          Row = 0
        end
        item
          Column = 2
          Control = dbleEndereco
          Row = 0
        end
        item
          Column = 3
          Control = lblVazio5
          Row = 0
        end
        item
          Column = 4
          Control = dbleCEP
          Row = 0
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 1
      DesignSize = (
        721
        49)
      object dbleContato: TDBLabeledEdit
        Left = 2
        Top = 22
        Width = 226
        Height = 25
        Anchors = []
        TabOrder = 0
        EditLabel.Width = 49
        EditLabel.Height = 17
        EditLabel.Caption = 'Contato:'
        ExplicitLeft = 3
      end
      object lblVazio4: TLabel
        Left = 248
        Top = 16
        Width = 4
        Height = 17
        Anchors = []
        ExplicitLeft = 249
        ExplicitTop = 17
      end
      object dbleEndereco: TDBLabeledEdit
        Left = 273
        Top = 22
        Width = 284
        Height = 25
        Anchors = []
        TabOrder = 1
        EditLabel.Width = 58
        EditLabel.Height = 17
        EditLabel.Caption = 'Endere'#231'o:'
        ExplicitLeft = 274
      end
      object lblVazio5: TLabel
        Left = 578
        Top = 16
        Width = 4
        Height = 17
        Anchors = []
        ExplicitLeft = 579
        ExplicitTop = 17
      end
      object dbleCEP: TDBLabeledEdit
        Left = 601
        Top = 22
        Width = 117
        Height = 25
        Anchors = []
        TabOrder = 2
        EditLabel.Width = 25
        EditLabel.Height = 17
        EditLabel.Caption = 'CEP:'
        ExplicitLeft = 602
      end
    end
    object GridPanel2: TGridPanel
      Left = 94
      Top = 129
      Width = 721
      Height = 48
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 230.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 125.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 125.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = dbleCliente
          Row = 0
        end
        item
          Column = 1
          Control = lblVazio6
          Row = 0
        end
        item
          Column = 2
          Control = dbleCodigoCliente
          Row = 0
        end
        item
          Column = 3
          Control = lblVazio7
          Row = 0
        end
        item
          Column = 4
          Control = dbleCodigoPedido
          Row = 0
        end
        item
          Column = 5
          Control = lblVazio8
          Row = 0
        end
        item
          Column = 6
          Control = dbleData
          Row = 0
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 2
      DesignSize = (
        721
        48)
      object dbleCliente: TDBLabeledEdit
        Left = 2
        Top = 21
        Width = 226
        Height = 25
        Anchors = []
        TabOrder = 0
        EditLabel.Width = 42
        EditLabel.Height = 17
        EditLabel.Caption = 'Cliente:'
        ExplicitLeft = 3
      end
      object lblVazio6: TLabel
        Left = 248
        Top = 15
        Width = 4
        Height = 17
        Anchors = []
        ExplicitLeft = 249
        ExplicitTop = 16
      end
      object dbleCodigoCliente: TDBLabeledEdit
        Left = 272
        Top = 21
        Width = 121
        Height = 25
        Anchors = []
        TabOrder = 1
        EditLabel.Width = 109
        EditLabel.Height = 17
        EditLabel.Caption = 'C'#243'digo do Cliente:'
        ExplicitLeft = 273
      end
      object lblVazio7: TLabel
        Left = 413
        Top = 15
        Width = 4
        Height = 17
        Anchors = []
        ExplicitLeft = 414
        ExplicitTop = 16
      end
      object dbleCodigoPedido: TDBLabeledEdit
        Left = 437
        Top = 21
        Width = 121
        Height = 25
        Anchors = []
        TabOrder = 2
        EditLabel.Width = 111
        EditLabel.Height = 17
        EditLabel.Caption = 'C'#243'digo do Pedido:'
        ExplicitLeft = 438
      end
      object lblVazio8: TLabel
        Left = 578
        Top = 15
        Width = 4
        Height = 17
        Anchors = []
        ExplicitLeft = 579
        ExplicitTop = 16
      end
      object dbleData: TDBLabeledEdit
        Left = 603
        Top = 21
        Width = 115
        Height = 25
        Anchors = []
        TabOrder = 3
        EditLabel.Width = 30
        EditLabel.Height = 17
        EditLabel.Caption = 'Data:'
      end
    end
    object GridPanel3: TGridPanel
      Left = 94
      Top = 238
      Width = 721
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 125.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 180.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 175.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 120.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = dblePlaca
          Row = 0
        end
        item
          Column = 1
          Control = lblVazio
          Row = 0
        end
        item
          Column = 2
          Control = dbleMarca
          Row = 0
        end
        item
          Column = 3
          Control = lblVazio2
          Row = 0
        end
        item
          Column = 4
          Control = dbleModelo
          Row = 0
        end
        item
          Column = 5
          Control = lblVazio3
          Row = 0
        end
        item
          Column = 6
          Control = dbleCor
          Row = 0
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 3
      DesignSize = (
        721
        49)
      object dblePlaca: TDBLabeledEdit
        Left = 2
        Top = 22
        Width = 121
        Height = 25
        Anchors = []
        TabOrder = 0
        EditLabel.Width = 33
        EditLabel.Height = 17
        EditLabel.Caption = 'Placa:'
        ExplicitLeft = 3
      end
      object lblVazio: TLabel
        Left = 143
        Top = 16
        Width = 4
        Height = 17
        Anchors = []
        ExplicitLeft = 144
        ExplicitTop = 17
      end
      object dbleMarca: TDBLabeledEdit
        Left = 167
        Top = 22
        Width = 176
        Height = 25
        Anchors = []
        TabOrder = 1
        EditLabel.Width = 40
        EditLabel.Height = 17
        EditLabel.Caption = 'Marca:'
        ExplicitLeft = 168
      end
      object lblVazio2: TLabel
        Left = 363
        Top = 16
        Width = 4
        Height = 17
        Anchors = []
        ExplicitLeft = 364
        ExplicitTop = 17
      end
      object dbleModelo: TDBLabeledEdit
        Left = 387
        Top = 22
        Width = 170
        Height = 25
        Anchors = []
        TabOrder = 2
        EditLabel.Width = 49
        EditLabel.Height = 17
        EditLabel.Caption = 'Modelo:'
        ExplicitLeft = 388
      end
      object lblVazio3: TLabel
        Left = 578
        Top = 16
        Width = 4
        Height = 17
        Anchors = []
        ExplicitLeft = 579
        ExplicitTop = 17
      end
      object dbleCor: TDBLabeledEdit
        Left = 602
        Top = 22
        Width = 115
        Height = 25
        Anchors = []
        TabOrder = 3
        EditLabel.Width = 24
        EditLabel.Height = 17
        EditLabel.Caption = 'Cor:'
        ExplicitLeft = 603
      end
    end
    object memoDescricaoDoServiço: TMemo
      Left = 97
      Top = 330
      Width = 718
      Height = 225
      Anchors = [akLeft, akTop, akRight]
      Lines.Strings = (
        'memoDescricaoDoServi'#231'o')
      TabOrder = 4
    end
    object pnlEnviar: TPanel
      Left = 261
      Top = 592
      Width = 185
      Height = 41
      Caption = 'Enviar Pedido'
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
    object pnlVerOrçamento: TPanel
      Left = 507
      Top = 592
      Width = 185
      Height = 41
      Anchors = [akTop, akRight]
      Caption = 'Ver Or'#231'amento'
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
    object GridPanel4: TGridPanel
      Left = 96
      Top = 118
      Width = 719
      Height = 183
      Anchors = [akLeft, akTop, akRight]
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = GridPanel5
          Row = 0
        end
        item
          Column = 0
          Control = GridPanel6
          Row = 1
        end
        item
          Column = 0
          Control = GridPanel7
          Row = 2
        end>
      RowCollection = <
        item
          Value = 33.333333333333340000
        end
        item
          Value = 33.333333333333340000
        end
        item
          Value = 33.333333333333340000
        end>
      TabOrder = 7
      DesignSize = (
        719
        183)
      object GridPanel5: TGridPanel
        Left = 3
        Top = 1
        Width = 713
        Height = 56
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 230.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 40.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 125.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 40.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 125.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 40.000000000000000000
          end
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = DBLabeledEdit1
            Row = 0
          end
          item
            Column = 1
            Control = Label1
            Row = 0
          end
          item
            Column = 2
            Control = DBLabeledEdit2
            Row = 0
          end
          item
            Column = 3
            Control = Label2
            Row = 0
          end
          item
            Column = 4
            Control = DBLabeledEdit3
            Row = 0
          end
          item
            Column = 5
            Control = Label3
            Row = 0
          end
          item
            Column = 6
            Control = DBLabeledEdit4
            Row = 0
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        DesignSize = (
          713
          56)
        object DBLabeledEdit1: TDBLabeledEdit
          Left = 2
          Top = 25
          Width = 226
          Height = 25
          Anchors = []
          TabOrder = 0
          EditLabel.Width = 42
          EditLabel.Height = 17
          EditLabel.Caption = 'Cliente:'
          ExplicitLeft = 0
          ExplicitTop = 20
        end
        object Label1: TLabel
          Left = 248
          Top = 19
          Width = 4
          Height = 17
          Anchors = []
          ExplicitLeft = 249
          ExplicitTop = 16
        end
        object DBLabeledEdit2: TDBLabeledEdit
          Left = 272
          Top = 25
          Width = 121
          Height = 25
          Anchors = []
          TabOrder = 1
          EditLabel.Width = 109
          EditLabel.Height = 17
          EditLabel.Caption = 'C'#243'digo do Cliente:'
          ExplicitTop = 21
        end
        object Label2: TLabel
          Left = 413
          Top = 19
          Width = 4
          Height = 17
          Anchors = []
          ExplicitLeft = 414
          ExplicitTop = 16
        end
        object DBLabeledEdit3: TDBLabeledEdit
          Left = 437
          Top = 25
          Width = 121
          Height = 25
          Anchors = []
          TabOrder = 2
          EditLabel.Width = 111
          EditLabel.Height = 17
          EditLabel.Caption = 'C'#243'digo do Pedido:'
          ExplicitTop = 21
        end
        object Label3: TLabel
          Left = 578
          Top = 19
          Width = 4
          Height = 17
          Anchors = []
          ExplicitLeft = 579
          ExplicitTop = 16
        end
        object DBLabeledEdit4: TDBLabeledEdit
          Left = 602
          Top = 25
          Width = 108
          Height = 25
          Anchors = []
          TabOrder = 3
          EditLabel.Width = 30
          EditLabel.Height = 17
          EditLabel.Caption = 'Data:'
          ExplicitLeft = 605
        end
      end
      object GridPanel6: TGridPanel
        Left = 3
        Top = 61
        Width = 713
        Height = 60
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 230.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 40.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 290.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 40.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 120.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = DBLabeledEdit5
            Row = 0
          end
          item
            Column = 1
            Control = Label4
            Row = 0
          end
          item
            Column = 2
            Control = DBLabeledEdit6
            Row = 0
          end
          item
            Column = 3
            Control = Label5
            Row = 0
          end
          item
            Column = 4
            Control = DBLabeledEdit7
            Row = 0
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 1
        DesignSize = (
          713
          60)
        object DBLabeledEdit5: TDBLabeledEdit
          Left = 2
          Top = 27
          Width = 226
          Height = 25
          Anchors = []
          TabOrder = 0
          EditLabel.Width = 49
          EditLabel.Height = 17
          EditLabel.Caption = 'Contato:'
          ExplicitTop = 22
        end
        object Label4: TLabel
          Left = 248
          Top = 21
          Width = 4
          Height = 17
          Anchors = []
          ExplicitLeft = 249
          ExplicitTop = 17
        end
        object DBLabeledEdit6: TDBLabeledEdit
          Left = 273
          Top = 27
          Width = 284
          Height = 25
          Anchors = []
          TabOrder = 1
          EditLabel.Width = 58
          EditLabel.Height = 17
          EditLabel.Caption = 'Endere'#231'o:'
          ExplicitTop = 22
        end
        object Label5: TLabel
          Left = 578
          Top = 21
          Width = 4
          Height = 17
          Anchors = []
          ExplicitLeft = 579
          ExplicitTop = 17
        end
        object DBLabeledEdit7: TDBLabeledEdit
          Left = 606
          Top = 27
          Width = 107
          Height = 25
          Anchors = []
          TabOrder = 2
          EditLabel.Width = 25
          EditLabel.Height = 17
          EditLabel.Caption = 'CEP:'
        end
      end
      object GridPanel7: TGridPanel
        Left = 3
        Top = 122
        Width = 712
        Height = 55
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 125.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 40.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 180.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 40.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 175.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 40.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 120.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = DBLabeledEdit8
            Row = 0
          end
          item
            Column = 1
            Control = Label6
            Row = 0
          end
          item
            Column = 2
            Control = DBLabeledEdit9
            Row = 0
          end
          item
            Column = 3
            Control = Label7
            Row = 0
          end
          item
            Column = 4
            Control = DBLabeledEdit10
            Row = 0
          end
          item
            Column = 5
            Control = Label8
            Row = 0
          end
          item
            Column = 6
            Control = DBLabeledEdit11
            Row = 0
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 2
        DesignSize = (
          712
          55)
        object DBLabeledEdit8: TDBLabeledEdit
          Left = 2
          Top = 25
          Width = 121
          Height = 25
          Anchors = []
          TabOrder = 0
          EditLabel.Width = 33
          EditLabel.Height = 17
          EditLabel.Caption = 'Placa:'
          ExplicitTop = 22
        end
        object Label6: TLabel
          Left = 143
          Top = 19
          Width = 4
          Height = 17
          Anchors = []
          ExplicitLeft = 144
          ExplicitTop = 17
        end
        object DBLabeledEdit9: TDBLabeledEdit
          Left = 167
          Top = 25
          Width = 176
          Height = 25
          Anchors = []
          TabOrder = 1
          EditLabel.Width = 40
          EditLabel.Height = 17
          EditLabel.Caption = 'Marca:'
          ExplicitTop = 22
        end
        object Label7: TLabel
          Left = 363
          Top = 19
          Width = 4
          Height = 17
          Anchors = []
          ExplicitLeft = 364
          ExplicitTop = 17
        end
        object DBLabeledEdit10: TDBLabeledEdit
          Left = 387
          Top = 25
          Width = 170
          Height = 25
          Anchors = []
          TabOrder = 2
          EditLabel.Width = 49
          EditLabel.Height = 17
          EditLabel.Caption = 'Modelo:'
          ExplicitTop = 22
        end
        object Label8: TLabel
          Left = 578
          Top = 19
          Width = 4
          Height = 17
          Anchors = []
          ExplicitLeft = 579
          ExplicitTop = 17
        end
        object DBLabeledEdit11: TDBLabeledEdit
          Left = 606
          Top = 25
          Width = 108
          Height = 25
          Anchors = []
          TabOrder = 3
          EditLabel.Width = 24
          EditLabel.Height = 17
          EditLabel.Caption = 'Cor:'
          ExplicitLeft = 605
        end
      end
    end
  end
end
