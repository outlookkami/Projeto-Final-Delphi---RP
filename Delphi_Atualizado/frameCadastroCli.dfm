object Frame2: TFrame2
  Left = 0
  Top = 0
  Width = 1183
  Height = 758
  TabOrder = 0
  object GridPanel1: TGridPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1177
    Height = 752
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = pnlilustrativo
        Row = 0
      end
      item
        Column = 1
        Control = pnlLogin
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
    ExplicitWidth = 1021
    ExplicitHeight = 648
    object pnlilustrativo: TPanel
      Left = 1
      Top = 1
      Width = 588
      Height = 750
      Align = alClient
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 510
      ExplicitHeight = 646
    end
    object pnlLogin: TPanel
      Left = 647
      Top = 47
      Width = 484
      Height = 657
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      ExplicitLeft = 568
      ExplicitWidth = 406
      ExplicitHeight = 553
      object gridPanelLogin: TGridPanel
        Left = 24
        Top = 21
        Width = 441
        Height = 611
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
            Control = lblVazio1
            Row = 1
          end
          item
            Column = 0
            Control = lblVazio3
            Row = 5
          end
          item
            Column = 0
            Control = pnlEntrar
            Row = 6
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 9.090909090909092000
          end
          item
            Value = 9.090909090909092000
          end
          item
            Value = 9.090909090909092000
          end
          item
            Value = 9.090909090909092000
          end
          item
            Value = 9.090909090909092000
          end
          item
            Value = 9.090909090909092000
          end
          item
            Value = 9.090909090909092000
          end
          item
            Value = 9.090909090909092000
          end
          item
            Value = 9.090909090909092000
          end
          item
            Value = 9.090909090909092000
          end
          item
            Value = 9.090909090909092000
          end
          item
          end>
        TabOrder = 0
        ExplicitWidth = 363
        ExplicitHeight = 507
        DesignSize = (
          441
          611)
        object lblVazio1: TLabel
          Left = 218
          Top = 73
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 158
          ExplicitTop = 84
        end
        object lblVazio3: TLabel
          Left = 218
          Top = 295
          Width = 4
          Height = 21
          Anchors = []
          ExplicitLeft = 150
          ExplicitTop = 338
        end
        object pnlEntrar: TPanel
          Left = 128
          Top = 340
          Width = 185
          Height = 41
          Anchors = []
          Caption = 'Entrar'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 120
          ExplicitTop = 509
        end
      end
    end
  end
end
