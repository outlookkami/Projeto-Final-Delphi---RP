object formCadastroFuncionarios: TformCadastroFuncionarios
  Left = 0
  Top = 0
  Caption = 'Form Cadastro Funcion'#225'rios'
  ClientHeight = 719
  ClientWidth = 1167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GridPanel1: TGridPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1161
    Height = 713
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
        Control = pnlilustrativo
        Row = 0
      end
      item
        Column = 1
        Control = pnlLogin
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    ShowCaption = False
    TabOrder = 0
    object pnlilustrativo: TPanel
      Left = 1
      Top = 1
      Width = 580
      Height = 711
      Align = alClient
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
    end
    object pnlLogin: TPanel
      Left = 641
      Top = 1
      Width = 478
      Height = 704
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      DesignSize = (
        478
        704)
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 476
        Height = 50
        Align = alTop
        Alignment = taCenter
        Caption = 'Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 147
      end
      object gridPanelLogin: TGridPanel
        Left = 16
        Top = 48
        Width = 451
        Height = 639
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelEdges = []
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = lblVazio5
            Row = 0
          end
          item
            Column = 0
            Control = dbleNome
            Row = 1
          end
          item
            Column = 0
            Control = Label2
            Row = 2
          end
          item
            Column = 0
            Control = dbleTelefone
            Row = 3
          end
          item
            Column = 0
            Control = Label3
            Row = 4
          end
          item
            Column = 0
            Control = dbleEmail
            Row = 5
          end
          item
            Column = 0
            Control = Label4
            Row = 6
          end
          item
            Column = 0
            Control = dbleCEP
            Row = 7
          end
          item
            Column = 0
            Control = Label5
            Row = 8
          end
          item
            Column = 0
            Control = dbleEndereco
            Row = 9
          end
          item
            Column = 0
            Control = Label6
            Row = 10
          end
          item
            Column = 0
            Control = GridPanel3
            Row = 11
          end
          item
            Column = 0
            Control = Label7
            Row = 12
          end
          item
            Column = 0
            Control = GridPanel4
            Row = 13
          end
          item
            Column = 0
            Control = pnlSelecionaFuncao
            Row = 15
          end
          item
            Column = 0
            Control = Label9
            Row = 16
          end
          item
            Column = 0
            Control = Label8
            Row = 14
          end
          item
            Column = 0
            Control = dbleCPF
            Row = 17
          end
          item
            Column = 0
            Control = Label10
            Row = 18
          end
          item
            Column = 0
            Control = dbleRG
            Row = 19
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454546000
          end
          item
            Value = 4.545454545454532000
          end>
        TabOrder = 0
        DesignSize = (
          451
          639)
        object lblVazio5: TLabel
          Left = 223
          Top = 4
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 185
        end
        object dbleNome: TDBLabeledEdit
          Left = 52
          Top = 53
          Width = 346
          Height = 29
          Anchors = []
          TabOrder = 0
          TextHint = 'Digite seu nome completo'
          EditLabel.Width = 118
          EditLabel.Height = 21
          EditLabel.Hint = 'Digite seu nome'
          EditLabel.Caption = 'Nome Completo:'
          EditLabel.ParentShowHint = False
          EditLabel.ShowHint = True
        end
        object Label2: TLabel
          Left = 223
          Top = 62
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 64
        end
        object dbleTelefone: TDBLabeledEdit
          Left = 52
          Top = 111
          Width = 346
          Height = 29
          Anchors = []
          TabOrder = 1
          TextHint = 'Digite seu telefone com DDD'
          EditLabel.Width = 115
          EditLabel.Height = 21
          EditLabel.Caption = 'Telefone/Celular:'
          ExplicitTop = 110
        end
        object Label3: TLabel
          Left = 223
          Top = 120
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 125
        end
        object dbleEmail: TDBLabeledEdit
          Left = 53
          Top = 169
          Width = 344
          Height = 29
          Anchors = []
          TabOrder = 2
          TextHint = 'Digite seu email'
          EditLabel.Width = 47
          EditLabel.Height = 21
          EditLabel.Hint = 'Digite seu email'
          EditLabel.Caption = 'E-mail:'
          ExplicitTop = 175
        end
        object Label4: TLabel
          Left = 223
          Top = 178
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 185
        end
        object dbleCEP: TDBLabeledEdit
          Left = 53
          Top = 227
          Width = 344
          Height = 29
          Anchors = []
          TabOrder = 3
          TextHint = 'Digite seu CEP'
          EditLabel.Width = 30
          EditLabel.Height = 21
          EditLabel.Caption = 'CEP:'
          ExplicitTop = 225
        end
        object Label5: TLabel
          Left = 223
          Top = 236
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 250
        end
        object dbleEndereco: TDBLabeledEdit
          Left = 52
          Top = 285
          Width = 347
          Height = 29
          Anchors = []
          TabOrder = 4
          TextHint = 'Informe a rua'
          EditLabel.Width = 67
          EditLabel.Height = 21
          EditLabel.Caption = 'Endere'#231'o:'
          ExplicitTop = 282
        end
        object Label6: TLabel
          Left = 223
          Top = 294
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 311
        end
        object GridPanel3: TGridPanel
          Left = 40
          Top = 320
          Width = 370
          Height = 56
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
              Control = dbleNumero
              Row = 0
            end
            item
              Column = 1
              Control = dbleBairro
              Row = 0
            end>
          ParentBackground = False
          ParentColor = True
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 5
          ExplicitTop = 316
          DesignSize = (
            370
            56)
          object dbleNumero: TDBLabeledEdit
            Left = 13
            Top = 25
            Width = 124
            Height = 29
            Anchors = []
            TabOrder = 0
            EditLabel.Width = 18
            EditLabel.Height = 21
            EditLabel.Caption = 'N'#176
          end
          object dbleBairro: TDBLabeledEdit
            Left = 161
            Top = 25
            Width = 199
            Height = 29
            Anchors = []
            TabOrder = 1
            EditLabel.Width = 45
            EditLabel.Height = 21
            EditLabel.Caption = 'Bairro:'
          end
        end
        object Label7: TLabel
          Left = 223
          Top = 353
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 373
        end
        object GridPanel4: TGridPanel
          Left = 36
          Top = 378
          Width = 379
          Height = 58
          Anchors = []
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 69.309943023817620000
            end
            item
              Value = 30.690056976182380000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = dbleCidade
              Row = 0
            end
            item
              Column = 1
              Control = dbleUF
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
          TabOrder = 6
          ExplicitTop = 373
          DesignSize = (
            379
            58)
          object dbleCidade: TDBLabeledEdit
            Left = 17
            Top = 26
            Width = 229
            Height = 29
            Anchors = []
            TabOrder = 0
            EditLabel.Width = 51
            EditLabel.Height = 21
            EditLabel.Caption = 'Cidade:'
          end
          object dbleUF: TDBLabeledEdit
            Left = 278
            Top = 26
            Width = 86
            Height = 29
            Anchors = []
            TabOrder = 1
            EditLabel.Width = 22
            EditLabel.Height = 21
            EditLabel.Caption = 'UF:'
          end
        end
        object pnlSelecionaFuncao: TPanel
          Left = 33
          Top = 436
          Width = 384
          Height = 64
          Anchors = []
          BevelOuter = bvNone
          TabOrder = 7
          ExplicitTop = 430
          object lblSelecionaFuncao: TLabel
            Left = 24
            Top = 3
            Width = 132
            Height = 21
            Caption = 'Selecione a fun'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object DBComboBox1: TDBComboBox
            Left = 24
            Top = 25
            Width = 345
            Height = 29
            TabOrder = 0
          end
        end
        object Label9: TLabel
          Left = 223
          Top = 469
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 202
          ExplicitTop = 504
        end
        object Label8: TLabel
          Left = 223
          Top = 411
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 202
        end
        object dbleCPF: TDBLabeledEdit
          Left = 59
          Top = 518
          Width = 333
          Height = 29
          Anchors = []
          TabOrder = 8
          TextHint = 'Digite seu CEP'
          EditLabel.Width = 30
          EditLabel.Height = 21
          EditLabel.Caption = 'CPF:'
          ExplicitTop = 512
        end
        object Label10: TLabel
          Left = 223
          Top = 527
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 198
          ExplicitTop = 520
        end
        object dbleRG: TDBLabeledEdit
          Left = 61
          Top = 576
          Width = 328
          Height = 29
          Anchors = []
          TabOrder = 9
          TextHint = 'Digite seu nome completo'
          EditLabel.Width = 24
          EditLabel.Height = 21
          EditLabel.Caption = 'RG:'
          ExplicitTop = 569
        end
      end
      object Panel1: TPanel
        Left = 114
        Top = 660
        Width = 254
        Height = 37
        Anchors = []
        Caption = 'Cadastrar Funcion'#225'rio'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 652
      end
    end
  end
end
