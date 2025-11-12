unit relatorioPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RLReport, RLFilters,
  RLPDFFilter, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    RLPanel2: TRLPanel;
    RLPanel3: TRLPanel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
//    procedure FormCreate(Sender: TObject);
//    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRepPedidos: TformRepPedidos;

implementation

{$R *.dfm}

uses dataModuleNormal, formCrudPedidos;

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
