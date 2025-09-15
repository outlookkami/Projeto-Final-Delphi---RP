unit formPáginaDeInícioADM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    pnlCrudClientes: TPanel;
    GridPanel1: TGridPanel;
    Image2: TImage;
    btnpDashboard: TPanel;
    btnpPedidos: TPanel;
    btnpOrcamentos: TPanel;
    btnpOS: TPanel;
    btnpEstoque: TPanel;
    btnpPortfolio: TPanel;
    btnpClientes: TPanel;
    btnpVeiculos: TPanel;
    btnpPerfil: TPanel;
    btnpFuncionarios: TPanel;
    GridPanel2: TGridPanel;
    lblVazio: TLabel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
