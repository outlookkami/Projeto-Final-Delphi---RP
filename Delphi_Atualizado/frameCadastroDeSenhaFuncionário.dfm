object frameCadSenhaFuncionario: TframeCadSenhaFuncionario
  Left = 0
  Top = 0
  Width = 741
  Height = 546
  TabOrder = 0
  object pnlSenhaFuncionario: TPanel
    Left = 24
    Top = 48
    Width = 673
    Height = 433
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object lblCadastrandoSenhaFunc: TLabel
      Left = 1
      Top = 1
      Width = 671
      Height = 38
      Align = alTop
      Alignment = taCenter
      Caption = 'Cadastre a senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -28
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 210
    end
    object pnlCadSenhaFunc: TPanel
      Left = 104
      Top = 68
      Width = 473
      Height = 297
      TabOrder = 0
      object GridPanel1: TGridPanel
        Left = 32
        Top = 24
        Width = 409
        Height = 249
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Label2
            Row = 1
          end
          item
            Column = 0
            Control = DBLabeledEdit1
            Row = 2
          end
          item
            Column = 0
            Control = DBLabeledEdit2
            Row = 0
          end
          item
            Column = 0
            Control = Label1
            Row = 3
          end
          item
            Column = 0
            Control = DBLabeledEdit3
            Row = 4
          end
          item
            Column = 0
            Control = Label3
            Row = 5
          end
          item
            Column = 0
            Control = pnlBotaoCadastrarSenha
            Row = 6
          end>
        RowCollection = <
          item
            Value = 12.500000000000000000
          end
          item
            Value = 12.500000000000000000
          end
          item
            Value = 12.500000000000000000
          end
          item
            Value = 12.500000000000000000
          end
          item
            Value = 12.500000000000000000
          end
          item
            Value = 12.500000000000000000
          end
          item
            Value = 12.500000000000000000
          end
          item
            Value = 12.500000000000000000
          end>
        TabOrder = 0
        DesignSize = (
          409
          249)
        object Label2: TLabel
          Left = 203
          Top = 40
          Width = 3
          Height = 15
          Anchors = []
          ExplicitLeft = 187
        end
        object DBLabeledEdit1: TDBLabeledEdit
          Left = 36
          Top = 87
          Width = 337
          Height = 29
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          EditLabel.Width = 111
          EditLabel.Height = 21
          EditLabel.Caption = 'Crie uma senha:'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -16
          EditLabel.Font.Name = 'Segoe UI'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
        end
        object DBLabeledEdit2: TDBLabeledEdit
          Left = 36
          Top = 25
          Width = 337
          Height = 29
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          EditLabel.Width = 85
          EditLabel.Height = 21
          EditLabel.Caption = 'Funcion'#225'rio:'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -16
          EditLabel.Font.Name = 'Segoe UI'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
        end
        object Label1: TLabel
          Left = 203
          Top = 101
          Width = 3
          Height = 15
          Anchors = []
          ExplicitLeft = 187
        end
        object DBLabeledEdit3: TDBLabeledEdit
          Left = 36
          Top = 148
          Width = 337
          Height = 29
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          EditLabel.Width = 125
          EditLabel.Height = 21
          EditLabel.Caption = 'Confirme a senha:'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -16
          EditLabel.Font.Name = 'Segoe UI'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
        end
        object Label3: TLabel
          Left = 187
          Top = 163
          Width = 34
          Height = 15
          Anchors = []
          Caption = 'Label3'
          ExplicitTop = 155
        end
        object pnlBotaoCadastrarSenha: TPanel
          Left = 112
          Top = 186
          Width = 185
          Height = 41
          Anchors = []
          Caption = 'Cadastrar Senha'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -18
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
        end
      end
    end
  end
end
