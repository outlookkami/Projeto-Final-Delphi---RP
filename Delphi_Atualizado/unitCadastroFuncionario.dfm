object frameCadastroFunc: TframeCadastroFunc
  Left = 0
  Top = 0
  Width = 1183
  Height = 758
  TabOrder = 0
  object pnlBaseLogin: TPanel
    Left = 0
    Top = 0
    Width = 1183
    Height = 758
    Align = alClient
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 1167
    ExplicitHeight = 719
    object pnlLogin: TPanel
      AlignWithMargins = True
      Left = 285
      Top = 4
      Width = 616
      Height = 750
      Cursor = crHandPoint
      Align = alClient
      BevelOuter = bvSpace
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 600
      ExplicitHeight = 711
      object pnlLogin2: TPanel
        Left = 73
        Top = 27
        Width = 480
        Height = 709
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 464
        ExplicitHeight = 670
        DesignSize = (
          480
          709)
        object lblNome: TLabel
          Left = 32
          Top = 81
          Width = 134
          Height = 60
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Nome Completo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 118
          ExplicitHeight = 21
        end
        object lblTelefone: TLabel
          Left = 32
          Top = 145
          Width = 131
          Height = 60
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Telefone/Celular:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 115
          ExplicitHeight = 21
        end
        object lblCadastro: TLabel
          Left = 0
          Top = 15
          Width = 480
          Height = 45
          Align = alTop
          Alignment = taCenter
          Caption = 'Cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 126
        end
        object lblEspaco: TLabel
          Left = 0
          Top = 0
          Width = 480
          Height = 15
          Align = alTop
          Alignment = taCenter
          ExplicitWidth = 3
        end
        object Label1: TLabel
          Left = 0
          Top = 60
          Width = 480
          Height = 15
          Align = alTop
          Alignment = taCenter
          ExplicitWidth = 3
        end
        object lblEspaco2: TLabel
          Left = 0
          Top = 694
          Width = 480
          Height = 15
          Align = alBottom
          ExplicitTop = 655
          ExplicitWidth = 3
        end
        object lblAvisoUsuario: TLabel
          Left = 24
          Top = 184
          Width = 3
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblAvisoSenha: TLabel
          Left = 24
          Top = 280
          Width = 3
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblEmail: TLabel
          Left = 33
          Top = 205
          Width = 63
          Height = 60
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'E-mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 47
          ExplicitHeight = 21
        end
        object lblCEP: TLabel
          Left = 33
          Top = 261
          Width = 46
          Height = 60
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 30
          ExplicitHeight = 21
        end
        object lblEndereco: TLabel
          Left = 32
          Top = 325
          Width = 83
          Height = 60
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 67
          ExplicitHeight = 21
        end
        object lblNumero: TLabel
          Left = 32
          Top = 392
          Width = 77
          Height = 60
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'N'#250'mero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 61
          ExplicitHeight = 21
        end
        object lblBairro: TLabel
          Left = 136
          Top = 392
          Width = 61
          Height = 60
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 45
          ExplicitHeight = 21
        end
        object lblCidade: TLabel
          Left = 33
          Top = 456
          Width = 67
          Height = 60
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 51
          ExplicitHeight = 21
        end
        object lblUF: TLabel
          Left = 345
          Top = 456
          Width = 38
          Height = 60
          Anchors = [akLeft, akTop, akRight, akBottom]
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
        object lblFuncao: TLabel
          Left = 33
          Top = 520
          Width = 53
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Fun'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblSenha: TLabel
          Left = 33
          Top = 584
          Width = 46
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Senha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtTelefone: TEdit
          Left = 33
          Top = 168
          Width = 419
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 1
          TextHint = 'Digite seu n'#250'mero de telefone'
          ExplicitWidth = 403
        end
        object edtNome: TEdit
          Left = 33
          Top = 108
          Width = 419
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          TextHint = 'Digite seu nome completo'
          ExplicitWidth = 403
        end
        object pnlCadastrar: TPanel
          Left = 113
          Top = 681
          Width = 247
          Height = 41
          Cursor = crHandPoint
          ParentCustomHint = False
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Cadastrar'
          Color = clMenuHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          ExplicitWidth = 231
        end
        object edtEmail: TEdit
          Left = 33
          Top = 232
          Width = 419
          Height = 23
          Hint = 'Esse ser'#225' seu nome de usu'#225'rio'
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          TextHint = 'Digite seu endere'#231'o de Email'
          ExplicitWidth = 403
        end
        object edtCEP: TEdit
          Left = 33
          Top = 288
          Width = 419
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 4
          TextHint = 'Digite seu CEP'
          ExplicitWidth = 403
        end
        object edtEndereco: TEdit
          Left = 32
          Top = 352
          Width = 420
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 5
          TextHint = 'Digite seu endere'#231'o'
          ExplicitWidth = 404
        end
        object edtNumero: TEdit
          Left = 32
          Top = 419
          Width = 98
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 6
          TextHint = 'N'#176
        end
        object edtBairro: TEdit
          Left = 136
          Top = 419
          Width = 316
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 7
          TextHint = 'Digite seu bairro'
        end
        object edtCidade: TEdit
          Left = 33
          Top = 483
          Width = 306
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 8
          TextHint = 'Digite sua cidade'
        end
        object edtUF: TEdit
          Left = 346
          Top = 483
          Width = 103
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 9
          TextHint = 'UF'
        end
        object edtSenhaa: TEdit
          Left = 33
          Top = 611
          Width = 416
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          PasswordChar = '*'
          TabOrder = 10
          TextHint = 'Crie uma senha'
        end
        object cmboxFuncao: TComboBox
          Left = 33
          Top = 547
          Width = 408
          Height = 23
          TabOrder = 11
          Text = 'cmboxFuncao'
          TextHint = 'Selecione uma fun'#231#227'o'
        end
      end
    end
    object pnlLayoutLogin: TPanel
      Left = 904
      Top = 1
      Width = 278
      Height = 756
      Align = alRight
      BevelOuter = bvNone
      Color = clHighlight
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 907
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 281
      Height = 756
      Align = alLeft
      BevelOuter = bvNone
      Color = clHighlight
      ParentBackground = False
      TabOrder = 2
      ExplicitLeft = -2
    end
  end
end
