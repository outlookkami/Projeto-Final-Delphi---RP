unit unitLoginGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Mask, Vcl.DBCtrls, formPáginaDeInício, frameFormularioPedido;

type
  TformLoginGrid = class(TForm)
    GridPanel1: TGridPanel;
    pnlilustrativo: TPanel;
    pnlLogin: TPanel;
    gridPanelLogin: TGridPanel;
    lblLogin: TLabel;
    DBLabeledEdit1: TDBLabeledEdit;
    DBLabeledEdit2: TDBLabeledEdit;
    lblVazio1: TLabel;
    lblVazio2: TLabel;
    lblVazio3: TLabel;
    pnlEntrar: TPanel;
    imgCadeadoDesb: TImage;
    GridPanel2: TGridPanel;
    Label3: TLabel;
    DBLabeledEdit4: TDBLabeledEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    GridPanel3: TGridPanel;
    DBLabeledEdit5: TDBLabeledEdit;
    Image4: TImage;
    GridPanel4: TGridPanel;
    DBLabeledEdit3: TDBLabeledEdit;
    labelVazio: TLabel;
    GridPanel5: TGridPanel;
    DBLabeledEdit6: TDBLabeledEdit;
    imgCadeado: TImage;
    procedure pnlEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLoginGrid: TformLoginGrid;

implementation

{$R *.dfm}



procedure TformLoginGrid.pnlEntrarClick(Sender: TObject);
var frameFormularioDePedido: TframeFormularioDePedido;
begin
    formPáginaInicial.ShowModal;
    frameFormularioDePedido := TframeFormularioDePedido.Create(Self);
    frameFormularioDePedido.Parent := Self;
    frameFormularioDePedido.Align := alClient;
    frameFormularioDePedido.Visible := True;
end;


//procedure TformLoginSemGridPanel.HideShowSenha;
//begin
//    if edtSenha.PasswordChar = '*' then begin
//    imgCadeadoDesb.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Assets\cadeado azul bloqueado.png');
//    edtSenha.PasswordChar := #0;
//    end else if edtSenha.PasswordChar = #0 then begin
//    imgCadeadoDesb.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Assets\cadeado azul desbloqueado.png');
//    edtSenha.PasswordChar := '*';
//    end;
//end;
//
//procedure TformLoginSemGridPanel.imgCadeadoDesbClick(Sender: TObject);
//begin
//     HideShowSenha;
//end;
//
//procedure TformLoginSemGridPanel.pnlEntrarClick(Sender: TObject);
//begin
//  if (edtUsuario.Text = '') or (edtSenha.Text = '') then begin
//    ShowMessage('Preencha todos os campos.');
//  end;
//
//  if edtSenha.Text = '' then begin
//      lblAvisoSenha.Caption := 'Informe sua senha';
//      edtSenha.SetFocus;
//  end else begin
//        lblAvisoSenha.Caption := '';
//  end;
//
//  if edtUsuario.Text = '' then begin
//      lblAvisoUsuario.Caption := 'Informe seu código de usuário';
//      edtUsuario.SetFocus;
//  end else begin
//        lblAvisoUsuario.Caption := '';
//  end;
//     Form2.Show;
//end;

end.
