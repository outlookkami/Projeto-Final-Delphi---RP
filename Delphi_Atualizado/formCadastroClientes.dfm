object formCadastroDeClientes: TformCadastroDeClientes
  Left = 0
  Top = 0
  Caption = 'formCadastroDeClientes'
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
      ExplicitLeft = 0
      ExplicitTop = 5
    end
    object pnlLogin: TPanel
      Left = 641
      Top = 24
      Width = 478
      Height = 659
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
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
        ExplicitTop = -5
      end
      object gridPanelLogin: TGridPanel
        Left = 8
        Top = 48
        Width = 465
        Height = 601
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
            Control = LableV1
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
            Control = Label8
            Row = 14
          end
          item
            Column = 0
            Control = dbleSenha
            Row = 15
          end
          item
            Column = 0
            Control = Label9
            Row = 16
          end
          item
            Column = 0
            Control = dbleConfSenha
            Row = 17
          end
          item
            Column = 0
            Control = Label10
            Row = 18
          end
          item
            Column = 0
            Control = Label11
            Row = 19
          end
          item
            Column = 0
            Control = pnlCadastrar
            Row = 20
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
          465
          601)
        object LableV1: TLabel
          Left = 230
          Top = 3
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 185
          ExplicitTop = 4
        end
        object dbleNome: TDBLabeledEdit
          Left = 59
          Top = 51
          Width = 346
          Height = 29
          Anchors = []
          TabOrder = 0
          TextHint = 'Digite seu nome completo'
          EditLabel.Width = 118
          EditLabel.Height = 21
          EditLabel.Caption = 'Nome Completo:'
        end
        object Label2: TLabel
          Left = 230
          Top = 58
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 64
        end
        object dbleTelefone: TDBLabeledEdit
          Left = 59
          Top = 106
          Width = 346
          Height = 29
          Anchors = []
          TabOrder = 1
          TextHint = 'Digite seu telefone com DDD'
          EditLabel.Width = 115
          EditLabel.Height = 21
          EditLabel.Caption = 'Telefone/Celular:'
        end
        object Label3: TLabel
          Left = 230
          Top = 112
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 125
        end
        object dbleEmail: TDBLabeledEdit
          Left = 60
          Top = 161
          Width = 344
          Height = 29
          Anchors = []
          TabOrder = 2
          TextHint = 'Digite seu email'
          EditLabel.Width = 47
          EditLabel.Height = 21
          EditLabel.Caption = 'E-mail:'
        end
        object Label4: TLabel
          Left = 230
          Top = 167
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 185
        end
        object dbleCEP: TDBLabeledEdit
          Left = 60
          Top = 215
          Width = 344
          Height = 29
          Anchors = []
          TabOrder = 3
          TextHint = 'Digite seu CEP'
          EditLabel.Width = 30
          EditLabel.Height = 21
          EditLabel.Caption = 'CEP:'
        end
        object Label5: TLabel
          Left = 230
          Top = 222
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 250
        end
        object dbleEndereco: TDBLabeledEdit
          Left = 59
          Top = 270
          Width = 347
          Height = 29
          Anchors = []
          TabOrder = 4
          TextHint = 'Informe a rua'
          EditLabel.Width = 67
          EditLabel.Height = 21
          EditLabel.Caption = 'Endere'#231'o:'
        end
        object Label6: TLabel
          Left = 230
          Top = 276
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 311
        end
        object GridPanel3: TGridPanel
          Left = 47
          Top = 301
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
            TextHint = 'N'#176' do endere'#231'o'
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
            TextHint = 'Seu bairro'
            EditLabel.Width = 45
            EditLabel.Height = 21
            EditLabel.Caption = 'Bairro:'
          end
        end
        object Label7: TLabel
          Left = 230
          Top = 331
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 373
        end
        object GridPanel4: TGridPanel
          Left = 43
          Top = 355
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
            TextHint = 'Nome da sua cidade'
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
            TextHint = 'UF do estado'
            EditLabel.Width = 22
            EditLabel.Height = 21
            EditLabel.Caption = 'UF:'
          end
        end
        object Label8: TLabel
          Left = 230
          Top = 385
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 226
          ExplicitTop = 387
        end
        object dbleSenha: TLabeledEdit
          Left = 63
          Top = 434
          Width = 339
          Height = 29
          Anchors = []
          EditLabel.Width = 46
          EditLabel.Height = 21
          EditLabel.Caption = 'Senha:'
          TabOrder = 7
          Text = ''
          TextHint = 'Crie uma senha'
        end
        object Label9: TLabel
          Left = 230
          Top = 440
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 202
          ExplicitTop = 462
        end
        object dbleConfSenha: TLabeledEdit
          Left = 64
          Top = 488
          Width = 337
          Height = 29
          Anchors = []
          EditLabel.Width = 125
          EditLabel.Height = 21
          EditLabel.Caption = 'Confirme a senha:'
          TabOrder = 8
          Text = ''
          TextHint = 'Redigite a senha '
        end
        object Label10: TLabel
          Left = 230
          Top = 495
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 198
        end
        object Label11: TLabel
          Left = 230
          Top = 522
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 198
        end
        object pnlCadastrar: TPanel
          Left = 140
          Top = 546
          Width = 185
          Height = 41
          Cursor = crHandPoint
          Anchors = []
          Caption = 'Cadastrar'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 9
          OnClick = pnlCadastrarClick
        end
      end
    end
  end
end
