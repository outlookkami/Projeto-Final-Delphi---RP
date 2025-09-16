object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 1101
  Height = 698
  TabOrder = 0
  object Panel1: TPanel
    Left = 24
    Top = 3
    Width = 1049
    Height = 682
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 1047
      Height = 45
      Align = alTop
      Alignment = taCenter
      Caption = 'PERFIL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 93
    end
    object gridPanelLogin: TGridPanel
      Left = 272
      Top = 52
      Width = 513
      Height = 618
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
          Control = pnlAtualizar
          Row = 20
        end
        item
          Column = 0
          Control = dbleConfSenha
          Row = 17
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
        513
        618)
      object LableV1: TLabel
        Left = 254
        Top = 3
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 185
        ExplicitTop = 4
      end
      object dbleNome: TDBLabeledEdit
        Left = 83
        Top = 52
        Width = 346
        Height = 29
        Anchors = []
        TabOrder = 0
        TextHint = 'Digite seu nome completo'
        EditLabel.Width = 118
        EditLabel.Height = 21
        EditLabel.Caption = 'Nome Completo:'
        ExplicitLeft = 59
      end
      object Label2: TLabel
        Left = 254
        Top = 59
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 64
      end
      object dbleTelefone: TDBLabeledEdit
        Left = 83
        Top = 108
        Width = 346
        Height = 29
        Anchors = []
        TabOrder = 1
        TextHint = 'Digite seu telefone com DDD'
        EditLabel.Width = 115
        EditLabel.Height = 21
        EditLabel.Caption = 'Telefone/Celular:'
        ExplicitLeft = 59
      end
      object Label3: TLabel
        Left = 254
        Top = 115
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 125
      end
      object dbleEmail: TDBLabeledEdit
        Left = 84
        Top = 164
        Width = 344
        Height = 29
        Anchors = []
        TabOrder = 2
        TextHint = 'Digite seu email'
        EditLabel.Width = 47
        EditLabel.Height = 21
        EditLabel.Caption = 'E-mail:'
        ExplicitLeft = 60
      end
      object Label4: TLabel
        Left = 254
        Top = 172
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 185
      end
      object dbleCEP: TDBLabeledEdit
        Left = 84
        Top = 221
        Width = 344
        Height = 29
        Anchors = []
        TabOrder = 3
        TextHint = 'Digite seu CEP'
        EditLabel.Width = 30
        EditLabel.Height = 21
        EditLabel.Caption = 'CEP:'
        ExplicitLeft = 60
      end
      object Label5: TLabel
        Left = 254
        Top = 228
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 250
      end
      object dbleEndereco: TDBLabeledEdit
        Left = 83
        Top = 277
        Width = 347
        Height = 29
        Anchors = []
        TabOrder = 4
        TextHint = 'Informe a rua'
        EditLabel.Width = 67
        EditLabel.Height = 21
        EditLabel.Caption = 'Endere'#231'o:'
        ExplicitLeft = 59
      end
      object Label6: TLabel
        Left = 254
        Top = 284
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 311
      end
      object GridPanel3: TGridPanel
        Left = 71
        Top = 309
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
        ExplicitLeft = 47
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
        Left = 254
        Top = 340
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 193
        ExplicitTop = 373
      end
      object GridPanel4: TGridPanel
        Left = 67
        Top = 365
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
        ExplicitLeft = 43
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
        Left = 254
        Top = 396
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 226
        ExplicitTop = 387
      end
      object dbleSenha: TLabeledEdit
        Left = 87
        Top = 445
        Width = 339
        Height = 29
        Anchors = []
        EditLabel.Width = 46
        EditLabel.Height = 21
        EditLabel.Caption = 'Senha:'
        TabOrder = 7
        Text = ''
        TextHint = 'Crie uma senha'
        ExplicitLeft = 63
      end
      object Label9: TLabel
        Left = 254
        Top = 453
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 202
        ExplicitTop = 462
      end
      object Label10: TLabel
        Left = 254
        Top = 509
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 198
        ExplicitTop = 495
      end
      object Label11: TLabel
        Left = 254
        Top = 537
        Width = 4
        Height = 21
        Anchors = []
        ExplicitLeft = 198
        ExplicitTop = 522
      end
      object pnlAtualizar: TPanel
        Left = 164
        Top = 562
        Width = 185
        Height = 41
        Cursor = crHandPoint
        Anchors = []
        Caption = 'Atualizar'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 8
        ExplicitLeft = 140
      end
      object dbleConfSenha: TLabeledEdit
        Left = 89
        Top = 502
        Width = 335
        Height = 29
        Anchors = []
        EditLabel.Width = 125
        EditLabel.Height = 21
        EditLabel.Caption = 'Confirme a senha:'
        TabOrder = 9
        Text = ''
        TextHint = 'Redigite a senha '
        ExplicitLeft = 87
      end
    end
  end
end
