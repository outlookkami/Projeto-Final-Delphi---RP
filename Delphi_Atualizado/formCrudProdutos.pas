unit formCrudProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, dataModuleNormal,
  Vcl.DBCtrls;

type
  TformProdutos = class(TForm)
    Panel1: TPanel;
    lblDadosProd: TLabel;
    btnIncluirProd: TPanel;
    pnlPesquisa: TPanel;
    iconePesquisa: TImage;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    gridPanelLogin: TGridPanel;
    lblVazio5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    lePrecoComp: TLabeledEdit;
    lePrecoVenda: TLabeledEdit;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    leQuantEst: TLabeledEdit;
    GridPanel7: TGridPanel;
    lblQuantEstPrev: TLabel;
    pnlSelecionaFuncao: TPanel;
    lblSelecionaCategoria: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    leMarcaProd: TLabeledEdit;
    leCodBar: TLabeledEdit;
    leCodInt: TLabeledEdit;
    leNomeProd: TLabeledEdit;
    leUnidade: TLabeledEdit;
    DSProdutos: TDataSource;
    cbCategoriaProd: TComboBox;
    edtQuantEstPrev: TEdit;
    btnInativProd: TPanel;
    btnExcluirProduto: TPanel;
    btnEditProd: TPanel;
    Label1: TLabel;
    GridPanel1: TGridPanel;
    pnlSalvar: TPanel;
    pnlIncluirProd: TPanel;
    btnAtivProd: TPanel;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnExcluirProdutoClick(Sender: TObject);
    procedure LimparCampos;
    procedure recarregarGrid;
    procedure btnIncluirProdClick(Sender: TObject);
    procedure btnEditProdClick(Sender: TObject);
    procedure pnlIncluirProdClick(Sender: TObject);
    procedure btnInativProdClick(Sender: TObject);
    procedure btnAtivProdClick(Sender: TObject);
    //procedure pnlSalvarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formProdutos: TformProdutos;

implementation

{$R *.dfm}

var codigoProduto: String;

procedure TformProdutos.DBGrid1CellClick(Column: TColumn);

begin
    codigoProduto :=  DBGrid1.Fields[0].Value;

    with DM.QueryProdutos do begin
    Open;
    SQL.Text := 'SELECT * FROM Produtos';
    leNomeProd.Text := FieldByName('nome_produto').AsString;
    leCodInt.Text := FieldByName('codigo_produto').AsString;
    leCodBar.Text := FieldByName('codigo_barras').AsString;
    leMarcaProd.Text := FieldByName('marca').AsString;
    leUnidade.Text := FieldByName('unidade_medida').AsString;
    lePrecoComp.Text := FieldByName('preco_compra').AsString;
    lePrecoVenda.Text := FieldByName('preco_venda').AsString;
    leQuantEst.Text := FieldByName('quant_estoque').AsString;
    edtQuantEstPrev.Text := FieldByName('quant_est_prevista').AsString;
    cbCategoriaProd.Text := FieldByName('categoria').AsString;

    end;
end;

procedure TformProdutos.LimparCampos;
// Limpar campos do formulário lateral
begin
    leNomeProd.Clear;
    leCodInt.Clear;
    leCodBar.Clear;
    leMarcaProd.Clear;
    leUnidade.Clear;
    lePrecoComp.Clear;
    lePrecoVenda.Clear;
    leQuantEst.Clear;
    edtQuantEstPrev.Clear;
    cbCategoriaProd.ItemIndex:= -1;
end;

