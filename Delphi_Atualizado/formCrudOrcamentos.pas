unit formCrudOrcamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TStringList = class(TStrings);
  TcrudOrcamentos = class(TForm)
    Panel1: TPanel;
    btnIncluirOrc: TPanel;
    pnlPesquisa: TPanel;
    iconePesquisa: TImage;
    edtPesquisa: TEdit;
    btnEditOrc: TPanel;
    btnExcluOrc: TPanel;
    DSOrcamentos: TDataSource;
    tabelas: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid2: TDBGrid;
    DSProdutos: TDataSource;
    btnAddProd: TPanel;
    edtQtdProd: TEdit;
    gridPanelLogin: TGridPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    GridPanel1: TGridPanel;
    leCodPedido: TLabeledEdit;
    GridPanel10: TGridPanel;
    Label10: TLabel;
    dtEmissao: TDateTimePicker;
    GridPanel2: TGridPanel;
    leCodigoCli: TLabeledEdit;
    GridPanel5: TGridPanel;
    Label13: TLabel;
    dtValidade: TDateTimePicker;
    Label1: TLabel;
    Label9: TLabel;
    lblStatus: TLabel;
    cbStatus: TComboBox;
    pnlFazerOrcPedido: TPanel;
    pnlIncluirOrc: TPanel;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    lePlaca: TLabeledEdit;
    leMarca: TLabeledEdit;
    lblDescricaoServico: TLabel;
    descServico: TMemo;
    Label12: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    GridPanel4: TGridPanel;
    leCor: TLabeledEdit;
    leModelo: TLabeledEdit;
    strgridMateriais: TStringGrid;
    leValorMDO: TLabeledEdit;
    procedure pnlIncluirOrcClick(Sender: TObject);
    //procedure pnlFazerOrcPedidoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure pnlFazerOrcPedidoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure strgridMateriaisSelectCell(Sender: TObject; ACol, ARow: LongInt;
    var CanSelect: Boolean);
    procedure btnAddProdClick(Sender: TObject);

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
    codOrc: Integer;
    valorOrcamento, totProd, custoMDO: Double;

procedure TcrudOrcamentos.FormCreate(Sender: TObject);
// Ao criar formulário puxa os dados do StringGrid de materiais
var strgridMateriais: TStringGrid;
    i: Integer;
begin
    tabelas.ActivePage := TabSheet1;
    DM.QueryProdutos.Open;
    strgridMateriais.ColCount := 5;
    strgridMateriais.RowCount := 1;
    strgridMateriais.FixedRows := 1;

    strgridMateriais.Cells[0,0] := 'Nome do produto';
    strgridMateriais.Cells[1,0] := 'Preço';
    strgridMateriais.Cells[2,0] := 'Qtd.';
    strgridMateriais.Cells[3,0] := 'Subtotal';
//    strgridMateriais.Cells[4,0] := 'Código';

end;

procedure TcrudOrcamentos.DBGrid1CellClick(Column: TColumn);
// Mostrar dados nos campos do formulário lateral
begin
    codigoOrcamento :=  DBGrid3.Fields[0].Value;
    codOrc := StrToInt(codigoOrcamento);

    with DM.QueryOrcamentos do begin
      codOrc := FieldByName('codigo_orcamento').AsInteger;
      leCodPedido.Text := FieldByName('codigo_pedido').AsString;
      dtEmissao.Date := FieldByName('data_emissao').AsDateTime;
      dtValidade.Date := FieldByName('validade').AsDateTime;
      leCodigoCli.Text := FieldByName('codigo_cliente').AsString;
      lePlaca.Text := FieldByName('placa_veiculo').AsString;
      leCor.Text := FieldByName('cor').AsString;
      leMarca.Text := FieldByName('marca').AsString;
      leModelo.Text := FieldByName('modelo').AsString;
      descServico.Text := FieldByName('descricao_servico').AsString;
      leValorMDO.Text := FieldByName('valor_mdo').AsString;
      cbStatus.Text := FieldByName('status_orcamento').AsString;
// Soma dos valores dos materiais estimados: FieldByName('valor_materiais');
//      leCEP.Text := FieldByName('cep_cliente').AsString;
//      leEmailCliente.Text := FieldByName('email_cliente').AsString;
//      leEndereco.Text := FieldByName('endereco_cliente').AsString;
    end;

    //leDataEmissao.Date := Date;
end;

procedure TcrudOrcamentos.btnAddProdClick(Sender: TObject);
var nomeProd: String;
    precoVen, subtotal, qtd: Double;
    i, coluna: Integer;
