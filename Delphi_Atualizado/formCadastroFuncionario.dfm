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
    Caption = 'Selecione a UF'
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 1
        Control = pnlLogin
        Row = 0
      end
      item
        Column = 0
        Control = pnlilustrativo
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
    ExplicitLeft = -2
    ExplicitTop = 8
    object pnlLogin: TPanel
      Left = 641
      Top = 5
      Width = 478
      Height = 704
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
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
            Control = Label2
            Row = 2
          end
          item
            Column = 0
            Control = Label3
            Row = 4
          end
          item
            Column = 0
            Control = Label4
            Row = 6
          end
          item
            Column = 0
            Control = Label5
            Row = 8
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
            Control = Label10
            Row = 18
          end
          item
            Column = 0
            Control = leCEP
            Row = 7
          end
          item
            Column = 0
            Control = leEmail
            Row = 5
          end
          item
            Column = 0
            Control = leTelefone
            Row = 3
          end
          item
            Column = 0
            Control = leNome
            Row = 1
          end
          item
            Column = 0
            Control = leEndereco
            Row = 9
          end
          item
            Column = 0
            Control = LabeledEdit1
            Row = 17
          end
          item
            Column = 0
            Control = LabeledEdit2
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
        object Label2: TLabel
          Left = 223
          Top = 62
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 64
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
        object Label4: TLabel
          Left = 223
          Top = 178
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 193
          ExplicitTop = 185
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
              Control = leNumero
              Row = 0
            end
            item
              Column = 1
              Control = leBairro
              Row = 0
            end>
          ParentBackground = False
          ParentColor = True
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          DesignSize = (
            370
            56)
          object leNumero: TLabeledEdit
            Left = 15
            Top = 25
            Width = 121
            Height = 29
            Anchors = []
            EditLabel.Width = 18
            EditLabel.Height = 21
            EditLabel.Caption = 'N'#176
            TabOrder = 0
            Text = ''
            TextHint = 'N'#250'mero do endere'#231'o'
          end
          object leBairro: TLabeledEdit
            Left = 164
            Top = 25
            Width = 193
            Height = 29
            Anchors = []
            EditLabel.Width = 45
            EditLabel.Height = 21
            EditLabel.Caption = 'Bairro:'
            TabOrder = 1
            Text = ''
            TextHint = 'Informe o bairro'
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
              Control = leCidade
              Row = 0
            end
            item
              Column = 1
              Control = GridPanel7
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
            379
            58)
          object leCidade: TLabeledEdit
            Left = 18
            Top = 26
            Width = 227
            Height = 29
            Anchors = []
            EditLabel.Width = 51
            EditLabel.Height = 21
            EditLabel.Caption = 'Cidade:'
            TabOrder = 0
            Text = ''
            TextHint = 'Informe a cidade'
          end
          object GridPanel7: TGridPanel
            Left = 263
            Top = 0
            Width = 185
            Height = 58
            Align = alLeft
            BevelOuter = bvNone
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label12
                Row = 0
              end
              item
                Column = 0
                Control = cbUF
                Row = 1
              end>
            RowCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 20.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 100.000000000000000000
              end>
            TabOrder = 1
            object Label12: TLabel
              Left = 0
              Top = 0
              Width = 185
              Height = 20
              Align = alClient
              Caption = 'UF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 22
              ExplicitHeight = 21
            end
            object cbUF: TComboBox
              Left = 0
              Top = 25
              Width = 98
              Height = 29
              Align = alCustom
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 0
              Items.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MG'
                'MS'
                'MT'
                'PA'
                'PB'
                'PE'
                'PI'
                'PR'
                'RJ'
                'RN'
                'RO'
                'RR'
                'RS'
                'SC'
                'SE'
                'SP'
                'TO')
            end
          end
        end
        object pnlSelecionaFuncao: TPanel
          Left = 33
          Top = 436
          Width = 384
          Height = 64
          Anchors = []
          BevelOuter = bvNone
          TabOrder = 2
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
          object cbFuncao: TComboBox
            Left = 23
            Top = 30
            Width = 338
            Height = 29
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 0
            TextHint = 'Selecione a fun'#231#227'o'
            Items.Strings = (
              'Funileiro'
              'Montador/Desmontador'
              'PintorAutomotivo'
              'Preparador de pintura')
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
        object Label10: TLabel
          Left = 223
          Top = 527
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 198
          ExplicitTop = 520
        end
        object leCEP: TLabeledEdit
          Left = 53
          Top = 227
          Width = 344
          Height = 29
          Anchors = []
          EditLabel.Width = 30
          EditLabel.Height = 21
          EditLabel.Caption = 'CEP:'
          TabOrder = 3
          Text = ''
          TextHint = 'Informe seu CEP'
          OnExit = leCEPExit
          ExplicitTop = 233
        end
        object leEmail: TLabeledEdit
          Left = 52
          Top = 169
          Width = 346
          Height = 29
          Anchors = []
          EditLabel.Width = 44
          EditLabel.Height = 21
          EditLabel.Caption = 'E-mail'
          TabOrder = 4
          Text = ''
          TextHint = 'Digite o endere'#231'o de e-mail'
        end
        object leTelefone: TLabeledEdit
          Left = 53
          Top = 111
          Width = 344
          Height = 29
          Anchors = []
          EditLabel.Width = 115
          EditLabel.Height = 21
          EditLabel.Caption = 'Telefone/Celular:'
          EditMask = '!\(99\)00000-0000;1;_'
          MaxLength = 14
          TabOrder = 5
          Text = '(  )     -    '
          TextHint = 'Informe seu n'#250'mero de telefone'
        end
        object leNome: TLabeledEdit
          Left = 55
          Top = 53
          Width = 341
          Height = 29
          Anchors = []
          EditLabel.Width = 115
          EditLabel.Height = 21
          EditLabel.Caption = 'Nome completo:'
          TabOrder = 6
          Text = ''
          TextHint = 'Digite o nome completo'
        end
        object leEndereco: TLabeledEdit
          Left = 53
          Top = 285
          Width = 344
          Height = 29
          Anchors = []
          EditLabel.Width = 67
          EditLabel.Height = 21
          EditLabel.Caption = 'Endere'#231'o:'
          TabOrder = 7
          Text = ''
          TextHint = 'Informe o endere'#231'o'
        end
        object LabeledEdit1: TLabeledEdit
          Left = 58
          Top = 518
          Width = 335
          Height = 29
          Anchors = []
          EditLabel.Width = 30
          EditLabel.Height = 21
          EditLabel.Caption = 'CPF:'
          TabOrder = 8
          Text = ''
          TextHint = 'Informe o CPF'
        end
        object LabeledEdit2: TLabeledEdit
          Left = 59
          Top = 576
          Width = 332
          Height = 29
          Anchors = []
          EditLabel.Width = 24
          EditLabel.Height = 21
          EditLabel.Caption = 'RG:'
          TabOrder = 9
          Text = ''
          TextHint = 'Informe o RG'
        end
      end
      object pnlCadastrarFunc: TPanel
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
      end
    end
    object pnlilustrativo: TPanel
      Left = 1
      Top = 1
      Width = 580
      Height = 711
      Align = alClient
      Color = clHighlight
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = -2
    end
  end
  object RESTClient1: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 76
    Top = 332
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 180
    Top = 332
  end
  object RESTResponse1: TRESTResponse
    Left = 292
    Top = 332
  end
end
