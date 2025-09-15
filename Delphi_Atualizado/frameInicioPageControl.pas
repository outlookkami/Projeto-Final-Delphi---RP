unit frameInicioPageControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  TframePageControlInicio = class(TFrame)
    pcInicio: TPageControl;
    tsDashboard: TTabSheet;
    tsPedidos: TTabSheet;
    tsOrcamentos: TTabSheet;
    tsOrdensDeServico: TTabSheet;
    tsEstoque: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var
  framePageControlInicio: TframePageControlInicio;

implementation

{$R *.dfm}

end.
