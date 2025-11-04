object formVerOrcamento: TformVerOrcamento
  Left = 0
  Top = 0
  Caption = 'Ver Or'#231'amento'
  ClientHeight = 904
  ClientWidth = 1591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlFrameFormPedido: TPanel
    Left = 0
    Top = 0
    Width = 1591
    Height = 904
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 966
    DesignSize = (
      1591
      904)
    object lblDescServico: TLabel
      Left = 103
      Top = 456
      Width = 581
      Height = 20
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Descri'#231#227'o do servi'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 350
    end
    object Panel1: TPanel
      Left = 8
      Top = 10
      Width = 312
      Height = 65
      Anchors = [akLeft, akTop, akRight]
      Caption = 'INSERIR LOGO'
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 81
    end
    object memoDescricaoDoServico: TMemo
      Left = 92
      Top = 497
      Width = 749
      Height = 233
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      ImeMode = imDisable
      Lines.Strings = (
        '')
      TabOrder = 1
      StyleName = 'Windows'
      ExplicitHeight = 344
    end
    object GridPanel1: TGridPanel
      Left = 103
      Top = 10
      Width = 842
      Height = 423
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = GridPanel2
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
        end
        item
          Column = 0
          Control = GridPanel8
          Row = 3
        end
        item
          Column = 0
          Control = GridPanel15
          Row = 4
        end
        item
          Column = 0
          Control = GridPanel16
          Row = 5
        end>
      RowCollection = <
        item
          Value = 16.666666666666670000
        end
        item
          Value = 16.666666666666670000
        end
        item
          Value = 16.666666666666670000
        end
        item
          Value = 16.666666666666670000
        end
        item
          Value = 16.666666666666670000
        end
        item
          Value = 16.666666666666650000
        end>
      TabOrder = 2
      DesignSize = (
        842
        423)
      object GridPanel2: TGridPanel
        Left = 10
        Top = 7
        Width = 821
        Height = 57
        Anchors = []
        ColumnCollection = <
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333310000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = GridPanel3
            Row = 0
          end
          item
            Column = 1
            Control = GridPanel4
            Row = 0
          end
          item
            Column = 2
            Control = GridPanel5
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        ExplicitLeft = 32
        object GridPanel3: TGridPanel
          Left = 1
          Top = 1
          Width = 273
          Height = 55
          Align = alClient
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = lblOrcamento
              Row = 0
            end
            item
              Column = 1
              Control = numeroOrcamento
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          ExplicitLeft = 77
          ExplicitWidth = 229
          object lblOrcamento: TLabel
            Left = 35
            Top = 16
            Width = 88
            Height = 17
            Align = alCustom
            Alignment = taCenter
            Caption = 'Or'#231'amento n'#176': '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object numeroOrcamento: TLabel
            Left = 137
            Top = 1
            Width = 3
            Height = 53
            Align = alLeft
            ExplicitLeft = 153
            ExplicitHeight = 15
          end
        end
        object GridPanel4: TGridPanel
          Left = 274
          Top = 1
          Width = 273
          Height = 55
          Align = alClient
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = lblEmissao
              Row = 0
            end
            item
              Column = 1
              Control = dataEmissao
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 1
          ExplicitLeft = 306
          ExplicitWidth = 305
          object lblEmissao: TLabel
            Left = 53
            Top = 16
            Width = 73
            Height = 17
            Align = alCustom
            Alignment = taCenter
            Caption = 'Emitido em: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object dataEmissao: TLabel
            Left = 137
            Top = 1
            Width = 3
            Height = 53
            Align = alLeft
            ExplicitLeft = 153
            ExplicitHeight = 15
          end
        end
        object GridPanel5: TGridPanel
          Left = 547
          Top = 1
          Width = 273
          Height = 55
          Align = alClient
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = lblValidoate
              Row = 0
            end
            item
              Column = 1
              Control = validoAte
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 2
          ExplicitLeft = 560
          ExplicitTop = 9
          ExplicitWidth = 279
          object lblValidoate: TLabel
            Left = 53
            Top = 16
            Width = 65
            Height = 17
            Align = alCustom
            Alignment = taCenter
            Caption = 'V'#225'lido at'#233': '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object validoAte: TLabel
            Left = 137
            Top = 1
            Width = 3
            Height = 53
            Align = alLeft
            ExplicitLeft = 153
            ExplicitHeight = 15
          end
        end
      end
      object GridPanel6: TGridPanel
        Left = 11
        Top = 77
        Width = 820
        Height = 58
        Anchors = []
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = lblCliente
            Row = 0
          end
          item
            Column = 1
            Control = lblNomeCliente
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 1
        ExplicitLeft = 23
        DesignSize = (
          820
          58)
        object lblCliente: TLabel
          Left = 53
          Top = 21
          Width = 45
          Height = 15
          Anchors = []
          Caption = 'CLIENTE'
          ExplicitLeft = 51
        end
        object lblNomeCliente: TLabel
          Left = 167
          Top = 16
          Width = 72
          Height = 17
          Align = alCustom
          Caption = 'nomeCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
      end
      object GridPanel7: TGridPanel
        Left = 11
        Top = 148
        Width = 819
        Height = 57
        Anchors = []
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 200.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 300.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = lblTelefone
            Row = 0
          end
          item
            Column = 1
            Control = lblTelefoneCliente
            Row = 0
          end
          item
            Column = 2
            Control = lblEmail
            Row = 0
          end
          item
            Column = 3
            Control = lblEmailCliente
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 2
        ExplicitLeft = 22
        DesignSize = (
          819
          57)
        object lblTelefone: TLabel
          Left = 48
          Top = 21
          Width = 55
          Height = 15
          Anchors = []
          Caption = 'TELEFONE'
          ExplicitLeft = 53
        end
        object lblTelefoneCliente: TLabel
          Left = 166
          Top = 16
          Width = 86
          Height = 17
          Align = alCustom
          Caption = 'telefoneCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblEmail: TLabel
          Left = 409
          Top = 21
          Width = 34
          Height = 15
          Anchors = []
          Caption = 'EMAIL'
          ExplicitLeft = 478
        end
        object lblEmailCliente: TLabel
          Left = 592
          Top = 20
          Width = 70
          Height = 17
          Align = alCustom
          Caption = 'emailCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
      end
      object GridPanel8: TGridPanel
        Left = 11
        Top = 218
        Width = 819
        Height = 57
        Anchors = []
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 200.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 300.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = lblCódigo
            Row = 0
          end
          item
            Column = 1
            Control = lblCodigoCliente
            Row = 0
          end
          item
            Column = 2
            Control = lblCEP
            Row = 0
          end
          item
            Column = 3
            Control = lblCEPCliente
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 3
        ExplicitLeft = 22
        DesignSize = (
          819
          57)
        object lblCódigo: TLabel
          Left = 29
          Top = 21
          Width = 93
          Height = 15
          Anchors = []
          Caption = 'C'#211'DIGO CLIENTE'
          ExplicitLeft = 48
        end
        object lblCodigoCliente: TLabel
          Left = 166
          Top = 16
          Width = 80
          Height = 17
          Align = alCustom
          Caption = 'c'#243'digoCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblCEP: TLabel
          Left = 415
          Top = 21
          Width = 21
          Height = 15
          Anchors = []
          Caption = 'CEP'
          ExplicitLeft = 409
        end
        object lblCEPCliente: TLabel
          Left = 512
          Top = 20
          Width = 61
          Height = 17
          Align = alCustom
          Caption = 'CEPCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
      end
      object GridPanel15: TGridPanel
        Left = 10
        Top = 289
        Width = 821
        Height = 56
        Anchors = []
        ColumnCollection = <
          item
            Value = 16.666666666666670000
          end
          item
            Value = 16.666666666666670000
          end
          item
            Value = 16.666666666666670000
          end
          item
            Value = 16.666666666666670000
          end
          item
            Value = 16.666666666666670000
          end
          item
            Value = 16.666666666666650000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Label4
            Row = 0
          end
          item
            Column = 1
            Control = Label5
            Row = 0
          end
          item
            Column = 2
            Control = Label6
            Row = 0
          end
          item
            Column = 3
            Control = Label7
            Row = 0
          end
          item
            Column = 4
            Control = Label8
            Row = 0
          end
          item
            Column = 5
            Control = Label9
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 4
        ExplicitLeft = 28
        DesignSize = (
          821
          56)
        object Label4: TLabel
          Left = 51
          Top = 20
          Width = 37
          Height = 15
          Anchors = []
          Caption = 'PLACA'
          ExplicitLeft = 33
          ExplicitTop = 25
        end
        object Label5: TLabel
          Left = 173
          Top = 16
          Width = 72
          Height = 17
          Align = alCustom
          Caption = 'placaVeiculo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 321
          Top = 20
          Width = 42
          Height = 15
          Anchors = []
          Caption = 'MARCA'
          ExplicitLeft = 343
          ExplicitTop = 19
        end
        object Label7: TLabel
          Left = 460
          Top = 16
          Width = 36
          Height = 17
          Align = alCustom
          Caption = 'marca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 591
          Top = 20
          Width = 49
          Height = 15
          Anchors = []
          Caption = 'MODELO'
          ExplicitLeft = 647
          ExplicitTop = 19
        end
        object Label9: TLabel
          Left = 734
          Top = 18
          Width = 45
          Height = 17
          Align = alCustom
          Caption = 'modelo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
      end
      object GridPanel16: TGridPanel
        Left = 8
        Top = 359
        Width = 825
        Height = 56
        Anchors = []
        ColumnCollection = <
          item
            Value = 16.666666666666670000
          end
          item
            Value = 16.666666666666670000
          end
          item
            Value = 16.666666666666670000
          end
          item
            Value = 16.666666666666670000
          end
          item
            Value = 16.666666666666670000
          end
          item
            Value = 16.666666666666650000
          end>
        ControlCollection = <
          item
            Column = 2
            Control = Label10
            Row = 0
          end
          item
            Column = 3
            Control = Label11
            Row = 0
          end
          item
            Column = 4
            Control = Label12
            Row = 0
          end
          item
            Column = 5
            Control = Label13
            Row = 0
          end
          item
            Column = 0
            Control = Label14
            Row = 0
          end
          item
            Column = 1
            Control = Label15
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 5
        ExplicitLeft = 29
        ExplicitTop = 351
        DesignSize = (
          825
          56)
        object Label10: TLabel
          Left = 314
          Top = 20
          Width = 60
          Height = 15
          Anchors = []
          Caption = 'ANO MOD.'
          ExplicitLeft = 366
          ExplicitTop = 25
        end
        object Label11: TLabel
          Left = 446
          Top = 16
          Width = 68
          Height = 17
          Align = alCustom
          Caption = 'anoModelo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 592
          Top = 20
          Width = 52
          Height = 15
          Anchors = []
          Caption = 'ANO FAB.'
          ExplicitLeft = 654
        end
        object Label13: TLabel
          Left = 718
          Top = 20
          Width = 85
          Height = 17
          Align = alCustom
          Caption = 'anoFabrica'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 57
          Top = 20
          Width = 24
          Height = 15
          Anchors = []
          Caption = 'COR'
          ExplicitLeft = 44
        end
        object Label15: TLabel
          Left = 172
          Top = 20
          Width = 60
          Height = 17
          Align = alCustom
          Caption = 'corVeiculo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object GridPanel11: TGridPanel
      Left = 959
      Top = 10
      Width = 682
      Height = 559
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 60.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 350.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 60.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end>
      ControlCollection = <>
      RowCollection = <
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end
        item
          Value = 7.692307692307693000
        end>
      TabOrder = 3
    end
    object GridPanel12: TGridPanel
      Left = 959
      Top = 625
      Width = 649
      Height = 136
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = GridPanel13
          Row = 0
        end
        item
          Column = 1
          Control = GridPanel14
          Row = 0
        end
        item
          Column = 0
          Control = pnlAprovar
          Row = 1
        end
        item
          Column = 1
          Control = pnlRecusar
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 4
      DesignSize = (
        649
        136)
      object GridPanel13: TGridPanel
        Left = 4
        Top = 14
        Width = 318
        Height = 41
        Anchors = []
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ControlCollection = <>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 6
      end
      object GridPanel14: TGridPanel
        Left = 328
        Top = 14
        Width = 317
        Height = 41
        Anchors = []
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = lblTotal
            Row = 0
          end
          item
            Column = 1
            Control = lblValorTotal
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 1
        ExplicitLeft = 480
        ExplicitTop = 6
        object lblTotal: TLabel
          Left = 1
          Top = 1
          Width = 158
          Height = 39
          Align = alClient
          Alignment = taRightJustify
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 3
          ExplicitTop = 6
          ExplicitWidth = 235
        end
        object lblValorTotal: TLabel
          Left = 159
          Top = 1
          Width = 157
          Height = 39
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 296
          ExplicitWidth = 175
        end
      end
      object pnlAprovar: TPanel
        Left = 70
        Top = 76
        Width = 185
        Height = 51
        Anchors = []
        Caption = 'Aprovar Or'#231'amento'
        Color = clChartreuse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = pnlAprovarClick
        ExplicitTop = 72
      end
      object pnlRecusar: TPanel
        Left = 394
        Top = 77
        Width = 185
        Height = 49
        Anchors = []
        Caption = 'Recusar Or'#231'amento'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        ExplicitTop = 80
      end
    end
  end
  object DSPedido: TDataSource
    DataSet = DM.QueryPedidos
    Left = 40
    Top = 168
  end
  object DSOrcamento: TDataSource
    Left = 40
    Top = 240
  end
end
