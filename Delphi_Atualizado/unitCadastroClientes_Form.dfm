object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
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
    ExplicitLeft = -10
    ExplicitTop = -33
    ExplicitWidth = 1177
    ExplicitHeight = 752
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
      ExplicitTop = 0
    end
    object pnlLogin: TPanel
      Left = 639
      Top = 47
      Width = 476
      Height = 618
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      ExplicitLeft = 647
      ExplicitWidth = 484
      ExplicitHeight = 657
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 474
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
        ExplicitLeft = 183
        ExplicitTop = 8
        ExplicitWidth = 147
      end
      object gridPanelLogin: TGridPanel
        Left = 16
        Top = 48
        Width = 449
        Height = 537
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
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555555000
          end
          item
            Value = 5.555555555555541000
          end>
        TabOrder = 0
        DesignSize = (
          449
          537)
        object lblVazio5: TLabel
          Left = 222
          Top = 4
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 185
        end
        object dbleNome: TDBLabeledEdit
          Left = 51
          Top = 54
          Width = 346
          Height = 29
          Anchors = []
          TabOrder = 0
          TextHint = 'Digite seu nome completo'
          EditLabel.Width = 118
          EditLabel.Height = 21
          EditLabel.Caption = 'Nome Completo:'
          ExplicitTop = 61
        end
        object Label2: TLabel
          Left = 222
          Top = 64
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
        end
        object dbleTelefone: TDBLabeledEdit
          Left = 51
          Top = 113
          Width = 346
          Height = 29
          Anchors = []
          TabOrder = 1
          TextHint = 'Digite seu telefone com DDD'
          EditLabel.Width = 115
          EditLabel.Height = 21
          EditLabel.Caption = 'Telefone/Celular:'
          ExplicitLeft = 63
          ExplicitTop = 116
        end
        object Label3: TLabel
          Left = 222
          Top = 123
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 125
        end
        object dbleEmail: TDBLabeledEdit
          Left = 52
          Top = 173
          Width = 344
          Height = 29
          Anchors = []
          TabOrder = 2
          TextHint = 'Digite seu email'
          EditLabel.Width = 47
          EditLabel.Height = 21
          EditLabel.Caption = 'E-mail:'
          ExplicitTop = 180
        end
        object Label4: TLabel
          Left = 222
          Top = 183
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 185
        end
        object dbleCEP: TDBLabeledEdit
          Left = 52
          Top = 233
          Width = 344
          Height = 29
          Anchors = []
          TabOrder = 3
          TextHint = 'Digite seu CEP'
          EditLabel.Width = 30
          EditLabel.Height = 21
          EditLabel.Caption = 'CEP:'
          ExplicitLeft = 65
          ExplicitTop = 239
        end
        object Label5: TLabel
          Left = 222
          Top = 243
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 250
        end
        object dbleEndereco: TDBLabeledEdit
          Left = 51
          Top = 292
          Width = 347
          Height = 29
          Anchors = []
          TabOrder = 4
          TextHint = 'Informe a rua'
          EditLabel.Width = 67
          EditLabel.Height = 21
          EditLabel.Caption = 'Endere'#231'o:'
          ExplicitLeft = 8
          ExplicitTop = 300
        end
        object Label6: TLabel
          Left = 222
          Top = 302
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 311
        end
        object GridPanel3: TGridPanel
          Left = 39
          Top = 328
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
          ExplicitLeft = 24
          ExplicitTop = 337
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
          Left = 222
          Top = 362
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 373
        end
        object GridPanel4: TGridPanel
          Left = 35
          Top = 388
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
            end>
          TabOrder = 6
          ExplicitLeft = 24
          ExplicitTop = 399
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
            ExplicitLeft = 16
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
            ExplicitLeft = 275
          end
        end
      end
    end
  end
end
