unit frameFormularioPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TframeFormularioDePedido = class(TFrame)
    pnlFrameFormPedido: TPanel;
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    GridPanel3: TGridPanel;
    dblePlaca: TDBLabeledEdit;
    lblVazio: TLabel;
    dbleMarca: TDBLabeledEdit;
    lblVazio2: TLabel;
    dbleModelo: TDBLabeledEdit;
    lblVazio3: TLabel;
    dbleCor: TDBLabeledEdit;
    dbleContato: TDBLabeledEdit;
    lblVazio4: TLabel;
    dbleEndereco: TDBLabeledEdit;
    lblVazio5: TLabel;
    dbleCEP: TDBLabeledEdit;
    dbleCliente: TDBLabeledEdit;
    lblVazio6: TLabel;
    dbleCodigoCliente: TDBLabeledEdit;
    lblVazio7: TLabel;
    dbleCodigoPedido: TDBLabeledEdit;
    lblVazio8: TLabel;
    dbleData: TDBLabeledEdit;
    lblDescServico: TLabel;
    GridPanel4: TGridPanel;
    GridPanel5: TGridPanel;
    DBLabeledEdit1: TDBLabeledEdit;
    Label1: TLabel;
    DBLabeledEdit2: TDBLabeledEdit;
    Label2: TLabel;
    DBLabeledEdit3: TDBLabeledEdit;
    Label3: TLabel;
    DBLabeledEdit4: TDBLabeledEdit;
    GridPanel6: TGridPanel;
    DBLabeledEdit5: TDBLabeledEdit;
    Label4: TLabel;
    DBLabeledEdit6: TDBLabeledEdit;
    Label5: TLabel;
    DBLabeledEdit7: TDBLabeledEdit;
    GridPanel7: TGridPanel;
    DBLabeledEdit8: TDBLabeledEdit;
    Label6: TLabel;
    DBLabeledEdit9: TDBLabeledEdit;
    Label7: TLabel;
    DBLabeledEdit10: TDBLabeledEdit;
    Label8: TLabel;
    DBLabeledEdit11: TDBLabeledEdit;
    GridPanel8: TGridPanel;
    Panel2: TPanel;
    Label9: TLabel;
    Panel3: TPanel;
    memoDescricaoDoServi�o: TMemo;
    procedure TmemoDescricaoDoServi�oOnCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameFormularioDePedido: TframeFormularioDePedido;


implementation

{$R *.dfm}

procedure TframeFormularioDePedido.TmemoDescricaoDoServi�oOnCreate(Sender: TObject);
var TmemoDescricaoDoServi�o: Tmemo;
begin
//      if TmemoDescricaoDoServi�o.StyleName then
        TmemoDescricaoDoServi�o.Clear;
end;

end.
