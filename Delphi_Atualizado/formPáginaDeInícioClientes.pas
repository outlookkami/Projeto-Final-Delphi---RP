unit formPáginaDeInícioClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TformPáginaInicialCli = class(TForm)
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    Image2: TImage;
    btnpPedidos: TPanel;
    btnpOrcamentos: TPanel;
    btnpOS: TPanel;
    btnpSobreNos: TPanel;
    btnpPortfolio: TPanel;
    btnpPerfil: TPanel;
    GridPanel3: TGridPanel;
    Label1: TLabel;
    Image3: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    procedure FormShow(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure btnpPedidosClick(Sender: TObject);
    procedure btnpOrcamentosClick(Sender: TObject);
    procedure btnpOSClick(Sender: TObject);
    procedure btnpSobreNosClick(Sender: TObject);
    procedure btnpPortfolioClick(Sender: TObject);
    procedure btnpPerfilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPáginaInicialCli: TformPáginaInicialCli;

implementation

{$R *.dfm}

uses  formFormularioPedido,
      formOrcamento,
      formPortfolio;

procedure TformPáginaInicialCli.FormShow(Sender: TObject);
// Esconde as tabs do tabsheet
var pages: Integer;
begin
    for pages := 0 to PageControl1.PageCount - 1 do begin
        PageControl1.Pages[pages].TabVisible := False;
    end;
end;

procedure TformPáginaInicialCli.btnpPedidosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 0;
    formPedido := TFormPedido.Create(Self);
    formPedido.Parent := PageControl1.Pages[0];
    formPedido.Align := AlClient;
    formPedido.Show;
end;

procedure TformPáginaInicialCli.btnpOrcamentosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 1;
    formVerOrcamento := TformVerOrcamento.Create(Self);
    formVerOrcamento.Parent := PageControl1.Pages[1];
    formVerOrcamento.Align := AlClient;
    formVerOrcamento.Show;
end;

procedure TformPáginaInicialCli.btnpOSClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 2;
end;

procedure TformPáginaInicialCli.btnpSobreNosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 3;
end;

procedure TformPáginaInicialCli.btnpPortfolioClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 4;
    formVerPortfolio := TformVerPortfolio.Create(Self);
    formVerPortfolio.Parent := PageControl1.Pages[4];
    formVerPortfolio.Align := AlClient;
    formVerPortfolio.Show;
end;

procedure TformPáginaInicialCli.btnpPerfilClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 5;
end;

procedure TformPáginaInicialCli.Image3Click(Sender: TObject);
begin
    Close;
end;

end.
