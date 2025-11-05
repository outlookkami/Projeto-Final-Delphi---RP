unit framePerfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TframePerfilUsuario = class(TFrame)
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
    procedure mostrarDadosPerfil;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var framePerfilUsuario: TframePerfilUsuario;

implementation

{$R *.dfm}

uses  dataModuleNormal,
      formLoginJLA,
      unitSessao;

procedure TframePerfilUsuario.mostrarDadosPerfil;
var TipoUsuario: String;
begin
    with DM.QueryUsuarios do begin
      SQL.Text := 'SELECT * FROM Usuarios';
      if TipoUsuario = 'Cliente' then begin
        DM.QueryClientes.SQL.Text := 'SELECT * FROM "Clientes" where email_cliente = :EmailCli';
      end else begin
        DM.QueryFuncionarios.SQL.Text := 'SELECT * FROM "Funcionarios" where email_funcionario = :EmailFunc';;
        end;
    end;


//    lerDadosCliente;
//    dbleNome.Text := dadosCliente.nomeCli;
//    codCli := IntToStr(dadosCliente.codigoCli);
//    leCodigoCliente.Text := codCli;
//    dtData.Date := Date;
//    dbleTelefone.Text := dadosCliente.contatoCli;
//    dbleRua.Text := dadosCliente.enderecoCli;
//    dbleCEPendereco.Text := dadosCliente.cepCli;
//    lePlaca.Text := dadosCliente.veiculoCli;
end;

//    dbleNome.Text :=  ;
//    dbleTelefone.Text := ;
//    dbleEmail.Text := ;
//    dbleCEP.Text := ;
//    dbleEndereco.Text := ;
//    dbleNumero.Text := ;
//    dbleBairro.Text := ;
//    dbleCidade.Text := ;
//    dbleUF.Text :=;

end.
