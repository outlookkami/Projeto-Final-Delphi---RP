object formPortfólio: TformPortfólio
  Left = 0
  Top = 0
  Caption = 'Portf'#243'lio'
  ClientHeight = 701
  ClientWidth = 1150
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlPortfolio: TPanel
    Left = 0
    Top = 0
    Width = 1150
    Height = 701
    Align = alClient
    TabOrder = 0
    object lblPortfolio: TLabel
      Left = 544
      Top = 24
      Width = 72
      Height = 25
      Caption = 'Portf'#243'lio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object GridPanel1: TGridPanel
      Left = 24
      Top = 64
      Width = 1105
      Height = 625
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 340.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 340.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 340.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = pnlPort1
          Row = 0
        end
        item
          Column = 1
          Control = lblV1
          Row = 0
        end
        item
          Column = 2
          Control = Panel1
          Row = 0
        end
        item
          Column = 3
          Control = lblV2
          Row = 0
        end
        item
          Column = 4
          Control = Panel2
          Row = 0
        end
        item
          Column = 0
          Control = lblV3
          Row = 1
        end
        item
          Column = 1
          Control = lblV4
          Row = 1
        end
        item
          Column = 2
          Control = lblV5
          Row = 1
        end
        item
          Column = 3
          Control = lblV6
          Row = 1
        end
        item
          Column = 4
          Control = lblV7
          Row = 1
        end
        item
          Column = 0
          Control = Panel3
          Row = 2
        end
        item
          Column = 1
          Control = lblV8
          Row = 2
        end
        item
          Column = 2
          Control = Panel4
          Row = 2
        end
        item
          Column = 3
          Control = lblV9
          Row = 2
        end
        item
          Column = 4
          Control = Panel5
          Row = 2
        end>
      RowCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 300.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 30.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 300.000000000000000000
        end>
      TabOrder = 0
      DesignSize = (
        1105
        625)
      object pnlPort1: TPanel
        Left = 1
        Top = 1
        Width = 340
        Height = 300
        Align = alClient
        TabOrder = 0
        object imgPort1: TImage
          Left = 48
          Top = 24
          Width = 241
          Height = 201
        end
        object MemoInfoPort1: TMemo
          Left = 48
          Top = 239
          Width = 241
          Height = 48
          Lines.Strings = (
            'MemoInfoPort1')
          TabOrder = 0
        end
        object DBImage1: TDBImage
          Left = 48
          Top = 24
          Width = 241
          Height = 201
          TabOrder = 1
        end
      end
      object lblV1: TLabel
        Left = 359
        Top = 143
        Width = 3
        Height = 15
        Anchors = []
        ExplicitLeft = 348
      end
      object Panel1: TPanel
        Left = 381
        Top = 1
        Width = 340
        Height = 300
        Align = alClient
        TabOrder = 1
        object MemoInfoPort2: TMemo
          Left = 40
          Top = 239
          Width = 257
          Height = 48
          Lines.Strings = (
            'MemoInfoPort1')
          TabOrder = 0
        end
        object DBImage2: TDBImage
          Left = 40
          Top = 24
          Width = 257
          Height = 201
          TabOrder = 1
        end
      end
      object lblV2: TLabel
        Left = 739
        Top = 143
        Width = 3
        Height = 15
        Anchors = []
        ExplicitLeft = 721
        ExplicitTop = 142
      end
      object Panel2: TPanel
        Left = 761
        Top = 1
        Width = 340
        Height = 300
        Align = alClient
        TabOrder = 2
        object imgPort3: TImage
          Left = 48
          Top = 24
          Width = 241
          Height = 201
        end
        object MemoInfoPort3: TMemo
          Left = 48
          Top = 239
          Width = 241
          Height = 48
          Lines.Strings = (
            'MemoInfoPort1')
          TabOrder = 0
        end
      end
      object lblV3: TLabel
        Left = 169
        Top = 308
        Width = 3
        Height = 15
        Anchors = []
        ExplicitLeft = 158
      end
      object lblV4: TLabel
        Left = 359
        Top = 308
        Width = 3
        Height = 15
        Anchors = []
        ExplicitLeft = 348
      end
      object lblV5: TLabel
        Left = 549
        Top = 308
        Width = 3
        Height = 15
        Anchors = []
        ExplicitLeft = 538
      end
      object lblV6: TLabel
        Left = 739
        Top = 308
        Width = 3
        Height = 15
        Anchors = []
        ExplicitLeft = 728
      end
      object lblV7: TLabel
        Left = 929
        Top = 308
        Width = 3
        Height = 15
        Anchors = []
        ExplicitLeft = 918
      end
      object Panel3: TPanel
        Left = 1
        Top = 331
        Width = 340
        Height = 300
        Align = alClient
        TabOrder = 3
        object imgPort4: TImage
          Left = 48
          Top = 24
          Width = 241
          Height = 201
        end
        object MemoInfoPort4: TMemo
          Left = 48
          Top = 239
          Width = 241
          Height = 48
          Lines.Strings = (
            'MemoInfoPort1')
          TabOrder = 0
        end
      end
      object lblV8: TLabel
        Left = 359
        Top = 473
        Width = 3
        Height = 15
        Anchors = []
        ExplicitLeft = 348
      end
      object Panel4: TPanel
        Left = 381
        Top = 331
        Width = 340
        Height = 300
        Align = alClient
        TabOrder = 4
        object imgPort5: TImage
          Left = 48
          Top = 24
          Width = 241
          Height = 201
        end
        object MemoInfoPort5: TMemo
          Left = 48
          Top = 239
          Width = 241
          Height = 48
          Lines.Strings = (
            'MemoInfoPort1')
          TabOrder = 0
        end
      end
      object lblV9: TLabel
        Left = 739
        Top = 473
        Width = 3
        Height = 15
        Anchors = []
        ExplicitLeft = 728
      end
      object Panel5: TPanel
        Left = 761
        Top = 331
        Width = 340
        Height = 300
        Align = alClient
        TabOrder = 5
        object imgPort6: TImage
          Left = 48
          Top = 24
          Width = 241
          Height = 201
        end
        object MemoInfoPort6: TMemo
          Left = 48
          Top = 239
          Width = 241
          Height = 48
          Lines.Strings = (
            'MemoInfoPort1')
          TabOrder = 0
        end
      end
    end
  end
end
