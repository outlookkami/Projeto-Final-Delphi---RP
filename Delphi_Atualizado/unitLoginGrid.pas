unit unitLoginGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Mask, Vcl.DBCtrls, frameCadastroCli, unitCadastroClientes_Form;

type
  TForm5 = class(TForm)
    GridPanel1: TGridPanel;
    pnlilustrativo: TPanel;
    pnlLogin: TPanel;
    gridPanelLogin: TGridPanel;
    lblLogin: TLabel;
    DBLabeledEdit1: TDBLabeledEdit;
    DBLabeledEdit2: TDBLabeledEdit;
    lblVazio1: TLabel;
    lblVazio2: TLabel;
    lblVazio3: TLabel;
    pnlEntrar: TPanel;
    imgCadeadoDesb: TImage;
    procedure pnlEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}



procedure TForm5.pnlEntrarClick(Sender: TObject);
var Frame2: TFrame2;
begin
      Form3.ShowModal;
//    Frame2 := TFrame2.Create(Self);
//    Frame2.Parent := Self;
//    Frame2.Align := alClient;
//    Frame2.Visible := True;
end;

end.
