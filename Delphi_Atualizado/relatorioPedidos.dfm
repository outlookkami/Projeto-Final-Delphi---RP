object formRepPedidos: TformRepPedidos
  Left = 0
  Top = 0
  Caption = 'formRepPedidos'
  ClientHeight = 701
  ClientWidth = 1151
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Transparent = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btHeader
      Transparent = False
      object RLDraw1: TRLDraw
        Left = 3
        Top = 61
        Width = 715
        Height = 16
        DrawKind = dkLine
        Transparent = False
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        Align = faClientTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 320
        Top = 28
        Width = 39
        Height = 16
        Text = ''
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 435
      Width = 718
      Height = 64
      BandType = btFooter
      Transparent = False
      object RLDraw2: TRLDraw
        Left = 1
        Top = 0
        Width = 715
        Height = 16
        Align = faCenterTop
        DrawKind = dkLine
        Transparent = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 681
        Top = 22
        Width = 37
        Height = 16
        Align = faRightOnly
        Info = itNow
        Text = ''
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 216
      BandType = btColumnHeader
      Transparent = False
      object RLPanel2: TRLPanel
        Left = 1
        Top = 32
        Width = 718
        Height = 40
        Color = clInfoBk
        ParentColor = False
        Transparent = False
        object RLDBText2: TRLDBText
          Left = 152
          Top = 3
          Width = 74
          Height = 16
          DataField = 'data_pedido'
          DataSource = crudPedidos.DSPedidos
          Text = ''
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 3
          Top = 3
          Width = 87
          Height = 16
          DataField = 'codigo_pedido'
          DataSource = crudPedidos.DSPedidos
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 304
          Top = 3
          Width = 85
          Height = 16
          DataField = 'status_pedido'
          DataSource = crudPedidos.DSPedidos
          Text = ''
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 472
          Top = 3
          Width = 110
          Height = 16
          DataField = 'codigo_orcamento'
          DataSource = crudOrcamentos.DSOrcamentos
          Text = ''
          Transparent = False
        end
      end
      object RLPanel1: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 33
        Align = faTop
        Transparent = False
        object RLPanel3: TRLPanel
          Left = 0
          Top = 0
          Width = 718
          Height = 33
          Align = faTop
          Color = clInfoBk
          ParentColor = False
          Transparent = False
          object RLLabel3: TRLLabel
            Left = 152
            Top = 8
            Width = 36
            Height = 18
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel4: TRLLabel
            Left = 304
            Top = 8
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
          object RLLabel2: TRLLabel
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
          object RLLabel5: TRLLabel
            Left = 472
            Top = 8
            Width = 119
            Height = 18
            Caption = 'Cod. Orcamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 329
      Width = 718
      Height = 106
      Transparent = False
      object RLLabel6: TRLLabel
        Left = 3
        Top = 16
        Width = 123
        Height = 18
        Caption = 'Total de pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 163
        Top = 16
        Width = 196
        Height = 18
        Caption = 'Convertidos em or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBResult1: TRLDBResult
        Left = 3
        Top = 40
        Width = 46
        Height = 16
        DataField = 'codigo_pedido'
        DataSource = crudPedidos.DSPedidos
        Info = riCount
        Text = ''
        Transparent = False
      end
      object RLDBResult2: TRLDBResult
        Left = 163
        Top = 40
        Width = 46
        Height = 16
        DataField = 'codigo_orcamento'
        DataSource = crudPedidos.DSPedidos
        Info = riCount
        Text = ''
        Transparent = False
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.1.2 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 712
    Top = 280
  end
end
