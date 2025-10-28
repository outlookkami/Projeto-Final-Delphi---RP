unit formCrudPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage;

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
    LabeledEdit1: TLabeledEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  crudPedidos: TcrudPedidos;

implementation

{$R *.dfm}

end.
