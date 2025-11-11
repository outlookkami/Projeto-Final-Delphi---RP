unit formOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, dataModuleNormal, Vcl.Grids;

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
    lblPlaca: TLabel;
    Label6: TLabel;
    lblMarca: TLabel;
    Label8: TLabel;
    lblModelo: TLabel;
    GridPanel16: TGridPanel;
    Label10: TLabel;
    lblAnoMod: TLabel;
    Label12: TLabel;
    lblAnoFab: TLabel;
    Label14: TLabel;
    lblCor: TLabel;
    Item: TLabel;
    lblProduto: TLabel;
    lblQtd: TLabel;
    lblValorUnit: TLabel;
    lblSubtotal: TLabel;

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
var codOrcStr: String;
begin
//Recebe as informações presentes no Crud de Orçamentos

    with DM.QueryOrcamentos do begin
    SQL.Text := 'SELECT (codigo_orcamento, data_emissao, validade, contato_cliente, email_cliente, nome_cliente, cep_cliente, placa_veiculo, marca, modelo, cor, descricao_servico, status_orcamento) FROM Orcamentos';
//    codOrcStr := FieldByName('codigo_orcamento').AsString;
    numeroOrcamento.Caption := FieldByName('codigo_orcamento').AsString;
    dataEmissao.Caption:= FieldByName('data_emissao').AsString;
    validoAte.Caption:= FieldByName('validade').AsString;
    lblNomeCliente.Caption:= FieldByName('nome_cliente').AsString;
    lblTelefoneCliente.Caption := FieldByName('contato_cliente').AsString;
    lblEmailCliente.Caption := FieldByName('email_cliente').AsString;
    lblCodigoCliente.Caption := FieldByName('codigo_cliente').AsString;;
    lblCEPCliente.Caption := FieldByName('cep_cliente').AsString;
    lblPlaca.Caption := FieldByName('placa_veiculo').AsString;;
    lblMarca.Caption := FieldByName('marca').AsString;
    lblModelo.Caption := FieldByName('modelo').AsString;
    lblCor.Caption := FieldByName('cor').AsString;
    memoDescricaoDoServico.Text := FieldByName('descricao_servico').AsString;
    end;


end;

procedure TformVerOrcamento.pnlAprovarClick(Sender: TObject);
begin
    with DM.QueryOrcamentos do begin
       SQL.Text := 'INSERT INTO Orcamentos (status_orcamento) VALUES (:status) WHERE codigo_orcamento = :CodOrcamento';
       ParamByName('status').AsString := 'Orçamento Aprovado';
       ParamByName('CodOrcamento').AsInteger := StrToInt(numeroOrcamento.Caption);
    end;
end;

end.
