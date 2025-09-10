unit unitLogoJLA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage, Vcl.Skia, unitCrudClientes, Vcl.DBCtrls;

type
  TformLoginSemGridPanel = class(TForm)
    pnlLogin: TPanel;
    pnlBaseLogin: TPanel;
    pnlLayoutLogin: TPanel;
    GridPanel1: TGridPanel;
    Label3: TLabel;
    Label4: TLabel;
    lblAvisoUsuario: TLabel;
    lblAvisoSenha: TLabel;
    Panel2: TPanel;
    GridPanel3: TGridPanel;
    dbleSenha: TDBLabeledEdit;
    imgCadeado: TImage;
    GridPanel2: TGridPanel;
    dbleUsuario: TDBLabeledEdit;
    lblVazio: TLabel;
    lblCadastreAqui: TLabel;
    procedure pnlEntrarClick(Sender: TObject);
    procedure imgCadeadoClick(Sender: TObject);
  private
    { Private declarations }
    procedure HideShowSenha;
  public
    { Public declarations }
  end;

var
  formLoginSemGridPanel: TformLoginSemGridPanel;

implementation

{$R *.dfm}

procedure TformLoginSemGridPanel.HideShowSenha;
begin
    if dbleSenha.PasswordChar = '*' then begin
    imgCadeado.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Assets\cadeado azul bloqueado.png');
    dbleSenha.PasswordChar := #0;
    end else if dbleSenha.PasswordChar = #0 then begin
    imgCadeado.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Assets\cadeado azul desbloqueado.png');
    dbleSenha.PasswordChar := '*';
    end;
end;

procedure TformLoginSemGridPanel.imgCadeadoClick(Sender: TObject);
begin
     HideShowSenha;
end;

procedure TformLoginSemGridPanel.pnlEntrarClick(Sender: TObject);
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
     Form2.Show;
end;

end.
