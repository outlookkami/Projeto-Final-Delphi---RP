unit formPáginaDeInícioClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TformPáginaInicialCli = class(TForm)
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    Image2: TImage;
    btnpPedidos: TPanel;
    btnpOrcamentos: TPanel;
    btnpOS: TPanel;
    btnpSobreNos: TPanel;
    btnpPortfolio: TPanel;
    btnpPerfil: TPanel;
    GridPanel3: TGridPanel;
    Label1: TLabel;
    Image3: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPáginaInicialCli: TformPáginaInicialCli;

implementation

{$R *.dfm}

end.
