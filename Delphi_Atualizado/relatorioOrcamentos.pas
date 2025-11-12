unit relatorioOrcamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TformRepOrcamentos = class(TForm)
    repOrcamentos: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRepOrcamentos: TformRepOrcamentos;

implementation

{$R *.dfm}

uses dataModuleNormal, formCrudOrcamentos;

end.
