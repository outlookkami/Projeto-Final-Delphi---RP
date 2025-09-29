unit formLoginJLA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage, Vcl.Skia, unitCrudClientes, Vcl.DBCtrls, formCadastroClientes, DataModuleInicial,
  Data.DB;

type
  TformLogin = class(TForm)
    pnlLogin: TPanel;
    pnlBaseLogin: TPanel;
    pnlLayoutLogin: TPanel;
    GridPanel1: TGridPanel;
    Label3: TLabel;
    Label4: TLabel;
    GridPanel3: TGridPanel;
    cadeadoSenha: TImage;
    GridPanel4: TGridPanel;
    lblVazio001: TLabel;
    lblVazio002: TLabel;
    lblVazio003: TLabel;
    lblVazio004: TLabel;
    lblVazio005: TLabel;
    lblVazio006: TLabel;
    imgFechar: TImage;
    Image1: TImage;
    lblAvisoSenha: TLabel;
    DSLogin: TDataSource;
    leSenhaLogin: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    GridPanel2: TGridPanel;
    lblVazio: TLabel;
    lblAvisoUsuario: TLabel;
    leUsuario: TLabeledEdit;
    lblEsqueceuSenha: TLabel;
    pnlEntrar: TPanel;
    lblCadastreAqui: TLabel;
    procedure pnlEntrarClick(Sender: TObject);
    procedure cadeadoSenhaClick(Sender: TObject);
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

{$R *.dfm}

procedure TformLogin.HideShowSenha;
begin
    if leSenhaLogin.PasswordChar = '*' then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leSenhaLogin.PasswordChar := #0;
    end else if leSenhaLogin.PasswordChar = #0 then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    leSenhaLogin.PasswordChar := '*';
    end;
end;

procedure TformLogin.cadeadoSenhaClick(Sender: TObject);
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
//var senha, hash: String;
begin
  if (leSenhaLogin.Text = '') or (leUsuario.Text = '') then begin
    ShowMessage('Preencha todos os campos.');

  end;

  if leSenhaLogin.Text = '' then begin
      lblAvisoSenha.Caption := 'Informe sua senha';
      leSenhaLogin.SetFocus;
  end else begin
      lblAvisoSenha.Caption := '';
  end;

  if leUsuario.Text = '' then begin
      lblAvisoUsuario.Caption := 'Informe seu usuário';
      leUsuario.SetFocus;
  end else begin
        lblAvisoUsuario.Caption := '';
  end;

  //if True then

end;

end.
