unit formCrudOrcamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ComCtrls,
  Vcl.Buttons;

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
    leValorMDO: TLabeledEdit;
    bitbtnAtualizar: TBitBtn;
    pnlSalvar: TPanel;
    strgridMateriais: TStringGrid;
    pnlRemove: TPanel;
    procedure pnlIncluirOrcClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure pnlFazerOrcPedidoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure strgridMateriaisSelectCell(Sender: TObject; ACol, ARow: LongInt;
    var CanSelect: Boolean);
    procedure btnAddProdClick(Sender: TObject);
    procedure btnIncluirOrcClick(Sender: TObject);
    procedure LimparCampos;
    procedure recarregarGrid;
    procedure somaSubtotais;
    procedure bitbtnAtualizarClick(Sender: TObject);
    procedure btnEditOrcClick(Sender: TObject);
    procedure btnExcluOrcClick(Sender: TObject);
    procedure pnlSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var valorOrcamento, totProd, custoMDO: Double;
  end;

var
  crudOrcamentos: TcrudOrcamentos;

implementation

{$R *.dfm}

uses formOrcamento, DataModuleNormal, formFormularioPedido;

var codigoOrcamento: String;
    codOrc: Integer;

procedure TcrudOrcamentos.FormCreate(Sender: TObject);
// Ao criar formulário puxa os dados do StringGrid de materiais
var
    i: Integer;
begin
    dtEmissao.Date := Date;
    tabelas.ActivePage := TabSheet1;
    //DM.QueryProdutos.Open;
    strgridMateriais.ColCount := 4;
    strgridMateriais.RowCount := 2;
    strgridMateriais.FixedRows := 1;

    strgridMateriais.Cells[0,0] := 'Nome do produto';
    strgridMateriais.Cells[1,0] := 'Preço';
    strgridMateriais.Cells[2,0] := 'Qtd.';
    strgridMateriais.Cells[3,0] := 'Subtotal';

end;

procedure TcrudOrcamentos.DBGrid1CellClick(Column: TColumn);
// Mostrar dados nos campos do formulário lateral
begin

    pnlFazerOrcPedido.Visible := True;
    pnlSalvar.Visible := False;
    pnlIncluirOrc.Visible := False;
    dtEmissao.Date := Date;

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
      descServico.Text := FieldByName('descricao_pedido').AsString;
      leValorMDO.Text := FieldByName('valor_mdo').AsString;
      cbStatus.Text := FieldByName('status_orcamento').AsString;
      FieldByName('valor_materiais');
      FieldByName('cep_cliente').AsString;
      FieldByName('email_cliente').AsString;
      //FieldByName('endereco_cliente').AsString;
    end;
end;

procedure TcrudOrcamentos.LimparCampos;
begin
    leCodigoCli.Clear;
    dtEmissao.Date := Date;
    dtValidade.Date;
    lePlaca.Clear;
    leMarca.Clear;
    leModelo.Clear;
    leCor.Clear;
    descServico.Clear;
    strgridMateriais.RowCount := 1;
    leValorMDO.Clear;
    cbStatus.ItemIndex := -1;
end;

procedure TcrudOrcamentos.recarregarGrid;
begin
    with DM.QueryOrcamentos do begin
      Close;
      SQL.Text := 'SELECT * FROM Orcamentos ORDER BY data_emissao ASC';
      Open;
    end;
end;

procedure TcrudOrcamentos.btnIncluirOrcClick(Sender: TObject);
begin
    pnlIncluirOrc.Visible := True;
    pnlFazerOrcPedido.Visible := False;
    pnlSalvar.Visible := False;

    LimparCampos;

    leCodPedido.setFocus;
end;

procedure TcrudOrcamentos.bitbtnAtualizarClick(Sender: TObject);
begin
    recarregarGrid;
end;

procedure TcrudOrcamentos.btnAddProdClick(Sender: TObject);
var nomeProd: String;
    precoVen, subtotal, qtd: Double;
    i, coluna: Integer;
