unit unitCadastroFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TframeCadastroFunc = class(TFrame)
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
    lblEmail: TLabel;
    lblCEP: TLabel;
    lblEndereco: TLabel;
    lblNumero: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblUF: TLabel;
    lblFuncao: TLabel;
    lblSenha: TLabel;
    edtTelefone: TEdit;
    edtNome: TEdit;
    pnlCadastrar: TPanel;
    edtEmail: TEdit;
    edtCEP: TEdit;
    edtEndereco: TEdit;
    edtNumero: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtUF: TEdit;
    edtSenhaa: TEdit;
    pnlLayoutLogin: TPanel;
    Panel1: TPanel;
    cmboxFuncao: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameCadastroFunc : TframeCadastroFunc;

implementation

{$R *.dfm}

end.
