unit relatorioOrcamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TformRepOrcamentos = class(TForm)
    repOrcamentos: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel3: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    QueryRelOrcamentos: TFDQuery;
    DSRelOrcamentos: TDataSource;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText6: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    dtInicio: TDate;
    dtFim: TDate;
  end;

var
  formRepOrcamentos: TformRepOrcamentos;

implementation

{$R *.dfm}

uses dataModuleNormal, formCrudOrcamentos;

end.