begin
    if Trim(edtQtdProd.Text) = '' then begin
      ShowMessage('Informe a quantidade antes de adicionar o produto');
      Exit;
    end;

    DM.QueryProdutos.Open;
    nomeProd := DM.QueryProdutos.FieldByName('nome_produto').AsString;
    precoVen := DM.QueryProdutos.FieldByName('preco_venda').AsFloat;

    qtd := StrToIntDef(edtQtdProd.Text, 1);
    subtotal := qtd * precoVen;

    i := strgridMateriais.RowCount;
    strgridMateriais.RowCount := i + 1;

    strgridMateriais.Cells[0, i] := nomeProd;
    strgridMateriais.Cells[1, i] := FormatFloat('0.00', precoVen);
    strgridMateriais.Cells[2, i] := FormatFloat('0.00', qtd);
    strgridMateriais.Cells[3, i] := FormatFloat('0.00', subtotal);

    tabelas.ActivePage := TabSheet2;

    //TvalorTotal.totProd := totProd;

end;

procedure TcrudOrcamentos.somaSubtotais;
var i: Integer;
    total: Double;
begin
    total := 0;

    for i := 2 to strgridMateriais.RowCount -1 do
     total := total + StrToFloat(strgridMateriais.Cells[3, i]);

     totProd := total;
end;

procedure TcrudOrcamentos.btnEditOrcClick(Sender: TObject);
begin
    pnlFazerOrcPedido.Visible := False;
    pnlIncluirOrc.Visible := False;
    pnlSalvar.Visible := True;

    if not DM.QueryOrcamentos.Active then begin
      DM.QueryOrcamentos.Open;
    end else if DM.QueryOrcamentos.Active then begin
      DM.QueryOrcamentos.Edit;
    end else begin
      ShowMessage('Não foi possível acessar os dados do cliente para edição.');
    end;
end;

