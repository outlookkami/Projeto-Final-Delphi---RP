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
      Height = 521
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        561
        521)
      object pnlBotaoCadastrarVeiculo: TPanel
        Left = 182
        Top = 471
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
        Height = 465
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 1
        object gridPanelCad2: TGridPanel
          Left = 16
          Top = -197
          Width = 464
          Height = 705
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
              Control = Label6
              Row = 6
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
            end
            item
              Column = 0
              Control = GridPanel4
              Row = 9
            end
            item
              Column = 0
              Control = Label2
              Row = 7
            end
            item
              Column = 0
              Control = Label4
              Row = 10
            end
            item
              Column = 0
              Control = GridPanel6
              Row = 11
            end>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          RowCollection = <
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end
            item
              Value = 7.692307692307693000
            end>
          TabOrder = 0
          ExplicitTop = -200
          DesignSize = (
            464
            705)
          object Label6: TLabel
            Left = 230
            Top = 342
            Width = 4
            Height = 21
            Anchors = []
            ExplicitLeft = 193
            ExplicitTop = 311
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
            TabOrder = 0
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
            TabOrder = 1
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
            TabOrder = 2
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
            TabOrder = 3
            Text = ''
            TextHint = 'Informe o modelo do ve'#237'culo'
          end
          object GridPanel2: TGridPanel
            Left = 0
            Top = 854
            Width = 465
            Height = 57
            Align = alCustom
            Anchors = []
            BevelOuter = bvNone
            ColumnCollection = <>
            ControlCollection = <>
            RowCollection = <
              item
                Value = 100.000000000000000000
              end
              item
                SizeStyle = ssAuto
              end>
            TabOrder = 4
            ExplicitTop = 1050
          end
          object Label3: TLabel
            Left = 230
            Top = 125
            Width = 4
            Height = 21
            Anchors = []
            ExplicitLeft = 193
          end
          object GridPanel4: TGridPanel
            Left = 35
            Top = 488
            Width = 394
            Height = 67
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
                Control = GridPanel5
                Row = 0
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            TabOrder = 5
            ExplicitLeft = 30
            ExplicitTop = 463
            DesignSize = (
              394
              67)
            object leCor: TLabeledEdit
              Left = 165
              Top = 31
              Width = 223
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
              ExplicitLeft = 170
            end
            object GridPanel5: TGridPanel
              Left = 11
              Top = 6
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
                  Control = Label1
                  Row = 0
                end
                item
                  Column = 0
                  Control = cbAnoMod
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
              object Label1: TLabel
                Left = 14
                Top = 0
                Width = 88
                Height = 21
                Align = alCustom
                Caption = 'Ano Modelo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object cbAnoMod: TComboBox
                Left = 16
                Top = 24
                Width = 118
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
          object Label2: TLabel
            Left = 230
            Top = 396
            Width = 4
            Height = 21
            Anchors = []
            ExplicitLeft = 209
            ExplicitTop = 374
          end
          object Label4: TLabel
            Left = 230
            Top = 559
            Width = 4
            Height = 21
            Anchors = []
            ExplicitLeft = 209
            ExplicitTop = 528
          end
          object GridPanel6: TGridPanel
            Left = 34
            Top = 597
            Width = 395
            Height = 57
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
                Control = leEmailCliente
                Row = 0
              end
              item
                Column = 0
                Control = GridPanel7
                Row = 0
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            TabOrder = 6
            ExplicitLeft = 30
            DesignSize = (
              395
              57)
            object leEmailCliente: TLabeledEdit
              Left = 168
              Top = 26
              Width = 219
              Height = 28
              Anchors = []
              EditLabel.Width = 90
              EditLabel.Height = 21
              EditLabel.Caption = 'Email cliente:'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clWhite
              EditLabel.Font.Height = -16
              EditLabel.Font.Name = 'Segoe UI'
              EditLabel.Font.Style = []
              EditLabel.ParentFont = False
              TabOrder = 0
              Text = ''
              TextHint = 'Email do cliente/dono'
              ExplicitLeft = 164
            end
            object GridPanel7: TGridPanel
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
                  Control = Label7
                  Row = 0
                end
                item
                  Column = 0
                  Control = cbAnoFab
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
              object Label7: TLabel
                Left = 14
                Top = 0
                Width = 108
                Height = 21
                Align = alCustom
                Caption = 'Ano Fabrica'#231#227'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object cbAnoFab: TComboBox
                Left = 16
                Top = 27
                Width = 118
                Height = 29
                Align = alCustom
                TabOrder = 0
                TextHint = 'Ano de fabrica'#231#227'o'
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
        end
      end
    end
  end
  object DSVeiculos: TDataSource
    DataSet = DM.QueryVeiculos
    Left = 115
    Top = 80
  end
  object RESTClient2: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 24
    Top = 152
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Params = <>
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 24
    Top = 224
  end
  object RESTResponse2: TRESTResponse
    Left = 24
    Top = 304
  end
end