procedure TformProdutos.pnlIncluirProdClick(Sender: TObject);
// Incluir Produto
begin
    with DM.QueryProdutos do begin
      DM.QueryProdutos.Close;
      DM.QueryProdutos.Open;
      SQL.Text := 'INSERT INTO Produtos (nome_produto, codigo_barras, categoria, unidade_medida, quant_estoque, quant_est_prevista, preco_compra, preco_venda, marca) VALUES (:NomeProd, :CodBar, :Categoria, :UnidadeMed, :QuantEst, :QuantEstPrev, :PrecoComp, :PrecoVen, :Marca);';
      ParamByName('NomeProd').AsString := leNomeProd.Text;
      ParamByName('CodBar').AsString := leCodBar.Text;
      ParamByName('Categoria').AsString := cbCategoriaProd.Text;
      ParamByName('UnidadeMed').AsString := leUnidade.Text;
      ParamByName('QuantEst').AsInteger := StrToInt(leQuantEst.Text);
      ParamByName('QuantEstPrev').AsInteger := StrToInt(edtQuantEstPrev.Text);
      ParamByName('PrecoComp').AsFloat := StrToFloat(lePrecoComp.Text);
      ParamByName('PrecoVen').AsFloat := StrToFloat(lePrecoVenda.Text);
      ParamByName('Marca').AsString := leMarcaProd.Text;

      ExecSQL;
      LimparCampos;
      recarregarGrid;
    end;
end;

procedure TformProdutos.recarregarGrid;
// Abre e fecha a Query
begin
    with DM.QueryProdutos do begin
      Close;
      SQL.Text := 'SELECT * FROM Produtos ORDER BY codigo_produto';
      Open;
    end;
end;

procedure TformProdutos.btnInativProdClick(Sender: TObject);
// Inativar Produto
begin
    DM.QueryProdutos.Close;
    DM.QueryProdutos.SQL.Text := 'UPDATE Produtos SET ativo_in = false WHERE codigo_produto = :codProd';
    DM.QueryProdutos.ParamByName('codProd').AsInteger := StrToInt(codigoProduto);
    DM.QueryProdutos.ExecSQL;

    recarregarGrid;
end;

procedure TformProdutos.btnIncluirProdClick(Sender: TObject);
// Abrir inclusão do Produto
begin
    pnlSalvar.Visible := False;
    pnlIncluirProd.Visible := True;
    DM.QueryProdutos.Close;

    DM.QueryProdutos.Open;
    LimparCampos;
    if not (DM.QueryProdutos.State in [dsInsert, dsEdit]) then begin
      DM.QueryProdutos.Insert;
    end;

    recarregarGrid;
end;

procedure TformProdutos.btnEditProdClick(Sender: TObject);
// Editar Produto
begin
    pnlIncluirProd.Visible := False;
    pnlSalvar.Visible := True;

    if not DM.QueryProdutos.Active then begin
      DM.QueryProdutos.Open;
    end else if DM.QueryProdutos.Active and not (DM.QueryProdutos.State in [dsInsert, dsEdit]) then begin
      DM.QueryProdutos.Edit;
    end else begin
      ShowMessage('Não foi possível acessar os dados do produto para edição.');
    end;
end;

procedure pnlSalvarClick(Sender: TObject);
// Salvar edição
begin
  //asdfjla
end;

procedure TformProdutos.btnExcluirProdutoClick(Sender: TObject);
// Excluir Produto
begin

    if (DM.QueryProdutos.FieldByName('ativo_in').AsBoolean = True) then begin
      ShowMessage('O produto deve estar inativo antes de ser excluído.');
    end else if
     MessageDlg('Tem certeza de que deseja excluir o produto? Essa ação não poderá ser revertida', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      DM.QueryProdutos.Close;
      DM.QueryProdutos.SQL.Text := 'DELETE FROM Produtos WHERE codigo_produto = :codProd';
      DM.QueryProdutos.ParamByName('codProd').AsInteger := StrToInt(codigoProduto);
      DM.QueryProdutos.ExecSQL;

      recarregarGrid;
     end;
end;

procedure TformProdutos.btnAtivProdClick(Sender: TObject);
// Ativar Produto
begin
    if (DM.QueryProdutos.FieldByName('ativo_in').AsBoolean = True) then begin
      ShowMessage('O produto deve estar inativo para ser ativado novamente.');
    end else begin
      DM.QueryProdutos.Close;
      DM.QueryProdutos.SQL.Text := 'UPDATE Produtos SET ativo_in = true WHERE codigo_produto = :codProd';
      DM.QueryProdutos.ParamByName('codProd').AsInteger := StrToInt(codigoProduto);
      DM.QueryProdutos.ExecSQL;

      recarregarGrid;
    end;
end;

end.
