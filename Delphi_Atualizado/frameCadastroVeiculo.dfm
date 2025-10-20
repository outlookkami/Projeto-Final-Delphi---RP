object frameCadVeiculo: TframeCadVeiculo
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
    Height = 618
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      673
      618)
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
      ExplicitWidth = 226
    end
    object pnlDadosVeículo: TPanel
      Left = 56
      Top = 72
      Width = 561
      Height = 506
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        561
        506)
      object pnlBotaoCadastrarVeiculo: TPanel
        Left = 182
        Top = 452
        Width = 185
        Height = 41
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Cadastrar Ve'#237'culo'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = pnlBotaoCadastrarVeiculoClick
      end
      object Panel1: TPanel
        Left = 32
        Top = 0
        Width = 497
        Height = 433
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 1
        object gridPanelCad2: TGridPanel
          Left = 16
          Top = -173
          Width = 464
          Height = 598
          Align = alCustom
          Anchors = []
          BevelEdges = []
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Label5
              Row = 4
            end
            item
              Column = 0
              Control = Label6
              Row = 6
            end
            item
              Column = 0
              Control = GridPanel3
              Row = 7
            end
            item
              Column = 0
              Control = lePlaca
              Row = 0
            end
            item
              Column = 0
              Control = leChassi
              Row = 1
            end
            item
              Column = 0
              Control = leMarca
              Row = 3
            end
            item
              Column = 0
              Control = leModelo
              Row = 5
            end
            item
              Column = 0
              Control = GridPanel2
              Row = 8
            end
            item
              Column = 0
              Control = Label3
              Row = 2
            end>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          RowCollection = <
            item
              Value = 11.111111111111110000
            end
            item
              Value = 11.111111111111110000
            end
            item
              Value = 11.111111111111110000
            end
            item
              Value = 11.111111111111110000
            end
            item
              Value = 11.111111111111110000
            end
            item
              Value = 11.111111111111110000
            end
            item
              Value = 11.111111111111110000
            end
            item
              Value = 11.111111111111110000
            end
            item
              Value = 11.111111111111100000
            end
            item
              SizeStyle = ssAuto
            end>
          TabOrder = 0
          DesignSize = (
            464
            598)
          object Label5: TLabel
            Left = 230
            Top = 288
            Width = 4
            Height = 21
            Anchors = []
            ExplicitLeft = 193
            ExplicitTop = 250
          end
          object Label6: TLabel
            Left = 230
            Top = 421
            Width = 4
            Height = 21
            Anchors = []
            ExplicitLeft = 193
            ExplicitTop = 311
          end
          object GridPanel3: TGridPanel
            Left = 35
            Top = 470
            Width = 394
            Height = 56
            Anchors = []
            BevelOuter = bvNone
            Color = clHighlight
            ColumnCollection = <
              item
                Value = 40.735354790552790000
              end
              item
                Value = 59.264645209447220000
              end>
            ControlCollection = <
              item
                Column = 1
                Control = leCor
                Row = 0
              end
              item
                Column = 0
                Control = GridPanel1
                Row = 0
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            TabOrder = 0
            DesignSize = (
              394
              56)
            object leCor: TLabeledEdit
              Left = 164
              Top = 25
              Width = 226
              Height = 29
              Anchors = []
              EditLabel.Width = 28
              EditLabel.Height = 21
              EditLabel.Caption = 'Cor:'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clWhite
              EditLabel.Font.Height = -16
              EditLabel.Font.Name = 'Segoe UI'
              EditLabel.Font.Style = []
              EditLabel.ParentFont = False
              TabOrder = 0
              Text = ''
              TextHint = 'Informe a cor'
            end
            object GridPanel1: TGridPanel
              Left = 16
              Top = 1
              Width = 142
              Height = 54
              Align = alCustom
              BevelOuter = bvNone
              Color = clHighlight
              ColumnCollection = <
                item
                  Value = 100.000000000000000000
                end>
              ControlCollection = <
                item
                  Column = 0
                  Control = lblAno
                  Row = 0
                end
                item
                  Column = 0
                  Control = cbAno
                  Row = 1
                end>
              ParentBackground = False
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
              object lblAno: TLabel
                Left = 14
                Top = 0
                Width = 31
                Height = 21
                Align = alCustom
                Caption = 'Ano:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object cbAno: TComboBox
                Left = 8
                Top = 24
                Width = 126
                Height = 29
                Align = alCustom
                TabOrder = 0
                TextHint = 'Ano do modelo'
                Items.Strings = (
                  '2026'
                  '2025'
                  '2024'
                  '2023'
                  '2022'
                  '2021'
                  '2020'
                  '2019'
                  '2018'
                  '2017'
                  '2016'
                  '2015'
                  '2014'
                  '2013'
                  '2012'
                  '2011'
                  '2010'
                  '2009'
                  '2008'
                  '2007'
                  '2006'
                  '2005'
                  '2004'
                  '2003'
                  '2002'
                  '2001'
                  '2000'
                  '1999'
                  '1998'
                  '1997'
                  '1996'
                  '1995'
                  '1994'
                  '1993'
                  '1992'
                  '1991'
                  '1990'
                  '1989'
                  '1988'
                  '1987'
                  '1986'
                  '1985'
                  '1984'
                  '1983'
                  '1982'
                  '1981'
                  '1980'
                  '1979'
                  '1978'
                  '1977'
                  '1976'
                  '1975'
                  '1974'
                  '1973'
                  '1972'
                  '1971'
                  '1970'
                  '1969'
                  '1968'
                  '1967'
                  '1966'
                  '1965')
              end
            end
          end
          object lePlaca: TLabeledEdit
            Left = 59
            Top = 231
            Width = 366
            Height = 29
            Align = alCustom
            EditLabel.Width = 39
            EditLabel.Height = 21
            EditLabel.Caption = 'Placa:'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWhite
            EditLabel.Font.Height = -16
            EditLabel.Font.Name = 'Segoe UI'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            TabOrder = 1
            Text = ''
            TextHint = 'Informe a placa do seu ve'#237'culo'
          end
          object leChassi: TLabeledEdit
            Left = 59
            Top = 298
            Width = 366
            Height = 29
            Align = alCustom
            EditLabel.Width = 48
            EditLabel.Height = 21
            EditLabel.Caption = 'Chassi:'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWhite
            EditLabel.Font.Height = -16
            EditLabel.Font.Name = 'Segoe UI'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            TabOrder = 2
            Text = ''
            TextHint = 'Informe o chassi do ve'#237'culo'
          end
          object leMarca: TLabeledEdit
            Left = 59
            Top = 362
            Width = 366
            Height = 29
            Align = alCustom
            EditLabel.Width = 46
            EditLabel.Height = 21
            EditLabel.Caption = 'Marca:'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWhite
            EditLabel.Font.Height = -16
            EditLabel.Font.Name = 'Segoe UI'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            TabOrder = 3
            Text = ''
            TextHint = 'Informe a marca do ve'#237'culo'
          end
          object leModelo: TLabeledEdit
            Left = 59
            Top = 428
            Width = 366
            Height = 29
            Align = alCustom
            EditLabel.Width = 56
            EditLabel.Height = 21
            EditLabel.Caption = 'Modelo:'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWhite
            EditLabel.Font.Height = -16
            EditLabel.Font.Name = 'Segoe UI'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            TabOrder = 4
            Text = ''
            TextHint = 'Informe o modelo do ve'#237'culo'
          end
          object GridPanel2: TGridPanel
            Left = 0
            Top = 1050
            Width = 465
            Height = 57
            Align = alCustom
            Anchors = []
            BevelOuter = bvNone
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 60.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 350.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 50.000000000000000000
              end>
            ControlCollection = <>
            RowCollection = <
              item
                Value = 100.000000000000000000
              end
              item
                SizeStyle = ssAuto
              end>
            TabOrder = 5
          end
          object Label3: TLabel
            Left = 230
            Top = 155
            Width = 4
            Height = 21
            Anchors = []
            ExplicitLeft = 193
            ExplicitTop = 125
          end
        end
      end
    end
  end
  object DSVeiculos: TDataSource
    DataSet = DM.QueryVeiculos
    Left = 115
    Top = 80
  end
end
