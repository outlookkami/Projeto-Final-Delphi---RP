unit unitLoginGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Mask;

type
  TForm5 = class(TForm)
    GridPanel1: TGridPanel;
    pnlilustrativo: TPanel;
    pnlLogin: TPanel;
    gridPanelLogin: TGridPanel;
    lblLogin: TLabel;
    lblVazio1: TLabel;
    lblUsuario: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

end.
