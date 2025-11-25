object formRepOrcamentos: TformRepOrcamentos
  Left = 0
  Top = 0
  Caption = 'formRepOrcamentos'
  ClientHeight = 701
  ClientWidth = 1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object repOrcamentos: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = crudOrcamentos.DSOrcamentos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btHeader
      Transparent = False
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        Align = faClientTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de or'#231'amentos '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 336
        Top = 39
        Width = 35
        Height = 15
        Alignment = taCenter
        Text = ''
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 321
      Width = 718
      Height = 80
      BandType = btFooter
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 208
      object RLPanel1: TRLPanel
        Left = 0
        Top = 3
        Width = 715
        Height = 38
        object RLLabel3: TRLLabel
          Left = 88
          Top = 3
          Width = 99
          Height = 18
          Caption = 'Data Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel1: TRLLabel
          Left = 3
          Top = 8
          Width = 55
          Height = 18
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 216
          Top = 3
          Width = 80
          Height = 18
          Caption = 'Valor MDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 336
          Top = 3
          Width = 109
          Height = 18
          Caption = 'Valor Materiais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 480
          Top = 3
          Width = 80
          Height = 18
          Caption = 'Valor Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 604
          Top = 3
          Width = 49
          Height = 18
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLDBText1: TRLDBText
        Left = 3
        Top = 47
        Width = 110
        Height = 16
        DataField = 'codigo_orcamento'
        DataSource = DSRelOrcamentos
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 96
        Top = 47
        Width = 85
        Height = 16
        DataField = 'data_emissao'
        DataSource = DSRelOrcamentos
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 216
        Top = 47
        Width = 62
        Height = 16
        DataField = 'valor_mdo'
        DataSource = DSRelOrcamentos
        Text = ''
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 336
        Top = 47
        Width = 90
        Height = 16
        DataField = 'valor_materiais'
        DataSource = DSRelOrcamentos
        Text = ''
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 480
        Top = 47
        Width = 62
        Height = 16
        DataField = 'valor_total'
        DataSource = DSRelOrcamentos
        Text = ''
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 604
        Top = 47
        Width = 108
        Height = 16
        DataField = 'status_orcamento'
        DataSource = DSRelOrcamentos
        Text = ''
        Transparent = False
      end
    end
  end
  object QueryRelOrcamentos: TFDQuery
    Connection = DM.ConexaoBanco
    SQL.Strings = (
      'SELECT'
      '  o.codigo_orcamento,'
      '  o.data_emissao,'
      '  o.valor_mdo,'
      '  o.valor_materiais,'
      '  o.valor_total,'
      '  o.status_orcamento'
      'FROM Orcamentos o'
      'WHERE o.data_emissao BETWEEN '#39'2025-10-01'#39' AND '#39'2025-11-11'#39
      'ORDER BY o.status_orcamento, o.data_emissao;')
    Left = 472
    Top = 424
  end
  object DSRelOrcamentos: TDataSource
    DataSet = QueryRelOrcamentos
    Left = 608
    Top = 424
  end
end
