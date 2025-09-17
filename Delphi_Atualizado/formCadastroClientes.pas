unit formCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, frameFormularioPedido;

type
  TformCadastroDeClientes = class(TForm)
    GridPanel1: TGridPanel;
    pnlilustrativo: TPanel;
    pnlLogin: TPanel;
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
    dbleConfSenha: TLabeledEdit;
    Label10: TLabel;
    Label11: TLabel;
    pnlCadastrar: TPanel;
    procedure pnlCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroDeClientes: TformCadastroDeClientes;

implementation

{$R *.dfm}

procedure TformCadastroDeClientes.pnlCadastrarClick(Sender: TObject);
begin
    MessageDlg('Cadastro finalizado com sucesso! Deseja incluir seu veículo?', mtConfirmation, [mbYes, mbNo], 0);
end;


end.
