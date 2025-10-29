object FormPedido: TFormPedido
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de pedido'
  ClientHeight = 701
  ClientWidth = 1150
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlFrameFormPedido: TPanel
    Left = 0
    Top = 0
    Width = 1150
    Height = 701
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1150
      701)
    object lblDescServico: TLabel
      Left = 99
      Top = 315
      Width = 140
      Height = 20
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Descri'#231#227'o do servi'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 329
      Top = 24
      Width = 541
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
      Width = 981
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
        981
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
      end
    end
    object GridPanel2: TGridPanel
      Left = 94
      Top = 129
      Width = 981
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
        981
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
        Left = 733
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
      Width = 981
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
        981
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
      end
    end
    object memoDescricaoDoServico: TMemo
      Left = 99
      Top = 357
      Width = 978
      Height = 215
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      ImeMode = imDisable
      Lines.Strings = (
        '')
      TabOrder = 4
      StyleName = 'Windows'
    end
    object GridPanel4: TGridPanel
      Left = 96
      Top = 118
      Width = 979
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
          Value = 33.333333333333310000
        end>
      TabOrder = 5
      DesignSize = (
        979
        183)
      object GridPanel5: TGridPanel
        Left = 133
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
            Value = 30.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 140.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 30.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 140.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 30.000000000000000000
          end
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label1
            Row = 0
          end
          item
            Column = 3
            Control = Label2
            Row = 0
          end
          item
            Column = 5
            Control = Label3
            Row = 0
          end
          item
            Column = 0
            Control = leCliente
            Row = 0
          end
          item
            Column = 2
            Control = leCodigoCliente
            Row = 0
          end
          item
            Column = 4
            Control = leCodigoPedido
            Row = 0
          end
          item
            Column = 6
            Control = GridPanel10
            Row = 0
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          713
          56)
        object Label1: TLabel
          Left = 243
          Top = 18
          Width = 4
          Height = 20
          Anchors = []
          ExplicitLeft = 248
          ExplicitTop = 19
        end
        object Label2: TLabel
          Left = 413
          Top = 18
          Width = 4
          Height = 20
          Anchors = []
          ExplicitTop = 19
        end
        object Label3: TLabel
          Left = 583
          Top = 18
          Width = 4
          Height = 20
          Anchors = []
          ExplicitLeft = 578
          ExplicitTop = 19
        end
        object leCliente: TLabeledEdit
          Left = 3
          Top = 25
          Width = 224
          Height = 28
          Anchors = []
          EditLabel.Width = 49
          EditLabel.Height = 20
          EditLabel.Caption = 'Cliente:'
          TabOrder = 0
          Text = ''
        end
        object leCodigoCliente: TLabeledEdit
          Left = 262
          Top = 25
          Width = 135
          Height = 28
          Anchors = []
          EditLabel.Width = 124
          EditLabel.Height = 20
          EditLabel.Caption = 'C'#243'digo do Cliente:'
          TabOrder = 1
          Text = ''
        end
        object leCodigoPedido: TLabeledEdit
          Left = 435
          Top = 25
          Width = 130
          Height = 28
          Anchors = []
          EditLabel.Width = 124
          EditLabel.Height = 20
          EditLabel.Caption = 'C'#243'digo do Pedido:'
          TabOrder = 2
          Text = ''
        end
        object GridPanel10: TGridPanel
          Left = 600
          Top = -1
          Width = 113
          Height = 59
          Align = alCustom
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Label10
              Row = 0
            end
            item
              Column = 0
              Control = dtData
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
          TabOrder = 3
          object Label10: TLabel
            Left = 6
            Top = 0
            Width = 35
            Height = 20
            Align = alCustom
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object dtData: TDateTimePicker
            Left = 8
            Top = 26
            Width = 105
            Height = 31
            Align = alCustom
            Date = 45950.000000000000000000
            Time = 0.594754340279905600
            TabOrder = 0
          end
        end
      end
      object GridPanel6: TGridPanel
        Left = 133
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
            Value = 30.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 290.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 30.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 120.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = dbleTelefone
            Row = 0
          end
          item
            Column = 1
            Control = Label4
            Row = 0
          end
          item
            Column = 2
            Control = dbleRua
            Row = 0
          end
          item
            Column = 3
            Control = Label5
            Row = 0
          end
          item
            Column = 4
            Control = dbleCEPendereco
            Row = 0
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
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
        object dbleTelefone: TDBLabeledEdit
          Left = 2
          Top = 27
          Width = 226
          Height = 28
          Anchors = []
          TabOrder = 0
          EditLabel.Width = 56
          EditLabel.Height = 20
          EditLabel.Caption = 'Contato:'
        end
        object Label4: TLabel
          Left = 243
          Top = 20
          Width = 4
          Height = 20
          Anchors = []
          ExplicitLeft = 248
          ExplicitTop = 21
        end
        object dbleRua: TDBLabeledEdit
          Left = 263
          Top = 27
          Width = 284
          Height = 28
          Anchors = []
          DataSource = DSPedido
          TabOrder = 1
          EditLabel.Width = 65
          EditLabel.Height = 20
          EditLabel.Caption = 'Endere'#231'o:'
        end
        object Label5: TLabel
          Left = 563
          Top = 20
          Width = 4
          Height = 20
          Anchors = []
          ExplicitLeft = 578
          ExplicitTop = 21
        end
        object dbleCEPendereco: TDBLabeledEdit
          Left = 583
          Top = 27
          Width = 130
          Height = 28
          Align = alCustom
          TabOrder = 2
          EditLabel.Width = 28
          EditLabel.Height = 20
          EditLabel.Caption = 'CEP:'
        end
      end
      object GridPanel7: TGridPanel
        Left = 133
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
            Value = 30.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 180.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 30.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 175.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 30.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 140.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label6
            Row = 0
          end
          item
            Column = 3
            Control = Label7
            Row = 0
          end
          item
            Column = 5
            Control = Label8
            Row = 0
          end
          item
            Column = 0
            Control = lePlaca
            Row = 0
          end
          item
            Column = 2
            Control = leMarca
            Row = 0
          end
          item
            Column = 4
            Control = leModelo
            Row = 0
          end
          item
            Column = 6
            Control = leCor
            Row = 0
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 2
        DesignSize = (
          712
          55)
        object Label6: TLabel
          Left = 138
          Top = 17
          Width = 4
          Height = 20
          Anchors = []
          ExplicitLeft = 143
          ExplicitTop = 19
        end
        object Label7: TLabel
          Left = 348
          Top = 17
          Width = 4
          Height = 20
          Anchors = []
          ExplicitLeft = 363
          ExplicitTop = 19
        end
        object Label8: TLabel
          Left = 553
          Top = 17
          Width = 4
          Height = 20
          Anchors = []
          ExplicitLeft = 578
          ExplicitTop = 19
        end
        object lePlaca: TLabeledEdit
          Left = 2
          Top = 25
          Width = 121
          Height = 28
          Anchors = []
          EditLabel.Width = 38
          EditLabel.Height = 20
          EditLabel.Caption = 'Placa:'
          TabOrder = 0
          Text = ''
        end
        object leMarca: TLabeledEdit
          Left = 161
          Top = 25
          Width = 167
          Height = 28
          Anchors = []
          EditLabel.Width = 44
          EditLabel.Height = 20
          EditLabel.Caption = 'Marca:'
          TabOrder = 1
          Text = ''
        end
        object leModelo: TLabeledEdit
          Left = 367
          Top = 25
          Width = 170
          Height = 28
          Anchors = []
          EditLabel.Width = 55
          EditLabel.Height = 20
          EditLabel.Caption = 'Modelo:'
          TabOrder = 2
          Text = ''
        end
        object leCor: TLabeledEdit
          Left = 573
          Top = 25
          Width = 139
          Height = 28
          Align = alCustom
          EditLabel.Width = 26
          EditLabel.Height = 20
          EditLabel.Caption = 'Cor:'
          TabOrder = 3
          Text = ''
        end
      end
    end
    object GridPanel8: TGridPanel
      Left = 359
      Top = 599
      Width = 484
      Height = 56
      Anchors = [akBottom]
      BevelOuter = bvNone
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 190.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 190.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Panel2
          Row = 0
        end
        item
          Column = 1
          Control = Label9
          Row = 0
        end
        item
          Column = 2
          Control = Panel3
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 6
      DesignSize = (
        484
        56)
      object Panel2: TPanel
        Left = 0
        Top = 9
        Width = 185
        Height = 47
        Anchors = [akLeft, akBottom]
        Caption = 'Enviar Pedido'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = Panel2Click
      end
      object Label9: TLabel
        Left = 238
        Top = 20
        Width = 3
        Height = 15
        Anchors = []
        ExplicitLeft = 209
        ExplicitTop = 12
      end
      object Panel3: TPanel
        Left = 295
        Top = 9
        Width = 185
        Height = 47
        Anchors = [akRight, akBottom]
        Caption = 'Ver Or'#231'amento'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object DSPedido: TDataSource
    DataSet = DM.QueryPedidos
    Left = 144
    Top = 32
  end
end
