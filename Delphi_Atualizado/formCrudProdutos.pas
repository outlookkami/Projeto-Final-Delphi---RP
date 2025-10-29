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
    Label10: TLabel;
    leMarcaProd: TLabeledEdit;
    leCodBar: TLabeledEdit;
    leCodInt: TLabeledEdit;
    leNomeProd: TLabeledEdit;
    leUnidade: TLabeledEdit;
    DSProdutos: TDataSource;
    cbCategoriaProd: TComboBox;
    edtQuantEstPrev: TEdit;
    lblImagem: TLabel;
    DBImage1: TDBImage;
    btnInativProd: TPanel;
    btnExcluirProduto: TPanel;
    btnEditVeic: TPanel;
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formProdutos: TformProdutos;

implementation

{$R *.dfm}



procedure TformProdutos.DBGrid1CellClick(Column: TColumn);
var codigoProduto: String;
begin
    codigoProduto :=  DBGrid1.Fields[0].Value;

    with DM.QueryProdutos do begin

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
    //leRG.Text := FieldByName('rg_funcionario').AsString;
    end;
end;

end.
