unit unitLoginJLA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage, Vcl.Skia, unitCrudClientes;

type
  TformLogin = class(TForm)
    pnlLogin: TPanel;
    pnlLogin2: TPanel;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    lblLogin: TLabel;
    lblEspaco: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    pnlEntrar: TPanel;
    Label1: TLabel;
    lblEspaco2: TLabel;
    lblAvisoUsuario: TLabel;
    lblAvisoSenha: TLabel;
    imgCadeadoDesb: TImage;
    pnlBaseLogin: TPanel;
    Image1: TImage;
    pnlLayoutLogin: TPanel;
    procedure pnlEntrarClick(Sender: TObject);
    procedure imgCadeadoDesbClick(Sender: TObject);
  private
    { Private declarations }
    procedure HideShowSenha;
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation

{$R *.dfm}

procedure TformLogin.HideShowSenha;
begin
    if edtSenha.PasswordChar = '*' then begin
    imgCadeadoDesb.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Assets\cadeado azul bloqueado.png');
    edtSenha.PasswordChar := #0;
    end else if edtSenha.PasswordChar = #0 then begin
    imgCadeadoDesb.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Assets\cadeado azul desbloqueado.png');
    edtSenha.PasswordChar := '*';
    end;
end;

procedure TformLogin.imgCadeadoDesbClick(Sender: TObject);
begin
     HideShowSenha;
end;

procedure TformLogin.pnlEntrarClick(Sender: TObject);
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
     Form2.Show;
end;

end.
