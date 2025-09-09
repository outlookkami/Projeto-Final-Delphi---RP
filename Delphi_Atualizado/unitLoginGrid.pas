unit unitLoginGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Mask, Vcl.DBCtrls, formPáginaDeInício, frameFormularioPedido;

type
  TformLoginGrid = class(TForm)
    GridPanel1: TGridPanel;
    pnlilustrativo: TPanel;
    pnlLogin: TPanel;
    gridPanelLogin: TGridPanel;
    lblLogin: TLabel;
    DBLabeledEdit1: TDBLabeledEdit;
    DBLabeledEdit2: TDBLabeledEdit;
    lblVazio1: TLabel;
    lblVazio2: TLabel;
    lblVazio3: TLabel;
    pnlEntrar: TPanel;
    imgCadeadoDesb: TImage;
    procedure pnlEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLoginGrid: TformLoginGrid;

implementation

{$R *.dfm}



procedure TformLoginGrid.pnlEntrarClick(Sender: TObject);
var frameFormularioDePedido: TframeFormularioDePedido;
begin
    formPáginaInicial.ShowModal;
    frameFormularioDePedido := TframeFormularioDePedido.Create(Self);
    frameFormularioDePedido.Parent := Self;
    frameFormularioDePedido.Align := alClient;
    frameFormularioDePedido.Visible := True;
end;

end.
