unit frameTESTEFormularioPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TframeFormularioPedidoSemGridPanel = class(TFrame)
    pnlFrameFormPedido: TPanel;
    Panel1: TPanel;
    lblCliente: TLabel;
    edtCliente: TEdit;
    lblCodigoCliente: TLabel;
    edtCodigoCliente: TEdit;
    lblCodigoPedido: TLabel;
    edtCodigoPedido: TEdit;
    lblContato: TLabel;
    edtContato: TEdit;
    lblEndereco: TLabel;
    edtEndereco: TEdit;
    lblCEP: TLabel;
    edtCEP: TEdit;
    lblData: TLabel;
    DateTimePicker1: TDateTimePicker;
    dblePlaca: TDBLabeledEdit;
    dbleMarca: TDBLabeledEdit;
    dbleModelo: TDBLabeledEdit;
    dbleCor: TDBLabeledEdit;
    edtDescricao: TEdit;
    lblDescrição: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameFormularioPedidoSemGridPanel: TframeFormularioPedidoSemGridPanel;

implementation

{$R *.dfm}

end.
