object frameFormularioPedidoSemGridPanel: TframeFormularioPedidoSemGridPanel
  Left = 0
  Top = 0
  Width = 1020
  Height = 706
  TabOrder = 0
  object pnlFrameFormPedido: TPanel
    Left = 88
    Top = 32
    Width = 841
    Height = 657
    TabOrder = 0
    object lblCliente: TLabel
      Left = 48
      Top = 112
      Width = 40
      Height = 15
      Caption = 'Cliente:'
    end
    object lblCodigoCliente: TLabel
      Left = 320
      Top = 112
      Width = 99
      Height = 15
      Caption = 'C'#243'digo do Cliente:'
    end
    object lblCodigoPedido: TLabel
      Left = 488
      Top = 112
      Width = 99
      Height = 15
      Caption = 'C'#243'digo do Pedido:'
    end
    object lblContato: TLabel
      Left = 48
      Top = 176
      Width = 46
      Height = 15
      Caption = 'Contato:'
    end
    object lblEndereco: TLabel
      Left = 320
      Top = 176
      Width = 52
      Height = 15
      Caption = 'Endere'#231'o:'
    end
    object lblCEP: TLabel
      Left = 648
      Top = 176
      Width = 24
      Height = 15
      Caption = 'CEP:'
    end
    object lblData: TLabel
      Left = 648
      Top = 112
      Width = 27
      Height = 15
      Caption = 'Data:'
    end
    object lblDescrição: TLabel
      Left = 48
      Top = 297
      Width = 169
      Height = 15
      Caption = 'Descri'#231#227'o do servi'#231'o necess'#225'rio:'
    end
    object Panel1: TPanel
      Left = 288
      Top = 16
      Width = 281
      Height = 65
      Caption = 'Panel1'
      TabOrder = 0
    end
    object edtCliente: TEdit
      Left = 48
      Top = 133
      Width = 233
      Height = 23
      TabOrder = 1
    end
    object edtCodigoCliente: TEdit
      Left = 320
      Top = 133
      Width = 121
      Height = 23
      TabOrder = 2
    end
    object edtCodigoPedido: TEdit
      Left = 488
      Top = 133
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object edtContato: TEdit
      Left = 48
      Top = 197
      Width = 233
      Height = 23
      TabOrder = 4
    end
    object edtEndereco: TEdit
      Left = 320
      Top = 197
      Width = 289
      Height = 23
      TabOrder = 5
    end
    object edtCEP: TEdit
      Left = 648
      Top = 197
      Width = 121
      Height = 23
      TabOrder = 6
    end
    object DateTimePicker1: TDateTimePicker
      Left = 648
      Top = 133
      Width = 121
      Height = 23
      Date = 45909.000000000000000000
      Time = 0.574766180558071900
      TabOrder = 7
    end
    object dblePlaca: TDBLabeledEdit
      Left = 48
      Top = 256
      Width = 121
      Height = 23
      TabOrder = 8
      EditLabel.Width = 31
      EditLabel.Height = 15
      EditLabel.Caption = 'Placa:'
    end
    object dbleMarca: TDBLabeledEdit
      Left = 208
      Top = 256
      Width = 185
      Height = 23
      TabOrder = 9
      EditLabel.Width = 36
      EditLabel.Height = 15
      EditLabel.Caption = 'Marca:'
    end
    object dbleModelo: TDBLabeledEdit
      Left = 434
      Top = 256
      Width = 175
      Height = 23
      TabOrder = 10
      EditLabel.Width = 44
      EditLabel.Height = 15
      EditLabel.Caption = 'Modelo:'
    end
    object dbleCor: TDBLabeledEdit
      Left = 648
      Top = 256
      Width = 121
      Height = 23
      TabOrder = 11
      EditLabel.Width = 22
      EditLabel.Height = 15
      EditLabel.Caption = 'Cor:'
    end
    object edtDescricao: TEdit
      Left = 48
      Top = 318
      Width = 721
      Height = 23
      TabOrder = 12
    end
  end
end
