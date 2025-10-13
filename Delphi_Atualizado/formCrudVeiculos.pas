unit formCrudVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, dataModuleNormal;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    lblVeiculos: TLabel;
    btnIncluirVeic: TPanel;
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
    GridPanel3: TGridPanel;
    leAnoFab: TLabeledEdit;
    leAnoMod: TLabeledEdit;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    leCidade: TLabeledEdit;
    GridPanel7: TGridPanel;
    Label12: TLabel;
    cbUF: TComboBox;
    pnlSelecionaFuncao: TPanel;
    lblSelecionaFuncao: TLabel;
    cbDonoCli: TComboBox;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    leMarca: TLabeledEdit;
    leModelo: TLabeledEdit;
    leChassi: TLabeledEdit;
    lePlaca: TLabeledEdit;
    leCor: TLabeledEdit;
    leCodigoVeiculo: TLabeledEdit;
    leRG: TLabeledEdit;
    pnlCadastrar: TPanel;
    btnEditVeic: TPanel;
    btnInativFunc: TPanel;
    btnExcluVeic: TPanel;
    DSVeiculos: TDataSource;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
