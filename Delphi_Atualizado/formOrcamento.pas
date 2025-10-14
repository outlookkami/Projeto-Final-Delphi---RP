unit formOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    pnlFrameFormPedido: TPanel;
    lblDescServico: TLabel;
    Panel1: TPanel;
    DSPedido: TDataSource;
    memoDescricaoDoServiço: TMemo;
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    GridPanel3: TGridPanel;
    lblOrcamento: TLabel;
    numeroOrcamento: TLabel;
    GridPanel4: TGridPanel;
    lblEmissao: TLabel;
    dataEmissao: TLabel;
    GridPanel5: TGridPanel;
    lblValidoate: TLabel;
    validoAte: TLabel;
    GridPanel6: TGridPanel;
    lblCliente: TLabel;
    lblNomeCliente: TLabel;
    GridPanel7: TGridPanel;
    lblTelefone: TLabel;
    lblTelefoneCliente: TLabel;
    lblEmail: TLabel;
    lblEmailCliente: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
