unit relatorioPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RLReport, RLFilters,
  RLPDFFilter, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.PGDef, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.VCLUI.Wait;

type
  TformRepPedidos = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLBand2: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw2: TRLDraw;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLPanel1: TRLPanel;
    RLPanel3: TRLPanel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLBand5: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    QueryRelPedidos: TFDQuery;
    DSRelPedidos: TDataSource;
    FDPhysPgDriverLink2: TFDPhysPgDriverLink;
    ConexaoRelatorioPed: TFDConnection;
//    procedure FormCreate(Sender: TObject);
//    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dtInicio: TDate;
    dtFim: TDate;
    procedure gerarRel;
  end;

var
  formRepPedidos: TformRepPedidos;


implementation

{$R *.dfm}

uses dataModuleNormal, formCrudPedidos, formCrudOrcamentos;

procedure TformRepPedidos.gerarRel;
begin
    
end;

//procedure TformRepPedidos.FormCreate(Sender: TObject);
//begin
//  QueryPedidosRel.Open;
//end;
//
//procedure TformRepPedidos.FormDestroy(Sender: TObject);
//begin
//  QueryPedidosRel.Close;
//end;
end.
