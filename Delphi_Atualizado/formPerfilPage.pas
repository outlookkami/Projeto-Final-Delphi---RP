unit formPerfilPage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TformPerfil = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    gridPanelLogin: TGridPanel;
    LableV1: TLabel;
    dbleNome: TDBLabeledEdit;
    Label2: TLabel;
    dbleTelefone: TDBLabeledEdit;
    Label3: TLabel;
    dbleEmail: TDBLabeledEdit;
    Label4: TLabel;
    dbleCEP: TDBLabeledEdit;
    Label5: TLabel;
    dbleEndereco: TDBLabeledEdit;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    dbleNumero: TDBLabeledEdit;
    dbleBairro: TDBLabeledEdit;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    dbleCidade: TDBLabeledEdit;
    dbleUF: TDBLabeledEdit;
    Label8: TLabel;
    dbleSenha: TLabeledEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    pnlAtualizar: TPanel;
    dbleConfSenha: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //procedure dadosPerfil;
  end;

var
  formPerfil: TformPerfil;

implementation

{$R *.dfm}
uses formLoginJLA;

procedure dadosPerfil;
begin
    //formLogin.pnlEntrarClick:=TipoUsuario
end;

procedure TformPerfil.FormCreate(Sender: TObject);
begin
    dadosPerfil;
end;

end.
