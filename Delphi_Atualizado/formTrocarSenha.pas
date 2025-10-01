unit formTrocarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, DataModuleNormal, System.Hash;

type
  TformTrocaSenha = class(TForm)
    pnlSenhaFuncionario: TPanel;
    lblCrieNovaSenha: TLabel;
    pnlCadSenhaFunc: TPanel;
    GridPanel1: TGridPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    pnlBotaoTrocarSenha: TPanel;
    GridPanel5: TGridPanel;
    leSenha: TLabeledEdit;
    cadeadoSenha: TImage;
    GridPanel6: TGridPanel;
    cadeadoConfSenha: TImage;
    leConfSenha: TLabeledEdit;
    leUsuarioTS: TLabeledEdit;
    lblEspacamento: TLabel;
    procedure pnlBotaoTrocarSenhaClick(Sender: TObject);
    procedure cadeadoSenhaClick(Sender: TObject);
    procedure cadeadoConfSenhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formTrocaSenha: TformTrocaSenha;

implementation

{$R *.dfm}


procedure TformTrocaSenha.pnlBotaoTrocarSenhaClick(Sender: TObject);
var senha_encrypted: String;
begin
    if leSenha.Text = leConfSenha.Text then begin
      senha_encrypted := THashSHA1.GetHashString(leConfSenha.Text);
      DM.QueryUsuarios.SQL.Text :='UPDATE Usuarios SET senha_hash = senha_encrypted WHERE nome_usuario = leUsuarioTS.Text';
      ShowMessage('Senha restaurada com sucesso! Volte ao login para ter acesso ao sistema.');
    end;
end;

procedure TformTrocaSenha.cadeadoSenhaClick(Sender: TObject);
begin
    if leSenha.PasswordChar = '*' then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leSenha.PasswordChar := #0;
    end else if leSenha.PasswordChar = #0 then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    leSenha.PasswordChar := '*';
    end;
end;

procedure TformTrocaSenha.cadeadoConfSenhaClick(Sender: TObject);
begin
    if leConfSenha.PasswordChar = '*' then begin
    cadeadoConfSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leConfSenha.PasswordChar := #0;
    end else if leConfSenha.PasswordChar = #0 then begin
    cadeadoConfSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    leConfSenha.PasswordChar := '*';
    end;
end;

end.
