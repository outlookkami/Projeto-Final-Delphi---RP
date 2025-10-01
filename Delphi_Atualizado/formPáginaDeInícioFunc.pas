unit formPáginaDeInícioFunc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  dataModuleNormal, crudClientesSemErro, frameTESTEFormularioPedido, framePerfil, crudClientes;

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
    frameCrudClientes1: TframeCrudClientes;
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
    procedure frameCrudClientes1cadeadoSenhaClick(Sender: TObject);
    procedure CorMenu;
    //procedure crudClibtnIncluirCliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPáginaInicialFunc: TformPáginaInicialFunc;

implementation

{$R *.dfm}

procedure TformPáginaInicialFunc.FormShow(Sender: TObject);
var pages: Integer;
begin
    for pages := 0 to PageControl1.PageCount - 1 do begin
        PageControl1.Pages[pages].TabVisible := False;
    end;

end;

procedure TformPáginaInicialFunc.frameCrudClientes1cadeadoSenhaClick(
  Sender: TObject);
begin
//    if frameCrudClientes1leSenha.PasswordChar = '*' then begin
//    frameCrudClientes1cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
//    leSenha.PasswordChar := #0;
//    end else if leSenha.PasswordChar = #0 then begin
//    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
//    leSenha.PasswordChar := '*';
//    end;
end;

procedure TformPáginaInicialFunc.btnpDashboardClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 0;
end;

procedure TformPáginaInicialFunc.btnpPedidosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 1;
end;

procedure TformPáginaInicialFunc.btnpOrcamentosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 2;
end;

procedure TformPáginaInicialFunc.btnpOSClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 3;
end;

procedure TformPáginaInicialFunc.btnpEstoqueClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 4;
end;

procedure TformPáginaInicialFunc.btnpPortfolioClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 5;
end;

procedure TformPáginaInicialFunc.btnpClientesClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 6;
    CorMenu;
end;



procedure TformPáginaInicialFunc.btnpVeiculosClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 7;
    CorMenu;
end;



procedure TformPáginaInicialFunc.btnpPerfilClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 8;
end;

procedure TformPáginaInicialFunc.CorMenu();
begin
    btnpDashboard.Color := ClHighlight;
    btnpPedidos.Color := ClHighlight;
    btnpOrcamentos.Color := ClHighlight;
    btnpOS.Color := ClHighlight;
    btnpEstoque.Color := ClHighlight;
    btnpClientes.Color := ClHighlight;
    btnpVeiculos.Color := ClHighlight;
    btnpPerfil.Color := ClHighlight;
    //clDarkBlue


end;

procedure TformPáginaInicialFunc.Image1Click(Sender: TObject);
begin
    Close;
end;

//procedure TformPáginaInicialFunc.crudClibtnIncluirCliClick(Sender: TObject);
//begin
//  crudCli.btnIncluirCliClick(Sender);
//end;

end.
