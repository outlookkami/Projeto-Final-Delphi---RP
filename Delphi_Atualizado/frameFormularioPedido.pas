unit frameFormularioPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, dataModuleNormal;

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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBLabeledEdit4: TDBLabeledEdit;
    GridPanel6: TGridPanel;
    DBLabeledEdit5: TDBLabeledEdit;
    Label4: TLabel;
    DBLabeledEdit6: TDBLabeledEdit;
    Label5: TLabel;
    DBLabeledEdit7: TDBLabeledEdit;
    GridPanel7: TGridPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GridPanel8: TGridPanel;
    Panel2: TPanel;
    Label9: TLabel;
    Panel3: TPanel;
    memoDescricaoDoServiço: TMemo;
    DSPedido: TDataSource;
    leCliente: TLabeledEdit;
    leCodigoCliente: TLabeledEdit;
    leCodigoPedido: TLabeledEdit;
    lePlaca: TLabeledEdit;
    leMarca: TLabeledEdit;
    leModelo: TLabeledEdit;
    leCor: TLabeledEdit;
    procedure TmemoDescricaoDoServiçoOnCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameFormularioDePedido: TframeFormularioDePedido;


implementation

{$R *.dfm}

procedure TframeFormularioDePedido.TmemoDescricaoDoServiçoOnCreate(Sender: TObject);
var TmemoDescricaoDoServiço: Tmemo;
begin
//      if TmemoDescricaoDoServiço.StyleName then
        TmemoDescricaoDoServiço.Clear;
end;

end.
