unit formTrocarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Data.DB,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, dataModuleNormal, System.Hash,
  Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.Param;

type
  TformTrocaSenha = class(TForm)
    //pnlSenhaFuncionario: TPanel;
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
    Image1: TImage;
    DSLoginTrocaSenha: TDataSource;
    procedure pnlBotaoTrocarSenhaClick(Sender: TObject);
    procedure cadeadoSenhaClick(Sender: TObject);
    procedure cadeadoConfSenhaClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure leUsuarioTSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    loginTrocaSenha: String;
  end;

var
  formTrocaSenha: TformTrocaSenha;

implementation

{$R *.dfm}
uses formLoginJLA;

procedure TformTrocaSenha.leUsuarioTSClick(Sender: TObject);
begin
    if loginTrocaSenha <> '' then begin
      leUsuarioTS.Text := loginTrocaSenha;
    end;
end;

procedure TformTrocaSenha.pnlBotaoTrocarSenhaClick(Sender: TObject);
var senha_encrypted, tipoUsuario, usuario: String;
begin
    if leSenha.Text = leConfSenha.Text then begin
      senha_encrypted := THashSHA1.GetHashString(leConfSenha.Text);
      with DM.QueryUsuarios do begin
        DM.QueryUsuarios.SQL.Text :='UPDATE Usuarios SET senha_hash = :Senha WHERE nome_usuario = :Usuario';
        ParamByName('Senha').AsString := senha_encrypted;
        if loginTrocaSenha = '' then begin
          ParamByName('Usuario').AsString := leUsuarioTS.Text;
          usuario := leUsuarioTS.Text;
        end else begin
          ParamByName('Usuario').AsString := loginTrocaSenha;
          usuario := loginTrocaSenha;
          end;

          tipoUsuario := DM.QueryUsuarios.FieldByName('tipo_usuario').AsString;
            if tipoUsuario = 'Cliente' then begin
              DM.QueryUsuarios.SQL.Text :='UPDATE "Clientes" SET hash_senha_cli = :Senha WHERE email_cliente = :Usuario';
              ParamByName('Senha').AsString := senha_encrypted;
              ParamByName('Usuario').AsString := usuario;
              ExecSQL;
            end else if tipoUsuario = 'Funcionario' then begin
              DM.QueryUsuarios.SQL.Text :='UPDATE "Funcionarios" SET hash_senha_func = :Senha WHERE email_funcionario = :Usuario';
              ParamByName('Senha').AsString := senha_encrypted;
              ParamByName('Usuario').AsString := usuario;
              ExecSQL;
              end;
        ExecSQL;
        ShowMessage('Senha restaurada com sucesso! Volte ao login para ter acesso ao sistema.');

      end;
    end else begin
      ShowMessage('Senhas não compatíveis. Tente novamente.');
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

procedure TformTrocaSenha.Image1Click(Sender: TObject);
begin
  formTrocaSenha.Hide;
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
