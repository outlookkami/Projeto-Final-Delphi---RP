unit formCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, frameFormularioPedido, System.Hash, Vcl.Imaging.pngimage, frameCadastroVeiculo, DataModuleInicial;

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
    Label9: TLabel;
    Label11: TLabel;
    pnlCadastrar: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    GridPanel5: TGridPanel;
    leSenha: TLabeledEdit;
    cadeadoSenha: TImage;
    Label14: TLabel;
    GridPanel6: TGridPanel;
    cadeadoConfSenha: TImage;
    leConfSenha: TLabeledEdit;
    procedure pnlCadastrarClick(Sender: TObject);
    procedure cadeadoSenhaClick(Sender: TObject);
    procedure cadeadoConfSenhaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure HideShowSenha;
  public
    { Public declarations }

  end;

var
  formCadastroDeClientes: TformCadastroDeClientes;

implementation

{$R *.dfm}

procedure TformCadastroDeClientes.FormCreate(Sender: TObject);
begin
    dtmInicial := TdtmInicial.Create(Self);
    dtmInicial.ConexaoPG.SQLHourGlass := True;
    dtmInicial.ConexaoPG.Connected := True;
end;

procedure TformCadastroDeClientes.HideShowSenha;
begin
    if leSenha.PasswordChar = '*' then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leSenha.PasswordChar := #0;
    end else if leSenha.PasswordChar = #0 then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    leSenha.PasswordChar := '*';
    end;
end;

procedure TformCadastroDeClientes.cadeadoConfSenhaClick(Sender: TObject);
begin
    if leConfSenha.PasswordChar = '*' then begin
    cadeadoConfSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leConfSenha.PasswordChar := #0;
    end else if leConfSenha.PasswordChar = #0 then begin
    cadeadoConfSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    leConfSenha.PasswordChar := '*';
    end;
end;

procedure TformCadastroDeClientes.cadeadoSenhaClick(Sender: TObject);
begin
    HideShowSenha;
end;

procedure TformCadastroDeClientes.pnlCadastrarClick(Sender: TObject);
begin
    if leConfSenha.Text = leSenha.Text then begin
      THashSHA1.GetHashString(leConfSenha.Text);

      if MessageDlg('Cadastro finalizado com sucesso! Deseja incluir seu veículo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then

    end else begin
       ShowMessage('Senhas não compatíveis. Tente novamente');
    end;
      end;
end.
