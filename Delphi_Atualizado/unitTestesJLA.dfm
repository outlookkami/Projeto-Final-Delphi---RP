object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    624
    441)
  TextHeight = 15
  object GridPanel1: TGridPanel
    AlignWithMargins = True
    Left = -1
    Top = 0
    Width = 620
    Height = 435
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'GridPanel1'
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
        Control = Panel6
        Row = 0
      end
      item
        Column = 1
        Control = GridPanel2
        Row = 0
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end
      item
      end>
    TabOrder = 0
    ExplicitWidth = 626
    ExplicitHeight = 441
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 303
      Height = 210
      Align = alClient
      Caption = 'Panel6'
      TabOrder = 0
      ExplicitLeft = 2
    end
    object GridPanel2: TGridPanel
      Left = 310
      Top = 1
      Width = 309
      Height = 216
      Align = alClient
      Caption = 'GridPanel2'
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
          Control = Panel1
          Row = 0
        end
        item
          Column = 1
          Control = Panel2
          Row = 0
        end
        item
          Column = 0
          Control = Panel3
          Row = 1
        end
        item
          Column = 1
          Control = Panel4
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 1
      ExplicitLeft = 313
      ExplicitTop = 4
      ExplicitWidth = 185
      ExplicitHeight = 41
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 154
        Height = 107
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        ExplicitTop = 34
        ExplicitWidth = 120
        ExplicitHeight = 41
      end
      object Panel2: TPanel
        Left = 155
        Top = 1
        Width = 153
        Height = 107
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        ExplicitLeft = 216
        ExplicitTop = 34
        ExplicitWidth = 124
        ExplicitHeight = 41
      end
      object Panel3: TPanel
        Left = 1
        Top = 108
        Width = 154
        Height = 107
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 2
        ExplicitLeft = 3
        ExplicitTop = 114
      end
      object Panel4: TPanel
        Left = 155
        Top = 108
        Width = 153
        Height = 107
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 3
        ExplicitLeft = 216
        ExplicitTop = 141
        ExplicitWidth = 124
        ExplicitHeight = 41
      end
    end
  end
end
