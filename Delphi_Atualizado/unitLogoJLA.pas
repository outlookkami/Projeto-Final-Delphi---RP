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
    Image1: TImage;
    pnlLayoutLogin: TPanel;
    imgCadeadoDesb: TImage;
    GridPanel1: TGridPanel;
    Label3: TLabel;
    DBLabeledEdit4: TDBLabeledEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    GridPanel3: TGridPanel;
    DBLabeledEdit5: TDBLabeledEdit;
    Image4: TImage;
    procedure pnlEntrarClick(Sender: TObject);
    procedure imgCadeadoDesbClick(Sender: TObject);
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
    if DBLabeledEdit4.PasswordChar = '*' then begin
    imgCadeadoDesb.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Assets\cadeado azul bloqueado.png');
    DBLabeledEdit4.PasswordChar := #0;
    end else if DBLabeledEdit4.PasswordChar = #0 then begin
    imgCadeadoDesb.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Assets\cadeado azul desbloqueado.png');
    DBLabeledEdit4.PasswordChar := '*';
    end;
end;

procedure TformLoginSemGridPanel.imgCadeadoDesbClick(Sender: TObject);
begin
     HideShowSenha;
end;

procedure TformLoginSemGridPanel.pnlEntrarClick(Sender: TObject);
begin
  if (DBLabeledEdit4.Text = '') or (DBLabeledEdit5.Text = '') then begin
    ShowMessage('Preencha todos os campos.');
  end;

  if DBLabeledEdit5.Text = '' then begin
      lblAvisoSenha.Caption := 'Informe sua senha';
      DBLabeledEdit5.SetFocus;
  end else begin
      lblAvisoSenha.Caption := '';
  end;

  if DBLabeledEdit4.Text = '' then begin
      lblAvisoUsuario.Caption := 'Informe seu código de usuário';
      DBLabeledEdit4.SetFocus;
  end else begin
        lblAvisoUsuario.Caption := '';
  end;
     Form2.Show;
end;

end.
