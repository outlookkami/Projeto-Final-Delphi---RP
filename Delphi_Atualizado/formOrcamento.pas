unit formOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    pnlFrameFormPedido: TPanel;
    lblDescServico: TLabel;
    Panel1: TPanel;
    DSPedido: TDataSource;
    memoDescricaoDoServiço: TMemo;
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
    lblCódigoCliente: TLabel;
    lblCEP: TLabel;
    lblCEPCliente: TLabel;
    DSOrcamento: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

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

end.
