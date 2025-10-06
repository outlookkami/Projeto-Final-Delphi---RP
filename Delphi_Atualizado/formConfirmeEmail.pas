unit formConfirmeEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    pnlSenhaFuncionario: TPanel;
    lblConfirmeEmail: TLabel;
    lblEspacamento: TLabel;
    Image1: TImage;
    pnlCadSenhaFunc: TPanel;
    GridPanel1: TGridPanel;
    Label2: TLabel;
    Label1: TLabel;
    leEmail: TLabeledEdit;
    pnlBotaoConfEmail: TPanel;
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
