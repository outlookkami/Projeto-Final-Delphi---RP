unit formPáginaDeInícioADM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls;

type
  TformPáginaInicialADM = class(TForm)
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
    TabSheet10: TTabSheet;
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btnpDashboardClick(Sender: TObject);
    procedure btnpPedidosClick(Sender: TObject);
    procedure btnpOrcamentosClick(Sender: TObject);
    procedure btnpOSClick(Sender: TObject);
    procedure btnpEstoqueClick(Sender: TObject);
    procedure btnpPortfolioClick(Sender: TObject);
    procedure btnpClientesClick(Sender: TObject);
    procedure btnpVeiculosClick(Sender: TObject);
    procedure btnpFuncionariosClick(Sender: TObject);
    procedure btnpPerfilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPáginaInicialADM: TformPáginaInicialADM;

implementation

{$R *.dfm}

uses formCrudFuncionarios;

// Controle das páginas do PageControl
procedure TformPáginaInicialADM.FormShow(Sender: TObject);
var pages: Integer;
begin
    for pages := 0 to PageControl1.PageCount - 1 do begin
        PageControl1.Pages[pages].TabVisible := False;
    end;
end;

procedure TformPáginaInicialADM.Image1Click(Sender: TObject);
begin
    Close;
end;

procedure TformPáginaInicialADM.btnpDashboardClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 0;
end;

procedure TformPáginaInicialADM.btnpPedidosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 1;
end;

procedure TformPáginaInicialADM.btnpOrcamentosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 2;
end;

procedure TformPáginaInicialADM.btnpOSClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 3;
end;

procedure TformPáginaInicialADM.btnpEstoqueClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 4;
end;

procedure TformPáginaInicialADM.btnpPortfolioClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 5;
end;

procedure TformPáginaInicialADM.btnpClientesClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 6;
end;

procedure TformPáginaInicialADM.btnpVeiculosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 7;
end;

procedure TformPáginaInicialADM.btnpFuncionariosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 8;
    FormCrudFunc := TformCrudFunc.Create(Application);
    FormCrudFunc.Parent := PageControl1.Pages[8];
    FormCrudFunc.Align := AlClient;
    FormCrudFunc.Show;
end;

procedure TformPáginaInicialADM.btnpPerfilClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 8;
end;


end.