procedure TcrudOrcamentos.btnExcluOrcClick(Sender: TObject);
begin
    if MessageDlg('Tem certeza de que deseja excluir o orçamento? Essa ação não poderá ser revertida', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      DM.QueryOrcamentos.Close;
      DM.QueryOrcamentos.SQL.Text := 'DELETE FROM Orcamentos WHERE codigo_orcamento = :codOrc';
      DM.QueryOrcamentos.ParamByName('codOrc').AsInteger := StrToInt(codigoOrcamento);
      DM.QueryOrcamentos.ExecSQL;

      recarregarGrid;
     end;
end;

//procedure receberDadosPedido;
//begin
//  with DM.QueryOrcamentos do begin
////    SQL.Text :=  'INSERT INTO Orcamentos (codigo_pedido, contato_cliente, email_cliente, cep_cliente, placa_veiculo, marca, modelo, cor, descricao_pedido, status_orcamento) VALUES (:CodPedido, :Contato, :Email, :CEP, :Placa, :Marca, :Modelo, :Cor, :DescPedido, :StatusOrc)';
////    ParamByName('CodPedido').AsString := codigoPedido;
////    ParamByName('Contato').AsString := leContato.Text;
////    ParamByName('Email').AsString := leEmailCliente.Text;
////    ParamByName('CEP').AsString := leCEP.Text;
////    ParamByName('Placa').AsString := lePlaca.Text;
////    ParamByName('Marca').AsString := leMarca.Text;
////    ParamByName('Modelo').AsString := leModelo.Text;
////    ParamByName('Cor').AsString := leCorVeiculo.Text;
////    ParamByName('DescPedido').AsString := descPedido.Text;
////    ParamByName('StatusOrc').AsString := cbStatus.Text;
//  end;
//end;

procedure TcrudOrcamentos.pnlFazerOrcPedidoClick(Sender: TObject);
var material: TListItem;
begin
//    while not DM.QueryProdutos.Eof do begin
//      material := listviewMateriais.Items.Add;
//      material.Caption := DM.QueryProdutos.FieldByName('nome_produto').AsString;
//      material.SubItems.Add(DM.QueryProdutos.FieldByName('preco').AsString);
//      DM.QueryProdutos.Next;
//    end;

    custoMDO:= StrToFloat(leValorMDO.Text);
    valorOrcamento := custoMDO + totProd;

    with DM.QueryOrcamentos do begin
      SQL.Text := 'UPDATE Orcamentos SET data_emissao = :Emissao, validade = :Validade, valor_mdo = :MDO, valor_materiais = :Materiais, valor_total = :Total WHERE codigo_orcamento = :CodOrcamento';
//      SQL.Text := 'INSERT INTO Orcamentos (data_emissao, validade, valor_mdo, valor_materiais, valor_total, codigo_pedido) VALUES (:Emissao,:Validade, :MDO, :Materiais, :Total, :CodPedido)';
      ParamByName('CodOrcamento').AsInteger := StrToInt(codigoOrcamento);
      ParamByName('Emissao').AsDate := dtEmissao.Date;
      ParamByName('Validade').AsDate := dtValidade.Date;
      ParamByName('MDO').AsFloat := custoMDO;
      ParamByName('Materiais').AsFloat := totProd;
      ParamByName('Total').AsFloat := valorOrcamento;

      ExecSQL;
    end;

//    with DM.QueryPedidos do begin
//      DM.QueryPedidos.Close;
//      SQL.Text := 'UPDATE Pedidos SET status_pedido = :Statusorc WHERE codigo_pedido = :CodPedido';
//      ParamByName('CodPedido').AsInteger := StrToInt(leCodPedido.Text);
//      ParamByName('Statusorc').AsString := 'Orçamento Realizado';
//      ExecSQL;
//    end;
end;

procedure TcrudOrcamentos.pnlIncluirOrcClick(Sender: TObject);
var contato: String;
begin

      with DM.QueryPedidos do begin
        SQL.Text := 'SELECT contato_cliente FROM Pedidos WHERE codigo_pedido = :CodPedido';
        ParamByName('CodPedido').AsString := leCodPedido.Text;
        contato := FieldByName('contato_cliente').AsString;
      end;

      with DM.QueryOrcamentos do begin
        DM.QueryOrcamentos.Open;

        SQL.Text := 'INSERT INTO Orcamentos (codigo_pedido, codigo_cliente, data_emissao, validade, contato_cliente, placa_veiculo, modelo, marca, cor, descricao_pedido, status_orcamento, nome_cliente, email_cliente, cep_cliente)' +
        'VALUES (:CodPedido, :CodCliente, :DataEmissao, :Validade, :Contato, :Placa, :Modelo, :Marca, :Cor, :DescPedido, :ValorMDO, :Status);';

        ParamByName('CodPedido').AsString := leCodPedido.Text;
        ParamByName('CodCliente').AsString := leCodigoCli.Text;
        ParamByName('DataEmissao').AsDateTime := dtEmissao.Date;
        ParamByName('Validade').AsDateTime := dtValidade.Date;
        ParamByName('Contato').AsString := contato;
        ParamByName('Placa').AsString := lePlaca.Text;
        ParamByName('Modelo').AsString := leModelo.Text;
        ParamByName('Marca').AsString := leMarca.Text;
        ParamByName('Cor').AsString := leCor.Text;
        ParamByName('DescPedido').AsString := descServico.Text;
        //ParamByName('Materiais').AsString := listviewMateriais;
        ParamByName('ValorMDO').AsString := FormatFloat('0.00', custoMDO);
        ParamByName('Status').AsString := cbStatus.Text;

        ExecSQL;
      end;
end;

procedure TcrudOrcamentos.pnlSalvarClick(Sender: TObject);
begin
    if DM.QueryOrcamentos.State in dsEditModes then begin
    DM.QueryOrcamentos.Post;
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
