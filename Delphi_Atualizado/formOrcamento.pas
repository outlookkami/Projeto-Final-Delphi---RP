unit formOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, dataModuleNormal;

type
  TformVerOrcamento = class(TForm)
    pnlFrameFormPedido: TPanel;
    lblDescServico: TLabel;
    Panel1: TPanel;
    DSPedido: TDataSource;
    memoDescricaoDoServico: TMemo;
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    GridPanel3: TGridPanel;
    lblOrcamento: TLabel;
    numeroOrcamento: TLabel;
    GridPanel4: TGridPanel;
    lblEmissao: TLabel;
    dataEmissao: TLabel;
    GridPanel5: TGridPanel;
    lblValidoate: TLabel;
    validoAte: TLabel;
    GridPanel6: TGridPanel;
    lblCliente: TLabel;
    lblNomeCliente: TLabel;
    GridPanel7: TGridPanel;
    lblTelefone: TLabel;
    lblTelefoneCliente: TLabel;
    lblEmail: TLabel;
    lblEmailCliente: TLabel;
    GridPanel8: TGridPanel;
    lblCódigo: TLabel;
    lblCodigoCliente: TLabel;
    lblCEP: TLabel;
    lblCEPCliente: TLabel;
    DSOrcamento: TDataSource;
    GridPanel11: TGridPanel;
    GridPanel12: TGridPanel;
    GridPanel13: TGridPanel;
    GridPanel14: TGridPanel;
    lblTotal: TLabel;
    lblValorTotal: TLabel;
    pnlAprovar: TPanel;
    pnlRecusar: TPanel;
    GridPanel15: TGridPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    GridPanel16: TGridPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure pnlAprovarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formVerOrcamento: TformVerOrcamento;

implementation

{$R *.dfm}

procedure recebeDados;
begin

//    with DM.QueryPedidos do begin
//      SQL.Text := 'SELECT FROM Pedidos(codigo_pedido)'
//    end;
//
//    with DM.QueryOrcamentos do begin
//
//
//        SQL.Text := 'INSERT INTO Orcamentos(placa_veiculo, chassi, modelo, marca, cor, ano_fab) VALUES (:Placa, :Chassi, :Modelo, :Marca, :AnoFab);';
//
//        ParamByName('Placa').AsString := lePlaca.Text;
//        //ParamByName('Chassi').AsString := leChassi.Text;
//        ParamByName('Marca').AsString := leMarca.Text;
//        ParamByName('Modelo').AsString := leModelo.Text;
//        //ParamByName('AnoFab').AsString := leAno.Text;
//        ParamByName('Cor').AsString := leCor.Text;
//
//        ExecSQL;
//
////        if MessageDlg('Pedido finalizado! Aguarde a resposta da oficina. O orçamento estará disponível na aba Orçamentos.',
////        mtConfirmation, [mbYes, mbNo], 0) = mrYes then FrameVeiculo else Close; Self.Close;
//          end;
end;



procedure TformVerOrcamento.FormCreate(Sender: TObject);
begin
// Recebe as informações presentes no Crud de Orçamentos
//    numeroOrcamento.Caption := codigo_orcamento;
//    dataEmissao.Caption:= ;
//    validoAte.Caption:= ;
//    lblNomeCliente.Caption:= ;
//    lblTelefoneCliente.Caption := ;
//    lblEmailCliente.Caption := ;
//    lblCodigoCliente.Caption := ;
//    lblCEPCliente.Caption := ;
//    lblPlacaVeic.Caption := ;
//    lblMarca.Caption :=;
//    lblModelo.Caption := ;
//    lblCorVeic.Caption := ;
//    memoDescricaoDoServico.Text := ;
end;

procedure TformVerOrcamento.pnlAprovarClick(Sender: TObject);
begin
    with DM.QueryOrcamentos do begin
       SQL.Text := 'INSERT INTO Orcamentos (status_orcamento) VALUES (:status)';
       ParamByName('status').AsString := 'Orçamento Aprovado';
    end;
end;

end.
