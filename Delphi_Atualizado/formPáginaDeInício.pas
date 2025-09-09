unit formPáginaDeInício;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TformPáginaInicial = class(TForm)
    pnlCrudClientes: TPanel;
    pnlHeader: TPanel;
    pnlPageClientes: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPáginaInicial: TformPáginaInicial;

implementation

{$R *.dfm}

end.
