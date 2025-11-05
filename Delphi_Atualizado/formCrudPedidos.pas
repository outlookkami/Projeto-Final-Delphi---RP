unit formCrudPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, dataModuleNormal;

type
  TcrudPedidos = class(TForm)
    Panel1: TPanel;
    lblDadosFunc: TLabel;
    btnIncluirPedi: TPanel;
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
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    leEmailCliente: TLabeledEdit;
    btnEditPedi: TPanel;
    btnInativPedi: TPanel;
    btnExcluPedi: TPanel;
    DSPedidos: TDataSource;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    GridPanel1: TGridPanel;
    leCodPedido: TLabeledEdit;
    leData: TLabeledEdit;
    GridPanel2: TGridPanel;
    leContato: TLabeledEdit;
    leCEP: TLabeledEdit;
    leEndereco: TLabeledEdit;
    GridPanel5: TGridPanel;
    lePlaca: TLabeledEdit;
    leCorVeiculo: TLabeledEdit;
    leMarca: TLabeledEdit;
    leModelo: TLabeledEdit;
    lblDescricaoPedido: TLabel;
    descPedido: TMemo;
    Label1: TLabel;
    Label9: TLabel;
    lblStatus: TLabel;
    cbStatus: TComboBox;
    pnlFazerOrcPedido: TPanel;
    pnlIncluirPedido: TPanel;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnIncluirPediClick(Sender: TObject);
    procedure pnlFazerOrcPedidoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  crudPedidos: TcrudPedidos;

implementation

{$R *.dfm}
var codigoPedido: String;

procedure TcrudPedidos.DBGrid1CellClick(Column: TColumn);
begin
    codigoPedido :=  DBGrid1.Fields[0].Value;

    with DM.QueryPedidos do begin
      leCodPedido.Text := FieldByName('codigo_pedido').AsString;
      leData.Text := FieldByName('data_pedido').AsString;
      leContato.Text := FieldByName('contato_cliente').AsString;
      leCEP.Text := FieldByName('cep_cliente').AsString;
      leEmailCliente.Text := FieldByName('email_cliente').AsString;
      leEndereco.Text := FieldByName('endereco_cliente').AsString;
      lePlaca.Text := FieldByName('placa_veiculo').AsString;
      leCorVeiculo.Text := FieldByName('cor').AsString;
      leMarca.Text := FieldByName('marca').AsString;
      leModelo.Text := FieldByName('modelo').AsString;
      descPedido.Text := FieldByName('descricao_pedido').AsString;
      cbStatus.Text := FieldByName('status_pedido').AsString;
    end;
end;


procedure TcrudPedidos.pnlFazerOrcPedidoClick(Sender: TObject);
begin
    //DM.QueryPedidos.SQL.Text := 'SELECT FROM Pedidos WHERE codigo_pedido = :CodPedido';
    //DM.QueryPedidos.ParamByName('CodPedido').AsString := codigoPedido;
    with DM.QueryOrcamentos do begin
      SQL.Text :=  'INSERT INTO Orcamentos (codigo_pedido, contato_cliente, email_cliente, cep_cliente, placa_veiculo, marca, modelo, cor, descricao_pedido, status_orcamento) VALUES (:CodPedido, :Contato, :Email, :CEP, :Placa, :Marca, :Modelo, :Cor, :DescPedido, :StatusOrc)';
      ParamByName('CodPedido').AsString := codigoPedido;
      ParamByName('Contato').AsString := leContato.Text;
      ParamByName('Email').AsString := leEmailCliente.Text;
      ParamByName('CEP').AsString := leCEP.Text;
      ParamByName('Placa').AsString := lePlaca.Text;
      ParamByName('Marca').AsString := leMarca.Text;
      ParamByName('Modelo').AsString := leModelo.Text;
      ParamByName('Cor').AsString := leCorVeiculo.Text;
      ParamByName('DescPedido').AsString := descPedido.Text;
      ParamByName('StatusOrc').AsString := cbStatus.Text;

      ExecSQL;
    end;
end;

// Mostrar dados nos campos do formulário lateral
procedure TcrudPedidos.btnIncluirPediClick(Sender: TObject);
begin
      pnlIncluirPedido.Visible := True;

      with DM.QueryPedidos do begin
        DM.QueryPedidos.Close;
        DM.QueryPedidos.Open;
        SQL.Text := 'INSERT INTO Pedidos (data_pedido, contato_cliente, endereco_cliente, cep_cliente, placa_veiculo, modelo, marca, cor, descricao_pedido, nome_cliente, email_cliente, status_pedido) VALUES (:Data, :Contato, :Endereco, :CEP, :Placa, :Modelo, :Marca, :Cor, :DescPedido, :NomeCli, :EmailCli, :Status);';

        ParamByName('Data').AsString := leData.Text;
        ParamByName('Contato').AsString := leContato.Text;
        ParamByName('Endereco').AsString := leEndereco.Text;
        ParamByName('CEP').AsString := leCEP.Text;
        ParamByName('Placa').AsString := lePlaca.Text;
        ParamByName('Modelo').AsString := leModelo.Text;
        ParamByName('Marca').AsString := leMarca.Text;
        ParamByName('Cor').AsString := leCorVeiculo.Text;
        ParamByName('DescPedido').AsString := descPedido.Text;
        //ParamByName('NomeCli').AsString := nomeCli; //puxar o nome pelo código do cliente
        ParamByName('EmailCli').AsString := leEmailCliente.Text;
        ParamByName('Status').AsString := cbStatus.Text;
      end;
end;



end.
