unit formCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, frameFormularioPedido, Vcl.Imaging.pngimage, System.UITypes, dataModuleNormal,
  EComponent, Data.DB, REST.Types, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Client;

type
  TformCadastroDeClientes = class(TForm)
    EurekaLogEvents1: TEurekaLogEvents;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    griPnlCadastro: TGridPanel;
    pnlilustrativo: TPanel;
    edtStatusCode: TEdit;
    pnlLogin: TPanel;
    Label1: TLabel;
    gridPanelCad2: TGridPanel;
    lblV1: TLabel;
    lblV2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    leNumero: TLabeledEdit;
    leBairro: TLabeledEdit;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    leCidade: TLabeledEdit;
    GridPanel7: TGridPanel;
    Label12: TLabel;
    cbUF: TComboBox;
    Label11: TLabel;
    pnlCadastrar: TPanel;
    Label13: TLabel;
    GridPanel6: TGridPanel;
    Label2: TLabel;
    leConfSenha: TLabeledEdit;
    cadeadoConfSenha: TImage;
    leNome: TLabeledEdit;
    leTelefone: TLabeledEdit;
    leEmail: TLabeledEdit;
    leCEP: TLabeledEdit;
    leEndereco: TLabeledEdit;
    GridPanel2: TGridPanel;
    Label9: TLabel;
    leSenha: TLabeledEdit;
    cadeadoSenha: TImage;
    DSCadCli: TDataSource;
    procedure pnlCadastrarClick(Sender: TObject);
    procedure cadeadoSenhaClick(Sender: TObject);
    procedure cadeadoConfSenhaClick(Sender: TObject);
    procedure leCEPExit(Sender: TObject);
    procedure FrameVeiculo;

  private
    { Private declarations }
  public
    { Public declarations }

  end;

const urlConsultaCep = 'https://brasilapi.com.br/api/cep/v1/%s';

var
  formCadastroDeClientes: TformCadastroDeClientes;


implementation

{$R *.dfm}

uses  System.Hash,
      formPáginaDeInícioFunc,
      frameCadastroVeiculo,
      System.Net.HttpClient,
      System.JSON;

procedure TformCadastroDeClientes.leCEPExit(Sender: TObject);
var
  CEP: String;
  objetoJson: TJSONObject;
begin
    CEP := trim(leCEP.Text);

    RESTClient1.BaseURL := format(urlConsultaCep, [CEP]);
    RESTClient1.SecureProtocols := [THTTPSecureProtocol.TLS12];

    RESTRequest1.Method := rmGET;
    RESTRequest1.Execute;

    objetoJson := RESTRequest1.Response.JSONValue AS TJSONObject;

    edtStatusCode.Text := format('%d', [RESTResponse1.StatusCode]);
    leEndereco.Text := objetoJson.Values['street'].Value;
    leBairro.Text := objetoJson.Values['neighborhood'].Value;
    leCidade.Text := objetoJson.Values['city'].Value;
    cbUF.Text := objetoJson.Values['state'].Value;

    //if algumErro then
end;

procedure TformCadastroDeClientes.cadeadoSenhaClick(Sender: TObject);
begin
    if leSenha.PasswordChar = '*' then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leSenha.PasswordChar := #0;
    end else if leSenha.PasswordChar = #0 then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
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

procedure TFormCadastroDeClientes.FrameVeiculo;
var frameVeiculo: TframeCadVeiculo;
begin
   frameVeiculo := TframeCadVeiculo.Create(Self);
   frameVeiculo.Parent := Self;
   frameVeiculo.Align := alClient;
   frameVeiculo.Show;
end;

procedure TformCadastroDeClientes.pnlCadastrarClick(Sender: TObject);
begin
    if leConfSenha.Text = leSenha.Text then begin

      if DM.QueryClientes.State in [dsInsert, dsEdit] then begin
      DM.QueryClientes.SQL.Text := 'SELECT * FROM "Clientes"';

      DM.QueryClientes.FieldByName('nome_cliente').AsString := leNome.Text;
      DM.QueryClientes.FieldByName('telefone_cliente').AsString := leTelefone.Text;
      DM.QueryClientes.FieldByName('email_cliente').AsString := leEmail.Text;
      DM.QueryClientes.FieldByName('cep_cliente').AsString := leCEP.Text;
      DM.QueryClientes.FieldByName('endereco_cliente').AsString := leEndereco.Text;
      DM.QueryClientes.FieldByName('numero_endereco').AsString := leNumero.Text;
      DM.QueryClientes.FieldByName('bairro').AsString := leBairro.Text;
      DM.QueryClientes.FieldByName('cidade').AsString := leCidade.Text;
      DM.QueryClientes.FieldByName('uf').AsString := cbUf.Text;
      DM.QueryClientes.FieldByName('hash_senha_cli').AsString := THashSHA1.GetHashString(leConfSenha.Text);

      DM.QueryClientes.SQL.Text := 'INSERT INTO "Clientes" (nome_cliente, telefone_cliente, email_cliente, cep_cliente, endereco_cliente, num_endereco, bairro, cidade, uf) VALUES (leNome.Text, leTelefone.Text, leEmail.Text, leCEP.Text, leEndereco.Text, leNumero.Text, leBairro.Text, leCidade.Text, cbUF.Text);';
      DM.QueryClientes.SQL.Text := 'INSERT INTO "Clientes" (hash_senha_cli) VALUES (THashSHA1.GetHashString(leConfSenha.Text);)';

      DM.QueryClientes.Post;
      end;
      if MessageDlg('Cadastro finalizado com sucesso! Deseja incluir seu veículo?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then FrameVeiculo;

    end else begin
       ShowMessage('Senhas não compatíveis. Tente novamente');
    end;
end;

end.
