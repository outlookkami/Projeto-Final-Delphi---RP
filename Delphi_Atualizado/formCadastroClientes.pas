unit formCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, frameFormularioPedido, System.Hash, Vcl.Imaging.pngimage, System.UITypes, DataModuleNormal, frameCadastroVeiculo,
  EComponent, Data.DB;

type
  TformCadastroDeClientes = class(TForm)
    GridPanel1: TGridPanel;
    pnlilustrativo: TPanel;
    pnlLogin: TPanel;
    Label1: TLabel;
    gridPanelLogin: TGridPanel;
    lblV1: TLabel;
    lblV2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    Label11: TLabel;
    pnlCadastrar: TPanel;
    Label13: TLabel;
    GridPanel6: TGridPanel;
    Label2: TLabel;
    leConfSenha: TLabeledEdit;
    cadeadoConfSenha: TImage;
    EurekaLogEvents1: TEurekaLogEvents;
    DSClientesCad: TDataSource;
    leNome: TLabeledEdit;
    leTelefone: TLabeledEdit;
    leEmail: TLabeledEdit;
    leCEP: TLabeledEdit;
    leEndereco: TLabeledEdit;
    leNumero: TLabeledEdit;
    leBairro: TLabeledEdit;
    leCidade: TLabeledEdit;
    GridPanel7: TGridPanel;
    Label12: TLabel;
    ComboBox2: TComboBox;
    GridPanel5: TGridPanel;
    Label10: TLabel;
    leSenha: TLabeledEdit;
    cadeadoSenhaERRO: TImage;
    GridPanel2: TGridPanel;
    Label9: TLabel;
    LabeledEdit1: TLabeledEdit;
    Image1: TImage;
    procedure pnlCadastrarClick(Sender: TObject);
    procedure cadeadoSenhaERROClick(Sender: TObject);
    procedure cadeadoConfSenhaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  formCadastroDeClientes: TformCadastroDeClientes;

implementation

{$R *.dfm}

uses formPáginaDeInícioFunc;

procedure TformCadastroDeClientes.cadeadoSenhaERROClick(Sender: TObject);
begin
    if leSenha.PasswordChar = '*' then begin
    cadeadoSenhaERRO.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leSenha.PasswordChar := #0;
    end else if leSenha.PasswordChar = #0 then begin
    cadeadoSenhaERRO.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    leSenha.PasswordChar := '*';
    end;
end;

procedure TformCadastroDeClientes.cadeadoConfSenhaClick(Sender: TObject);
begin
    if leConfSenha.PasswordChar = '*' then begin
    cadeadoConfSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leConfSenha.PasswordChar := #0;
    end else if leConfSenha.PasswordChar = #0 then begin
    cadeadoConfSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    leConfSenha.PasswordChar := '*';
    end;
end;

procedure TformCadastroDeClientes.pnlCadastrarClick(Sender: TObject);
begin
    if leConfSenha.Text = leSenha.Text then begin
      DM.QueryClientes.SQL.Text := 'INSERT INTO TABLE "Clientes" (hash_senha_cli) VALUES (THashSHA1.GetHashString(leConfSenha.Text);)';

      if MessageDlg('Cadastro finalizado com sucesso! Deseja incluir seu veículo?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then frameCadVeiculo.Show;

    end else begin
       ShowMessage('Senhas não compatíveis. Tente novamente');
    end;
    formPáginaInicialFunc.Show;
      end;



end.
