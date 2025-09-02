unit frameCadastroCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TFrame2 = class(TFrame)
    GridPanel1: TGridPanel;
    pnlilustrativo: TPanel;
    pnlLogin: TPanel;
    gridPanelLogin: TGridPanel;
    lblVazio1: TLabel;
    lblVazio3: TLabel;
    pnlEntrar: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var Frame2: TFrame2;

implementation

{$R *.dfm}

end.
