unit formCadastroClientesANTIGO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Skia, Vcl.ExtCtrls;

type
  TformCadastroClientes = class(TForm)
    pnlBaseLogin: TPanel;
    pnlLogin: TPanel;
    pnlLogin2: TPanel;
    lblNome: TLabel;
    lblTelefone: TLabel;
    lblCadastro: TLabel;
    lblEspaco: TLabel;
    Label1: TLabel;
    lblEspaco2: TLabel;
    lblAvisoUsuario: TLabel;
    lblAvisoSenha: TLabel;
    edtTelefone: TEdit;
    edtNome: TEdit;
    pnlCadastrar: TPanel;
    pnlLayoutLogin: TPanel;
    lblEmail: TLabel;
    edtEmail: TEdit;
    Panel1: TPanel;
    lblCEP: TLabel;
    edtCEP: TEdit;
    lblEndereco: TLabel;
    edtEndereco: TEdit;
    lblNumero: TLabel;
    edtNumero: TEdit;
    edtBairro: TEdit;
    lblBairro: TLabel;
    lblCidade: TLabel;
    edtCidade: TEdit;
    lblUF: TLabel;
    edtUF: TEdit;
    lblSenha: TLabel;
    edtSenha: TEdit;
    lblConfSenha: TLabel;
    edtConfSenha: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroClientes: TformCadastroClientes;

implementation

{$R *.dfm}

end.
