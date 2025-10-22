unit frameCadastroDeSenhaFuncionário;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, Datasnap.DBClient;

type
  TframeCadSenhaFuncionario = class(TFrame)
    pnlSenhaFuncionario: TPanel;
    lblCadastrandoSenhaFunc: TLabel;
    pnlCadSenhaFunc: TPanel;
    GridPanel1: TGridPanel;
    Label2: TLabel;
    dbleFunc: TDBLabeledEdit;
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
    procedure dbleFuncEnter(Sender: TObject);
  private
    { Private declarations }
    priSenhaFunc: String;
  public
    { Public declarations }
    property SenhaFunc: String read PriSenhaFunc;
    var senhaFuncionario: String;
  end;

  var frameCadSenhaFuncionario: TframeCadSenhaFuncionario;

implementation

{$R *.dfm}

uses System.Hash,
     dataModuleNormal;

procedure TframeCadSenhaFuncionario.dbleFuncEnter(Sender: TObject);
begin
    DM.QueryFuncionarios.SQL.Text := 'SELECT email_funcionario FROM "Funcionarios"';
end;


procedure TframeCadSenhaFuncionario.pnlBotaoCadastrarSenhaClick(Sender: TObject);
var hash: String;
begin

    if leConfSenha.Text = leSenha.Text then begin
      hash := THashSHA1.GetHashString(leConfSenha.Text);
      PriSenhaFunc := hash;
//      DM.QueryFuncionarios.SQL.Text := 'INSERT INTO TABLE "Funcionarios" (hash_senha_func) VALUES (:Senha)';
//      ParamByName.('Senha').AsString := PriSenhaFunc;
      senhaFuncionario := PriSenhaFunc;
      DM.QueryFuncionarios.SQL.Text := 'INSERT INTO "Funcionarios" (hash_senha_func) VALUES (:Senha)';
      //ParamByName('Senha') := senhaFuncionario;
    end else begin
       ShowMessage('Senhas não compatíveis. Tente novamente');
    end;
end;


end.
