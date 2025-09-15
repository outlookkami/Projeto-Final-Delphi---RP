unit formPáginaDeInícioFunc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, frameTESTEFormularioPedido;

type
  TformPáginaInicialFunc = class(TForm)
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
  formPáginaInicialFunc: TformPáginaInicialFunc;

implementation

{$R *.dfm}

procedure TformPáginaInicialFunc.btnpDashboardClick(Sender: TObject);
var frameFormularioPedidoSemGridPanel: TframeFormularioPedidoSemGridPanel;
begin
    frameFormularioPedidoSemGridPanel.Hide;
end;

procedure TformPáginaInicialFunc.btnpPedidosClick(Sender: TObject);
var frameFormularioPedidoSemGridPanel: TframeFormularioPedidoSemGridPanel;
begin
    frameFormularioPedidoSemGridPanel.Show;
end;

procedure TformPáginaInicialFunc.btnpOrcamentosClick(Sender: TObject);
begin
//   Show frame CRUD Orçamentos
end;

procedure TformPáginaInicialFunc.btnpOSClick(Sender: TObject);
begin
//   Show frame CRUD Ordens de Serviço
end;

procedure TformPáginaInicialFunc.btnpEstoqueClick(Sender: TObject);
begin
//   Show frame CRUD Estoque
end;

procedure TformPáginaInicialFunc.btnpPortfolioClick(Sender: TObject);
begin
//   Show frame Portfólio (apenas visualização)
end;

procedure TformPáginaInicialFunc.btnpClientesClick(Sender: TObject);
begin
//   Show frame CRUD Clientes
end;

procedure TformPáginaInicialFunc.btnpVeiculosClick(Sender: TObject);
begin
//   Show frame CRUD Veiculos
end;

procedure TformPáginaInicialFunc.btnpPerfilClick(Sender: TObject);
begin
//   Show frame dados do Perfil
end;

procedure TformPáginaInicialFunc.Image1Click(Sender: TObject);
begin
    Close;
end;

end.
