object formVerOrcamento: TformVerOrcamento
  Left = 0
  Top = 0
  Caption = 'Ver Or'#231'amento'
  ClientHeight = 1015
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
    Height = 1015
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1150
      1015)
    object lblDescServico: TLabel
      Left = 103
      Top = 439
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
      Left = 11
      Top = 8
      Width = 86
      Height = 65
      Anchors = [akLeft, akTop, akRight]
      Caption = 'INSERIR LOGO'
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
    end
    object memoDescricaoDoServiço: TMemo
      Left = 103
      Top = 465
      Width = 954
      Height = 97
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      ImeMode = imDisable
      Lines.Strings = (
        '')
      TabOrder = 1
      StyleName = 'Windows'
    end
    object GridPanel1: TGridPanel
      Left = 103
      Top = 8
      Width = 954
      Height = 425
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
        954
        425)
      object GridPanel2: TGridPanel
        Left = 18
        Top = 8
        Width = 917
        Height = 57
        Anchors = []
        Caption = 'GridPanel2'
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
        object GridPanel3: TGridPanel
          Left = 1
          Top = 1
          Width = 305
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
            Left = 153
            Top = 1
            Width = 3
            Height = 53
            Align = alLeft
            ExplicitHeight = 15
          end
        end
        object GridPanel4: TGridPanel
          Left = 306
          Top = 1
          Width = 305
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
            Left = 153
            Top = 1
            Width = 3
            Height = 53
            Align = alLeft
            ExplicitHeight = 15
          end
        end
        object GridPanel5: TGridPanel
          Left = 611
          Top = 1
          Width = 305
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
            Left = 153
            Top = 1
            Width = 3
            Height = 53
            Align = alLeft
            ExplicitHeight = 15
          end
        end
      end
      object GridPanel6: TGridPanel
        Left = 19
        Top = 78
        Width = 916
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
        DesignSize = (
          916
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
        Left = 19
        Top = 149
        Width = 916
        Height = 57
        Anchors = []
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 280.000000000000000000
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
        DesignSize = (
          916
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
          Left = 489
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
        Left = 19
        Top = 219
        Width = 916
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
            Control = lblCódigoCliente
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
        DesignSize = (
          916
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
        object lblCódigoCliente: TLabel
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
    end
    object GridPanel9: TGridPanel
      Left = 122
      Top = 298
      Width = 916
      Height = 54
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
          Control = lblPlaca
          Row = 0
        end
        item
          Column = 1
          Control = lblPlacaVeic
          Row = 0
        end
        item
          Column = 2
          Control = lblMarc
          Row = 0
        end
        item
          Column = 3
          Control = lblMarca
          Row = 0
        end
        item
          Column = 4
          Control = lblMod
          Row = 0
        end
        item
          Column = 5
          Control = lblModelo
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
      DesignSize = (
        916
        54)
      object lblPlaca: TLabel
        Left = 58
        Top = 19
        Width = 37
        Height = 15
        Anchors = []
        Caption = 'PLACA'
        ExplicitLeft = 33
        ExplicitTop = 25
      end
      object lblPlacaVeic: TLabel
        Left = 196
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
      object lblMarc: TLabel
        Left = 361
        Top = 19
        Width = 42
        Height = 15
        Anchors = []
        Caption = 'MARCA'
        ExplicitLeft = 343
      end
      object lblMarca: TLabel
        Left = 517
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
      object lblMod: TLabel
        Left = 662
        Top = 19
        Width = 49
        Height = 15
        Anchors = []
        Caption = 'MODELO'
        ExplicitLeft = 647
      end
      object lblModelo: TLabel
        Left = 822
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
    object GridPanel10: TGridPanel
      Left = 121
      Top = 375
      Width = 916
      Height = 58
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
          Control = lblAnoMod
          Row = 0
        end
        item
          Column = 3
          Control = lblAnoModelo
          Row = 0
        end
        item
          Column = 4
          Control = Label1
          Row = 0
        end
        item
          Column = 5
          Control = Label2
          Row = 0
        end
        item
          Column = 0
          Control = Label3
          Row = 0
        end
        item
          Column = 1
          Control = Label4
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 4
      DesignSize = (
        916
        58)
      object lblAnoMod: TLabel
        Left = 352
        Top = 21
        Width = 60
        Height = 15
        Anchors = []
        Caption = 'ANO MOD.'
        ExplicitLeft = 366
        ExplicitTop = 25
      end
      object lblAnoModelo: TLabel
        Left = 506
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
      object Label1: TLabel
        Left = 660
        Top = 21
        Width = 52
        Height = 15
        Anchors = []
        Caption = 'ANO FAB.'
        ExplicitLeft = 654
        ExplicitTop = 20
      end
      object Label2: TLabel
        Left = 806
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
      object Label3: TLabel
        Left = 65
        Top = 21
        Width = 24
        Height = 15
        Anchors = []
        Caption = 'COR'
        ExplicitLeft = 44
        ExplicitTop = 20
      end
      object Label4: TLabel
        Left = 197
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
    object GridPanel11: TGridPanel
      Left = 103
      Top = 568
      Width = 954
      Height = 338
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 25.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 20.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 33.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 50.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end>
      ControlCollection = <>
      RowCollection = <
        item
          Value = 11.111111111111110000
        end
        item
          Value = 11.111111111111110000
        end
        item
          Value = 11.111111111111110000
        end
        item
          Value = 11.111111111111110000
        end
        item
          Value = 11.111111111111110000
        end
        item
          Value = 11.111111111111110000
        end
        item
          Value = 11.111111111111110000
        end
        item
          Value = 11.111111111111110000
        end
        item
          Value = 11.111111111111100000
        end>
      TabOrder = 5
    end
    object GridPanel12: TGridPanel
      Left = 103
      Top = 928
      Width = 954
      Height = 81
      Caption = 'GridPanel12'
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
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 6
    end
  end
  object DSPedido: TDataSource
    DataSet = DM.QueryPedidos
    Left = 40
    Top = 168
  end
  object DSOrcamento: TDataSource
    Left = 48
    Top = 216
  end
end
