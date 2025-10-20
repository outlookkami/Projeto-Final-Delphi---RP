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
    Panel1: TPanel;
    lblDadosFunc: TLabel;
    btnIncluirFunc: TPanel;
    pnlPesquisa: TPanel;
    iconePesquisa: TImage;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    gridPanelLogin: TGridPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    leNumero: TLabeledEdit;
    leBairro: TLabeledEdit;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    leCidade: TLabeledEdit;
    GridPanel7: TGridPanel;
    Label12: TLabel;
    cbUF: TComboBox;
    pnlSelecionaFuncao: TPanel;
    lblSelecionaFuncao: TLabel;
    cbFuncao: TComboBox;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    leCEP: TLabeledEdit;
    leEmail: TLabeledEdit;
    leTelefone: TLabeledEdit;
    leNome: TLabeledEdit;
    leEndereco: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    DSFuncionarios: TDataSource;
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
end;

procedure TformPáginaInicialADM.btnpPerfilClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 8;
end;


end.
