object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
    ExplicitLeft = 8
    ExplicitTop = 8
    DesignSize = (
      1150
      701)
    object lblDescServico: TLabel
      Left = 99
      Top = 573
      Width = 400
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
      Left = 331
      Top = 16
      Width = 541
      Height = 65
      Anchors = [akLeft, akTop, akRight]
      Caption = 'INSERIR LOGO'
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 281
    end
    object memoDescricaoDoServiço: TMemo
      Left = 99
      Top = 599
      Width = 978
      Height = 217
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      ImeMode = imDisable
      Lines.Strings = (
        'memoDescricaoDoServi'#231'o')
      TabOrder = 1
      StyleName = 'Windows'
    end
    object GridPanel1: TGridPanel
      Left = 99
      Top = 103
      Width = 942
      Height = 362
      Caption = 'GridPanel1'
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
        end>
      RowCollection = <
        item
          Value = 20.000000000000000000
        end
        item
          Value = 20.000000000000000000
        end
        item
          Value = 20.000000000000000000
        end
        item
          Value = 20.000000000000000000
        end
        item
          Value = 20.000000000000000000
        end>
      TabOrder = 2
      DesignSize = (
        942
        362)
      object GridPanel2: TGridPanel
        Left = 12
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
            Value = 33.333333333333340000
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
        ExplicitLeft = 0
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
          ExplicitLeft = 0
          ExplicitTop = 8
          ExplicitWidth = 246
          ExplicitHeight = 41
          object lblOrcamento: TLabel
            Left = 53
            Top = 16
            Width = 94
            Height = 25
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
            Width = 144
            Height = 53
            Align = alLeft
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
          ExplicitLeft = 0
          ExplicitTop = 8
          ExplicitWidth = 246
          ExplicitHeight = 41
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
          ExplicitLeft = 617
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
        Left = 13
        Top = 80
        Width = 915
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
        ExplicitLeft = 12
        DesignSize = (
          915
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
        Left = 14
        Top = 152
        Width = 914
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
        ExplicitLeft = 13
        ExplicitTop = 144
        DesignSize = (
          914
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
          Height = 25
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
          Width = 144
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
    end
  end
  object DSPedido: TDataSource
    DataSet = DM.QueryPedidos
    Left = 144
    Top = 32
  end
end
