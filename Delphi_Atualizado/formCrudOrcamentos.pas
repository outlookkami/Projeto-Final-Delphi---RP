unit formCrudOrcamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TcrudOrcamentos = class(TForm)
    Panel1: TPanel;
    lblDadosFunc: TLabel;
    btnIncluirOrc: TPanel;
    pnlPesquisa: TPanel;
    iconePesquisa: TImage;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    gridPanelLogin: TGridPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    GridPanel1: TGridPanel;
    leCodPedido: TLabeledEdit;
    leDataEmissao: TLabeledEdit;
    GridPanel2: TGridPanel;
    lblDescricaoPedido: TLabel;
    descPedido: TMemo;
    Label1: TLabel;
    Label9: TLabel;
    lblStatus: TLabel;
    cbStatus: TComboBox;
    pnlFazerOrcPedido: TPanel;
    pnlIncluirPedido: TPanel;
    btnEditOrc: TPanel;
    btnInativOrc: TPanel;
    btnExcluOrc: TPanel;
    DSOrcamentos: TDataSource;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    leContato: TLabeledEdit;
    leDataValidade: TLabeledEdit;
    leMarca: TLabeledEdit;
    leModelo: TLabeledEdit;
    Label11: TLabel;
    ListView1: TListView;
    Label6: TLabel;
    leMaoDeObra: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  crudOrcamentos: TcrudOrcamentos;

implementation

{$R *.dfm}

uses formOrcamento, DataModuleNormal, formFormularioPedido;

procedure materiaisListView;
var item: TListItem;
begin
//    listaProdutos.Items.Clear;
    DM.QueryProdutos.Open;

end;

procedure receberDadosPedido;
begin
  with DM.QueryOrcamentos do begin
//    SQL.Text :=  'INSERT INTO Orcamentos (codigo_pedido, contato_cliente, email_cliente, cep_cliente, placa_veiculo, marca, modelo, cor, descricao_pedido, status_orcamento) VALUES (:CodPedido, :Contato, :Email, :CEP, :Placa, :Marca, :Modelo, :Cor, :DescPedido, :StatusOrc)';
//    ParamByName('CodPedido').AsString := codigoPedido;
//    ParamByName('Contato').AsString := leContato.Text;
//    ParamByName('Email').AsString := leEmailCliente.Text;
//    ParamByName('CEP').AsString := leCEP.Text;
//    ParamByName('Placa').AsString := lePlaca.Text;
//    ParamByName('Marca').AsString := leMarca.Text;
//    ParamByName('Modelo').AsString := leModelo.Text;
//    ParamByName('Cor').AsString := leCorVeiculo.Text;
//    ParamByName('DescPedido').AsString := descPedido.Text;
//    ParamByName('StatusOrc').AsString := cbStatus.Text;
  end;
end;
end.
