unit formCrudProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, dataModuleNormal;

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
    leNumero: TLabeledEdit;
    leBairro: TLabeledEdit;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    leQuantEst: TLabeledEdit;
    GridPanel7: TGridPanel;
    Label12: TLabel;
    cbCategoria: TComboBox;
    pnlSelecionaFuncao: TPanel;
    lblSelecionaFuncao: TLabel;
    cbFuncao: TComboBox;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    leCEP: TLabeledEdit;
    leEmail: TLabeledEdit;
    leCodInt: TLabeledEdit;
    leNomeProd: TLabeledEdit;
    leEndereco: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    DSProdutos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formProdutos: TformProdutos;

implementation

{$R *.dfm}

end.
