unit formP�ginaDeIn�cioFunc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, frameTESTEFormularioPedido, framePerfil, crudClientes;

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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Frame11: TFrame1;
    crudCli1: TcrudCli;
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
    procedure FormShow(Sender: TObject);
    procedure crudCli1btnIncluirCliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formP�ginaInicialFunc: TformP�ginaInicialFunc;

implementation

{$R *.dfm}

procedure TformP�ginaInicialFunc.FormShow(Sender: TObject);
var pages: Integer;
begin
    for pages := 0 to PageControl1.PageCount - 1 do begin
        PageControl1.Pages[pages].TabVisible := False;
    end;

end;

procedure TformP�ginaInicialFunc.btnpDashboardClick(Sender: TObject);
var frameFormularioPedidoSemGridPanel: TframeFormularioPedidoSemGridPanel;
begin
    PageControl1.ActivePageIndex := 0;
end;


procedure TformP�ginaInicialFunc.btnpPedidosClick(Sender: TObject);
var frameFormularioPedidoSemGridPanel: TframeFormularioPedidoSemGridPanel;
begin
    PageControl1.ActivePageIndex := 1;
end;

procedure TformP�ginaInicialFunc.btnpOrcamentosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 2;
end;

procedure TformP�ginaInicialFunc.btnpOSClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 3;
end;

procedure TformP�ginaInicialFunc.btnpEstoqueClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 4;
end;

procedure TformP�ginaInicialFunc.btnpPortfolioClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 5;
end;

procedure TformP�ginaInicialFunc.btnpClientesClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 6;
    btnpClientes.Font.Color := clRed;
end;

procedure TformP�ginaInicialFunc.btnpVeiculosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 7;
end;

procedure TformP�ginaInicialFunc.crudCli1btnIncluirCliClick(Sender: TObject);
begin
  crudCli1.btnIncluirCliClick(Sender);

end;

procedure TformP�ginaInicialFunc.btnpPerfilClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 8;
end;

procedure TformP�ginaInicialFunc.Image1Click(Sender: TObject);
begin
    Close;
end;

end.
