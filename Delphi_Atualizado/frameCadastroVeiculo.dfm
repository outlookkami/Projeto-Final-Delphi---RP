object Frame4: TFrame4
  Left = 0
  Top = 0
  Width = 824
  Height = 653
  TabOrder = 0
  DesignSize = (
    824
    653)
  object pnlSenhaFuncionario: TPanel
    Left = 83
    Top = 32
    Width = 673
    Height = 569
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object lblCadastrandoVeiculo: TLabel
      Left = 1
      Top = 1
      Width = 671
      Height = 38
      Align = alTop
      Alignment = taCenter
      Caption = 'Cadastre o ve'#237'culo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -28
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 17
      ExplicitTop = 0
    end
    object pnlCadSenhaFunc: TPanel
      Left = 56
      Top = 60
      Width = 561
      Height = 469
      TabOrder = 0
      object TPanel
        Left = 40
        Top = 140
        Width = 481
        Height = 261
        TabOrder = 0
        object GridPanel2: TGridPanel
          Left = 0
          Top = 11
          Width = 481
          Height = 250
          ColumnCollection = <
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = dbleModeloVeiculo
              Row = 0
            end
            item
              Column = 0
              Control = Label1
              Row = 1
            end
            item
              Column = 0
              Control = dbleMarcaVeiculo
              Row = 2
            end
            item
              Column = 0
              Control = Label3
              Row = 3
            end
            item
              Column = 0
              Control = dbleCorVeiculo
              Row = 4
            end
            item
              Column = 0
              Control = Label4
              Row = 5
            end
            item
              Column = 0
              Control = dbleAnoVeiculo
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
            481
            250)
          object dbleModeloVeiculo: TDBLabeledEdit
            Left = 72
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
            TabOrder = 0
            EditLabel.Width = 56
            EditLabel.Height = 21
            EditLabel.Caption = 'Modelo:'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -16
            EditLabel.Font.Name = 'Segoe UI'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            ExplicitTop = 75
          end
          object Label1: TLabel
            Left = 239
            Top = 40
            Width = 3
            Height = 15
            Anchors = []
            ExplicitLeft = 187
            ExplicitTop = 101
          end
          object dbleMarcaVeiculo: TDBLabeledEdit
            Left = 72
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
            TabOrder = 1
            EditLabel.Width = 46
            EditLabel.Height = 21
            EditLabel.Caption = 'Marca:'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -16
            EditLabel.Font.Name = 'Segoe UI'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            ExplicitTop = 126
          end
          object Label3: TLabel
            Left = 239
            Top = 102
            Width = 3
            Height = 15
            Anchors = []
            ExplicitLeft = 223
            ExplicitTop = 118
          end
          object dbleCorVeiculo: TDBLabeledEdit
            Left = 73
            Top = 149
            Width = 335
            Height = 26
            Anchors = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            EditLabel.Width = 28
            EditLabel.Height = 21
            EditLabel.Caption = 'Cor:'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -16
            EditLabel.Font.Name = 'Segoe UI'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            ExplicitTop = 151
          end
          object Label4: TLabel
            Left = 239
            Top = 164
            Width = 3
            Height = 15
            Anchors = []
            ExplicitLeft = 223
            ExplicitTop = 167
          end
          object dbleAnoVeiculo: TDBLabeledEdit
            Left = 71
            Top = 211
            Width = 338
            Height = 27
            Anchors = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            EditLabel.Width = 31
            EditLabel.Height = 21
            EditLabel.Caption = 'Ano:'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -16
            EditLabel.Font.Name = 'Segoe UI'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            ExplicitTop = 214
          end
        end
      end
      object Panel1: TPanel
        Left = 40
        Top = 16
        Width = 481
        Height = 129
        TabOrder = 1
        object GridPanel1: TGridPanel
          Left = 0
          Top = 0
          Width = 481
          Height = 129
          ColumnCollection = <
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = DBLabeledEdit2
              Row = 0
            end
            item
              Column = 0
              Control = Label2
              Row = 1
            end
            item
              Column = 0
              Control = dbleChassiVeiculo
              Row = 2
            end>
          RowCollection = <
            item
              Value = 25.000000000000000000
            end
            item
              Value = 25.000000000000000000
            end
            item
              Value = 25.000000000000000000
            end
            item
              Value = 25.000000000000000000
            end>
          TabOrder = 0
          DesignSize = (
            481
            129)
          object DBLabeledEdit2: TDBLabeledEdit
            Left = 72
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
            TabOrder = 0
            EditLabel.Width = 39
            EditLabel.Height = 21
            EditLabel.Caption = 'Placa:'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -16
            EditLabel.Font.Name = 'Segoe UI'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
          end
          object Label2: TLabel
            Left = 239
            Top = 41
            Width = 3
            Height = 15
            Anchors = []
            ExplicitLeft = 223
            ExplicitTop = 43
          end
          object dbleChassiVeiculo: TDBLabeledEdit
            Left = 73
            Top = 89
            Width = 335
            Height = 29
            Anchors = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            EditLabel.Width = 48
            EditLabel.Height = 21
            EditLabel.Caption = 'Chassi:'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -16
            EditLabel.Font.Name = 'Segoe UI'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            ExplicitLeft = 72
            ExplicitTop = 94
          end
        end
      end
    end
  end
  object pnlBotaoCadastrarVeiculo: TPanel
    Left = 324
    Top = 499
    Width = 185
    Height = 41
    Anchors = []
    Caption = 'Cadastrar Ve'#237'culo'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
end
