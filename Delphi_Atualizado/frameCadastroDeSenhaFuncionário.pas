unit frameCadastroDeSenhaFuncionário;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TframeCadSenhaFuncionario = class(TFrame)
    pnlSenhaFuncionario: TPanel;
    lblCadastrandoSenhaFunc: TLabel;
    pnlCadSenhaFunc: TPanel;
    GridPanel1: TGridPanel;
    Label2: TLabel;
    DBLabeledEdit2: TDBLabeledEdit;
    Label1: TLabel;
    Label3: TLabel;
    pnlBotaoCadastrarSenha: TPanel;
    GridPanel5: TGridPanel;
    leSenha: TLabeledEdit;
    cadeadoSenha: TImage;
    GridPanel6: TGridPanel;
    cadeadoConfSenha: TImage;
    leConfSenha: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameCadSenhaFuncionario: TframeCadSenhaFuncionario;

implementation

{$R *.dfm}

end.
