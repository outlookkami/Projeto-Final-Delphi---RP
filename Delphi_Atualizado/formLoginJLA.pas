unit formLoginJLA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage, Vcl.Skia, unitCrudClientes, Vcl.DBCtrls, formCadastroClientes; //, BCrypt

type
  TformLogin = class(TForm)
    pnlLogin: TPanel;
    pnlBaseLogin: TPanel;
    pnlLayoutLogin: TPanel;
    GridPanel1: TGridPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    GridPanel3: TGridPanel;
    dbleSenha: TDBLabeledEdit;
    imgCadeado: TImage;
    GridPanel2: TGridPanel;
    dbleUsuario: TDBLabeledEdit;
    lblVazio: TLabel;
    lblCadastreAqui: TLabel;
    GridPanel4: TGridPanel;
    lblVazio001: TLabel;
    lblVazio002: TLabel;
    lblVazio003: TLabel;
    lblVazio004: TLabel;
    lblVazio005: TLabel;
    lblVazio006: TLabel;
    imgFechar: TImage;
    Image1: TImage;
    lblAvisoUsuario: TLabel;
    lblAvisoSenha: TLabel;
    procedure pnlEntrarClick(Sender: TObject);
    procedure imgCadeadoClick(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure lblCadastreAquiClick(Sender: TObject);
  private
    { Private declarations }
    procedure HideShowSenha;
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation
//uses BCrypt;

{$R *.dfm}


procedure TformLogin.HideShowSenha;
begin
    if dbleSenha.PasswordChar = '*' then begin
    imgCadeado.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    dbleSenha.PasswordChar := #0;
    end else if dbleSenha.PasswordChar = #0 then begin
    imgCadeado.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    dbleSenha.PasswordChar := '*';
    end;
end;

procedure TformLogin.imgCadeadoClick(Sender: TObject);
begin
     HideShowSenha;
end;

procedure TformLogin.imgFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TformLogin.lblCadastreAquiClick(Sender: TObject);
begin
    formCadastroDeClientes.ShowModal;

end;

procedure TformLogin.pnlEntrarClick(Sender: TObject);
var senha, hash: String;

begin
  if (dbleSenha.Text = '') or (dbleUsuario.Text = '') then begin
    ShowMessage('Preencha todos os campos.');

  end;

  if dbleSenha.Text = '' then begin
      lblAvisoSenha.Caption := 'Informe sua senha';
      dbleSenha.SetFocus;
  end else begin
      lblAvisoSenha.Caption := '';
  end;

  if dbleUsuario.Text = '' then begin
      lblAvisoUsuario.Caption := 'Informe seu código de usuário';
      dbleUsuario.SetFocus;
  end else begin
        lblAvisoUsuario.Caption := '';
  end;

  begin
    if Trim(dbleSenha.Text) = '' then
    senha := Trim(dbleSenha.Text);
    //hash := TBCrypt.GenerateHash(Trim(dbleSenha.Text));

end;
end;




end.
