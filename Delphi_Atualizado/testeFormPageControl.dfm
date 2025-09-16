object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 701
  ClientWidth = 1150
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1153
    Height = 65
    TabOrder = 0
    object SpeedButton4: TSpeedButton
      Left = 40
      Top = 16
      Width = 73
      Height = 22
      Caption = 'In'#237'cio'
    end
    object SpeedButton5: TSpeedButton
      Left = 136
      Top = 16
      Width = 65
      Height = 22
      Caption = 'P'#225'gina'
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 88
    Width = 1153
    Height = 73
    Color = clHighlight
    ColumnCollection = <
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
    ControlCollection = <
      item
        Column = 0
        Control = SpeedButton1
        Row = 0
      end
      item
        Column = 2
        Control = SpeedButton3
        Row = 0
      end
      item
        Column = 1
        Control = Panel2
        Row = 0
      end>
    ParentBackground = False
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 1
    DesignSize = (
      1153
      73)
    object SpeedButton1: TSpeedButton
      Left = 117
      Top = 25
      Width = 55
      Height = 22
      Anchors = []
      Caption = 'In'#237'cio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
      ExplicitLeft = 42
    end
    object SpeedButton3: TSpeedButton
      Left = 709
      Top = 25
      Width = 23
      Height = 22
      Anchors = []
      ExplicitLeft = 248
      ExplicitTop = 16
    end
    object Panel2: TPanel
      Left = 340
      Top = 16
      Width = 185
      Height = 41
      Anchors = []
      BevelOuter = bvNone
      Caption = 'P'#225'gina'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = Panel2Click
      ExplicitLeft = 392
      ExplicitTop = 24
    end
  end
  object PageControl1: TPageControl
    Left = -3
    Top = 167
    Width = 1145
    Height = 538
    ActivePage = TabSheet1
    Align = alCustom
    Style = tsFlatButtons
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'In'#237'cio'
    end
    object TabSheet2: TTabSheet
      Caption = 'P'#225'gina'
      ImageIndex = 1
    end
  end
end
