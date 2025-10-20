unit formCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, System.UITypes,
  EComponent, Data.DB, REST.Types, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Client, Vcl.Buttons, Datasnap.Provider, Datasnap.DBClient, frameFormularioPedido;

type
  TformCadastroDeClientes = class(TForm)
    EurekaLogEvents1: TEurekaLogEvents;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
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
    Label8: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cdsClientesCad: TClientDataSet;
    dspClientesCad: TDataSetProvider;
    cdsClientesCadhash_senha_cli: TStringField;
    cdsClientesCadnome_cliente: TStringField;
    cdsClientesCadtelefone_cliente: TStringField;
    cdsClientesCademail_cliente: TStringField;
    cdsClientesCadcep_cliente: TStringField;
    cdsClientesCadendereco_cliente: TStringField;
    cdsClientesCadnum_endereco: TStringField;
    cdsClientesCadbairro: TStringField;
    cdsClientesCadcidade: TStringField;
    cdsClientesCaduf: TStringField;
    RESTResponse1: TRESTResponse;
    DSClientesCad: TDataSource;
    procedure cadeadoSenhaClick(Sender: TObject);
    procedure cadeadoConfSenhaClick(Sender: TObject);
    procedure leCEPExit(Sender: TObject);
    procedure pnlCadastrarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure FrameVeiculo;
    //procedure pnlCadastrarClick(Sender: TObject);
  end;

var
  formCadastroDeClientes: TformCadastroDeClientes;


implementation

{$R *.dfm}

uses  System.Hash,
      dataModuleNormal,
      formPáginaDeInícioFunc,
      frameCadastroVeiculo,
      unitCEPConsultor;

procedure TformCadastroDeClientes.leCEPExit(Sender: TObject);
begin
      unitCEPConsultor.ConsultaCEP(leCEP.Text, TCustomEdit(leEndereco), TCustomEdit(leBairro), TCustomEdit(leCidade), cbUF, RESTClient1, RESTRequest1, RESTResponse1);
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
var hash: String;
begin
    hash := THashSHA1.GetHashString(leConfSenha.Text);
    if (leNome.Text = '') or (leEmail.Text = '') or (leTelefone.Text = '') or (leSenha.Text = '') or (leConfSenha.Text = '') then begin
        ShowMessage('Preencha os campos obrigatórios');
        Exit;
    end else begin

      if leConfSenha.Text = leSenha.Text then begin

        with DM.QueryClientes do begin

        SQL.Text := 'INSERT INTO "Clientes" (nome_cliente, telefone_cliente, email_cliente, cep_cliente, endereco_cliente, num_endereco, bairro, cidade, uf, hash_senha_cli) VALUES (:Nome, :Telefone, :Email, :CEP, :Endereco, :Numero, :Bairro, :Cidade, :UF, :SenhaHash);';

        ParamByName('Nome').AsString := leNome.Text;
        ParamByName('Telefone').AsString := leTelefone.Text;
        ParamByName('Email').AsString := leEmail.Text;
        ParamByName('CEP').AsString := leCEP.Text;
        ParamByName('Endereco').AsString := leEndereco.Text;
        ParamByName('Numero').AsString := leNumero.Text;
        ParamByName('Bairro').AsString := leBairro.Text;
        ParamByName('Cidade').AsString := leCidade.Text;
        ParamByName('UF').AsString := cbUf.Text;
        ParamByName('SenhaHash').AsString := hash;

        ExecSQL;

        if MessageDlg('Cadastro finalizado com sucesso! Deseja incluir seu veículo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then FrameVeiculo else Close;
          end;

      end else begin
      ShowMessage('Senhas não compatíveis. Tente novamente');
      end;
    end;
end;

end.
