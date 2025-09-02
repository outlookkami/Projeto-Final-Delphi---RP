object formCadastroClientes: TformCadastroClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro Clientes'
  ClientHeight = 719
  ClientWidth = 1167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlBaseLogin: TPanel
    Left = 0
    Top = 0
    Width = 1167
    Height = 719
    Align = alClient
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object pnlLogin: TPanel
      AlignWithMargins = True
      Left = 285
      Top = 4
      Width = 600
      Height = 711
      Cursor = crHandPoint
      Align = alClient
      BevelOuter = bvSpace
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pnlLogin2: TPanel
        Left = 73
        Top = 27
        Width = 464
        Height = 670
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          464
          670)
        object lblNome: TLabel
          Left = 32
          Top = 81
          Width = 118
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Nome Completo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblTelefone: TLabel
          Left = 32
          Top = 145
          Width = 115
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Telefone/Celular:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblCadastro: TLabel
          Left = 0
          Top = 15
          Width = 464
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
          Width = 464
          Height = 15
          Align = alTop
          Alignment = taCenter
          ExplicitWidth = 3
        end
        object Label1: TLabel
          Left = 0
          Top = 60
          Width = 464
          Height = 15
          Align = alTop
          Alignment = taCenter
          ExplicitWidth = 3
        end
        object lblEspaco2: TLabel
          Left = 0
          Top = 655
          Width = 464
          Height = 15
          Align = alBottom
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
          Width = 47
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'E-mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblCEP: TLabel
          Left = 33
          Top = 261
          Width = 30
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblEndereco: TLabel
          Left = 32
          Top = 325
          Width = 67
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblNumero: TLabel
          Left = 32
          Top = 392
          Width = 61
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'N'#250'mero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblBairro: TLabel
          Left = 136
          Top = 392
          Width = 45
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblCidade: TLabel
          Left = 33
          Top = 456
          Width = 51
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblUF: TLabel
          Left = 345
          Top = 456
          Width = 22
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblSenha: TLabel
          Left = 33
          Top = 520
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
        object lblConfSenha: TLabel
          Left = 33
          Top = 584
          Width = 141
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Confirme sua senha:'
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
          Width = 403
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 1
          TextHint = 'Digite seu n'#250'mero de telefone'
        end
        object edtNome: TEdit
          Left = 33
          Top = 108
          Width = 403
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          TextHint = 'Digite seu nome completo'
        end
        object pnlCadastrar: TPanel
          Left = 113
          Top = 681
          Width = 231
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
        end
        object edtEmail: TEdit
          Left = 33
          Top = 232
          Width = 403
          Height = 23
          Hint = 'Esse ser'#225' seu nome de usu'#225'rio'
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          TextHint = 'Digite seu endere'#231'o de Email'
        end
        object edtCEP: TEdit
          Left = 33
          Top = 288
          Width = 403
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 4
          TextHint = 'Digite seu CEP'
        end
        object edtEndereco: TEdit
          Left = 32
          Top = 352
          Width = 404
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 5
          TextHint = 'Digite seu endere'#231'o'
        end
        object edtNumero: TEdit
          Left = 38
          Top = 419
          Width = 92
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
          Width = 300
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 7
          TextHint = 'Digite seu bairro'
        end
        object edtCidade: TEdit
          Left = 32
          Top = 483
          Width = 299
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
          Width = 83
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 9
          TextHint = 'UF'
        end
        object edtSenha: TEdit
          Left = 32
          Top = 547
          Width = 404
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          PasswordChar = '*'
          TabOrder = 10
          TextHint = 'Crie uma senha'
        end
        object edtConfSenha: TEdit
          Left = 33
          Top = 611
          Width = 404
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          PasswordChar = '*'
          TabOrder = 11
          TextHint = 'Confirme sua senha'
        end
      end
    end
    object pnlLayoutLogin: TPanel
      Left = 888
      Top = 1
      Width = 278
      Height = 717
      Align = alRight
      BevelOuter = bvNone
      Color = clHighlight
      ParentBackground = False
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 281
      Height = 717
      Align = alLeft
      BevelOuter = bvNone
      Color = clHighlight
      ParentBackground = False
      TabOrder = 2
    end
  end
end
