unit formFiltroRelatorioPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TformFiltroRelPedidos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dtInicio: TDateTimePicker;
    dtFim: TDateTimePicker;
    lblPeriodo: TLabel;
    lblDataInicio: TLabel;
    lblDataFim: TLabel;
    Button1: TButton;
    Label2: TLabel;
    QueryPedidos: TFDQuery;
    QueryPedidoscodigo_pedido: TIntegerField;
    QueryPedidosendereco_cliente: TStringField;
    QueryPedidoscep_cliente: TStringField;
    QueryPedidosplaca_veiculo: TStringField;
    QueryPedidosmarca: TStringField;
    QueryPedidosmodelo: TStringField;
    QueryPedidoscor: TStringField;
    QueryPedidosdescricao_pedido: TMemoField;
    QueryPedidoscontato_cliente: TStringField;
    QueryPedidosdata_pedido: TSQLTimeStampField;
    QueryPedidosnome_cliente: TStringField;
    QueryPedidosstatus_pedido: TStringField;
    QueryPedidosemail_cliente: TStringField;
    QueryPedidoscodigo_cliente: TStringField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroRelPedidos: TformFiltroRelPedidos;

implementation

{$R *.dfm}

uses relatorioPedidos, dataModuleNormal;

procedure TformFiltroRelPedidos.Button1Click(Sender: TObject);
begin
    //formRepPedidos := TformRepPedidos.Create(Application);
    try
//      formRepPedidos.dtInicio := dtInicio.Date;
//      formRepPedidos.dtFim := dtFim.Date;
      DM.QueryPedidos.Close;
      DM.QueryPedidos.ParamByName('dataInicio').AsDate := dtInicio.Date;
      DM.QueryPedidos.ParamByName('dataFim').AsDate := dtFim.Date;
      DM.QueryPedidos.Open;

      formRepPedidos.RLReport1.Preview;
    finally
      formRepPedidos.Free;
    end;
end;

end.