begin
      DM.QueryProdutos.Open;
      nomeProd := DM.QueryProdutos.FieldByName('nome_produto').AsString;
      precoVen := DM.QueryProdutos.FieldByName('preco_venda').AsFloat;

      if Trim(edtQtdProd.Text) = '' then begin
        ShowMessage('Informe a quantidade antes de adicionar o produto');
        Exit;
      end;

      qtd := StrToIntDef(edtQtdProd.Text, 1);
      subtotal := qtd * precoVen;

      i := strgridMateriais.RowCount;
      strgridMateriais.RowCount := i + 1;

      strgridMateriais.Cells[0, i] := nomeProd;
      strgridMateriais.Cells[1, i] := FormatFloat('0.00', precoVen);
      strgridMateriais.Cells[2, i] := FormatFloat('0.00',qtd);
      strgridMateriais.Cells[3, i] := FormatFloat('0.00', subtotal);

      totProd := subtotal;

      tabelas.ActivePage := TabSheet2;
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

procedure TcrudOrcamentos.pnlFazerOrcPedidoClick(Sender: TObject);
var material: TListItem;
begin
//    while not DM.QueryProdutos.Eof do begin
//      material := listviewMateriais.Items.Add;
//      material.Caption := DM.QueryProdutos.FieldByName('nome_produto').AsString;
//      material.SubItems.Add(DM.QueryProdutos.FieldByName('preco').AsString);
//      DM.QueryProdutos.Next;
//    end;

    custoMDO := StrToInt(leValorMDO.Text);
    valorOrcamento := custoMDO + totProd;

    with DM.QueryOrcamentos do begin
      SQL.Text := 'INSERT INTO Orcamentos (validade, valor_mdo, valor_materiais, valor_total) VALUES (:Validade, :MDO, :Materiais, :Total) WHERE codigo_pedido = :CodPedido';
      ParamByName('Validade').AsDate := dtValidade.Date;
      ParamByName('MDO').AsFloat := custoMDO;
      ParamByName('Materiais').AsFloat := totProd;
      ParamByName('Total').AsFloat := valorOrcamento;
      ParamByName('CodPedido').AsInteger := StrToInt(leCodPedido.Text);
    end;

    with DM.QueryPedidos do begin
      SQL.Text := 'INSERT INTO Pedidos (status_pedido) VALUES (:Statusorc) WHERE cod_pedido = :CodPedido';
      ParamByName('Statusorc').AsString := 'Orçamento Realizado';
      ParamByName('CodPedido').AsInteger := StrToInt(leCodPedido.Text);
    end;
end;

procedure TcrudOrcamentos.pnlIncluirOrcClick(Sender: TObject);
begin
      pnlIncluirOrc.Visible := True;

      with DM.QueryOrcamentos do begin
        DM.QueryOrcamentos.Open;
        SQL.Text := 'INSERT INTO Orcamentos (codigo_pedido, data_emissao, validade, contato_cliente, placa_veiculo, modelo, marca, cor, descricao_pedido, status_orcamento, contato_cliente, nome_cliente, email_cliente, cep_cliente)' +
        'VALUES (:CodPedido, :DataEmissao, :Validade, :Contato, :Placa, :Modelo, :Marca, :Cor, :DescPedido, :ValorMDO, :Status);';

        ParamByName('CodPedido').AsString := leCodPedido.Text;
        ParamByName('CodCliente').AsString := leCodigoCli.Text;
        ParamByName('DataEmissao').AsDateTime := dtEmissao.Date;
        ParamByName('Validade').AsDateTime := dtValidade.Date;
        ParamByName('Placa').AsString := lePlaca.Text;
        ParamByName('Modelo').AsString := leModelo.Text;
        ParamByName('Marca').AsString := leMarca.Text;
        ParamByName('Cor').AsString := leCor.Text;
        ParamByName('DescPedido').AsString := descServico.Text;
        //ParamByName('Materiais').AsString := listviewMateriais;
        ParamByName('ValorMDO').AsString := leValorMDO.Text;
        ParamByName('Status').AsString := cbStatus.Text;

        ExecSQL;
      end;
end;

procedure TcrudOrcamentos.strgridMateriaisSelectCell(Sender: TObject; ACol,
  ARow: LongInt; var CanSelect: Boolean);
const colunaQtd = 2;
begin
   CanSelect := True;

  if ACol = colunaQtd then begin
    strgridMateriais.Options := strgridMateriais.Options + [goEditing];
  end else begin
    strgridMateriais.Options := strgridMateriais.Options - [goEditing];
    end;

end;

end.
