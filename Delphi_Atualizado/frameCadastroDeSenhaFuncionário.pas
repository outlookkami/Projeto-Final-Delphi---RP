unit frameCadastroDeSenhaFuncionário;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TframeCadSenhaFuncionario = class(TFrame)
    pnlSenhaFuncionario: TPanel;
    lblCadastrandoSenhaFunc: TLabel;
    pnlCadSenhaFunc: TPanel;
    GridPanel1: TGridPanel;
    Label2: TLabel;
    DBLabeledEdit1: TDBLabeledEdit;
    DBLabeledEdit2: TDBLabeledEdit;
    Label1: TLabel;
    DBLabeledEdit3: TDBLabeledEdit;
    Label3: TLabel;
    pnlBotaoCadastrarSenha: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameCadSenhaFuncionario: TframeCadSenhaFuncionario;

implementation

{$R *.dfm}

end.
