unit formP�ginaDeIn�cioFunc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, frameTESTEFormularioPedido;

type
  TformP�ginaInicialFunc = class(TForm)
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
    GridPanel2: TGridPanel;
    lblVazio: TLabel;
    Image1: TImage;
    procedure btnpDashboardClick(Sender: TObject);
    procedure btnpPedidosClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btnpOrcamentosClick(Sender: TObject);
    procedure btnpOSClick(Sender: TObject);
    procedure btnpEstoqueClick(Sender: TObject);
    procedure btnpPortfolioClick(Sender: TObject);
    procedure btnpClientesClick(Sender: TObject);
    procedure btnpVeiculosClick(Sender: TObject);
    procedure btnpPerfilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formP�ginaInicialFunc: TformP�ginaInicialFunc;

implementation

{$R *.dfm}

procedure TformP�ginaInicialFunc.btnpDashboardClick(Sender: TObject);
var frameFormularioPedidoSemGridPanel: TframeFormularioPedidoSemGridPanel;
begin
    frameFormularioPedidoSemGridPanel.Hide;
end;

procedure TformP�ginaInicialFunc.btnpPedidosClick(Sender: TObject);
var frameFormularioPedidoSemGridPanel: TframeFormularioPedidoSemGridPanel;
begin
    frameFormularioPedidoSemGridPanel.Show;
end;

procedure TformP�ginaInicialFunc.btnpOrcamentosClick(Sender: TObject);
begin
//   Show frame CRUD Or�amentos
end;

procedure TformP�ginaInicialFunc.btnpOSClick(Sender: TObject);
begin
//   Show frame CRUD Ordens de Servi�o
end;

procedure TformP�ginaInicialFunc.btnpEstoqueClick(Sender: TObject);
begin
//   Show frame CRUD Estoque
end;

procedure TformP�ginaInicialFunc.btnpPortfolioClick(Sender: TObject);
begin
//   Show frame Portf�lio (apenas visualiza��o)
end;

procedure TformP�ginaInicialFunc.btnpClientesClick(Sender: TObject);
begin
//   Show frame CRUD Clientes
end;

procedure TformP�ginaInicialFunc.btnpVeiculosClick(Sender: TObject);
begin
//   Show frame CRUD Veiculos
end;

procedure TformP�ginaInicialFunc.btnpPerfilClick(Sender: TObject);
begin
//   Show frame dados do Perfil
end;

procedure TformP�ginaInicialFunc.Image1Click(Sender: TObject);
begin
    Close;
end;

end.
