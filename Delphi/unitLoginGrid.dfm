object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 654
  ClientWidth = 1027
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GridPanel1: TGridPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1021
    Height = 648
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
    ExplicitWidth = 888
    ExplicitHeight = 510
    object pnlilustrativo: TPanel
      Left = 1
      Top = 1
      Width = 510
      Height = 646
      Align = alClient
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 443
      ExplicitHeight = 508
    end
    object pnlLogin: TPanel
      Left = 568
      Top = 47
      Width = 406
      Height = 553
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      ExplicitLeft = 501
      ExplicitWidth = 340
      ExplicitHeight = 415
      object gridPanelLogin: TGridPanel
        Left = 24
        Top = 23
        Width = 363
        Height = 507
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
            Control = lblLogin
            Row = 0
          end
          item
            Column = 0
            Control = lblVazio1
            Row = 1
          end
          item
            Column = 0
            Control = lblUsuario
            Row = 2
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
        ExplicitWidth = 297
        ExplicitHeight = 369
        DesignSize = (
          363
          507)
        object lblLogin: TLabel
          Left = 142
          Top = 9
          Width = 79
          Height = 45
          Anchors = []
          Caption = 'Login'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 91
          ExplicitTop = 0
        end
        object lblVazio1: TLabel
          Left = 180
          Top = 87
          Width = 3
          Height = 15
          Anchors = []
          ExplicitLeft = 125
          ExplicitTop = 61
        end
        object lblUsuario: TLabeledEdit
          Left = 16
          Top = 158
          Width = 331
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 43
          EditLabel.Height = 15
          EditLabel.Caption = 'Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = ''
          TextHint = 'Digite seu usu'#225'rio ou email'
          StyleName = 'Usu'#225'rio:'
        end
      end
    end
  end
end
