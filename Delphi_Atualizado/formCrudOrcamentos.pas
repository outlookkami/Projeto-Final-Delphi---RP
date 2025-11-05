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
    GridPanel1: TGridPanel;
    leCodPedido: TLabeledEdit;
    leDataEmissao: TLabeledEdit;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    Label9: TLabel;
    lblStatus: TLabel;
    cbStatus: TComboBox;
    pnlFazerOrcPedido: TPanel;
    pnlIncluirOrc: TPanel;
    btnEditOrc: TPanel;
    btnInativOrc: TPanel;
    btnExcluOrc: TPanel;
    DSOrcamentos: TDataSource;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    leCodigoCli: TLabeledEdit;
    leDataValidade: TLabeledEdit;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    lePlaca: TLabeledEdit;
    leMarca: TLabeledEdit;
    RESTResponse1: TRESTResponse;
    lblDescricaoServico: TLabel;
    descServico: TMemo;
    Label12: TLabel;
    listviewMateriais: TListView;
    Label8: TLabel;
    Label11: TLabel;
    leValorMDO: TLabeledEdit;
    GridPanel4: TGridPanel;
    leCor: TLabeledEdit;
    leModelo: TLabeledEdit;
    procedure pnlIncluirOrcClick(Sender: TObject);
    //procedure pnlFazerOrcPedidoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
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

var codigoOrcamento: String;

procedure materiaisListView;
var item: TListItem;
begin
//    listaProdutos.Items.Clear;
    DM.QueryProdutos.Open;

end;

procedure TcrudOrcamentos.DBGrid1CellClick(Column: TColumn);
begin
    codigoOrcamento :=  DBGrid1.Fields[0].Value;

    with DM.QueryOrcamentos do begin
      leCodPedido.Text := FieldByName('codigo_pedido').AsString;
      leDataEmissao.Text := FieldByName('data_emissao').AsString;
      leCodigoCli.Text := FieldByName('codigo_cliente').AsString;
      lePlaca.Text := FieldByName('placa_veiculo').AsString;
      leCor.Text := FieldByName('cor').AsString;
      leMarca.Text := FieldByName('marca').AsString;
      leModelo.Text := FieldByName('modelo').AsString;
      descServico.Text := FieldByName('descricao_servico').AsString;
      leValorMDO.Text := FieldByName('valor_mdo').AsString;
      cbStatus.Text := FieldByName('status_pedido').AsString;
// Soma dos valores dos materiais estimados: FieldByName('valor_materiais');
//      leCEP.Text := FieldByName('cep_cliente').AsString;
//      leEmailCliente.Text := FieldByName('email_cliente').AsString;
//      leEndereco.Text := FieldByName('endereco_cliente').AsString;
    end;
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

// Mostrar dados nos campos do formulário lateral
procedure TcrudOrcamentos.pnlIncluirOrcClick(Sender: TObject);
begin
      pnlIncluirOrc.Visible := True;

      with DM.QueryOrcamentos do begin
        DM.QueryOrcamentos.Close;
        DM.QueryOrcamentos.Open;
        SQL.Text := 'INSERT INTO Orcamentos (codigo_pedido, data_emissao, validade, contato_cliente, placa_veiculo, modelo, marca, cor, descricao_pedido, status_pedido, contato_cliente, nome_cliente, email_cliente, cep_cliente)' +
        'VALUES (:CodPedido, :DataEmissao, :Validade, :Contato, :Placa, :Modelo, :Marca, :Cor, :DescPedido, :ValorMDO, :Status);';

        ParamByName('CodPedido').AsString := leCodPedido.Text;
        ParamByName('CodCliente').AsString := leCodigoCli.Text;
        ParamByName('DataEmissao').AsString := leDataEmissao.Text;
        ParamByName('Validade').AsString := leDataValidade.Text;
        ParamByName('Placa').AsString := lePlaca.Text;
        ParamByName('Modelo').AsString := leModelo.Text;
        ParamByName('Marca').AsString := leMarca.Text;
        ParamByName('Cor').AsString := leCor.Text;
        ParamByName('DescPedido').AsString := descServico.Text;
        //ParamByName('Materiais').AsString := listviewMateriais;
        ParamByName('ValorMDO').AsString := leValorMDO.Text;
        ParamByName('Status').AsString := cbStatus.Text;
      end;
end;

end.
