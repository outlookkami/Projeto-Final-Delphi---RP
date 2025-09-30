unit frameCadastroDeSenhaFuncionário;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, dataModuleNormal, formPáginaDeInícioADM;

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
    procedure pnlBotaoCadastrarSenhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameCadSenhaFuncionario: TframeCadSenhaFuncionario;

implementation

{$R *.dfm}



procedure TframeCadSenhaFuncionario.pnlBotaoCadastrarSenhaClick(Sender: TObject);
begin
    if leConfSenha.Text = leSenha.Text then begin
      DM.QueryFuncionarios.SQL.Text := 'INSERT INTO TABLE "Funcionarios" (hash_senha_func) VALUES (THashSHA1.GetHashString(leConfSenha.Text);)';

    end else begin
       ShowMessage('Senhas não compatíveis. Tente novamente');
    end;
    formPáginaInicialADM.Show;
end;
end.
