unit unitLoginJLANew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, unitNew;

type
  TFormLogin = class(TForm)
    panelMain: TPanel;
    pnlLogin: TPanel;
    pnlLoginInterno: TPanel;
    lblSenha: TLabel;
    lblUsuario: TLabel;
    lblLogin: TLabel;
    btnEntrarLogin: TPanel;
    pnlilustrativo: TPanel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    imgCadeados: TImage;
    lblAvisoUsuario: TLabel;
    lblAvisoSenha: TLabel;
    procedure btnEntrarLoginClick(Sender: TObject);
    procedure imgCadeadosClick(Sender: TObject);
  private
    { Private declarations }
    procedure HideShowSenha;
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

procedure TFormLogin.HideShowSenha;
begin
    if edtSenha.PasswordChar = '*' then begin
    imgCadeados.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Assets\cadeado azul bloqueado.png');
    edtSenha.PasswordChar := #0;
    end else if edtSenha.PasswordChar = #0 then begin
    imgCadeados.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Assets\cadeado azul desbloqueado.png');
    edtSenha.PasswordChar := '*';
    end;
end;

procedure TformLogin.imgCadeadosClick(Sender: TObject);
begin
     HideShowSenha;
end;

procedure TformLogin.btnEntrarLoginClick(Sender: TObject);
begin
  if (edtUsuario.Text = '') or (edtSenha.Text = '') then begin
    ShowMessage('Preencha todos os campos.');
  end;

  if edtSenha.Text = '' then begin
      lblAvisoSenha.Caption := 'Informe sua senha';
      edtSenha.SetFocus;
  end else begin
        lblAvisoSenha.Caption := '';
  end;

  if edtUsuario.Text = '' then begin
      lblAvisoUsuario.Caption := 'Informe seu código de usuário';
      edtUsuario.SetFocus;
  end else begin
        lblAvisoUsuario.Caption := '';
  end;
     FormLogin.Show;
end;

end.
