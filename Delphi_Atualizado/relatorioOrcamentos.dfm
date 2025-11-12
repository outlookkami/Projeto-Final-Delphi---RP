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
    object RLBand2: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 272
    end
  end
end
