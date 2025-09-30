unit formCadastroFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Buttons, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TformCadastroFuncionarios = class(TForm)
    GridPanel1: TGridPanel;
    pnlLogin: TPanel;
    Label1: TLabel;
    gridPanelLogin: TGridPanel;
    lblVazio5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    pnlSelecionaFuncao: TPanel;
    lblSelecionaFuncao: TLabel;
    Label9: TLabel;
    pnlCadastrarFunc: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    leCEP: TLabeledEdit;
    leEmail: TLabeledEdit;
    leTelefone: TLabeledEdit;
    leNome: TLabeledEdit;
    leEndereco: TLabeledEdit;
    leNumero: TLabeledEdit;
    leBairro: TLabeledEdit;
    leCidade: TLabeledEdit;
    GridPanel7: TGridPanel;
    Label12: TLabel;
    cbUF: TComboBox;
    cbFuncao: TComboBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    pnlilustrativo: TPanel;
    procedure leCEPExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const urlConsultaCep = 'https://brasilapi.com.br/api/cep/v1/%s';

var
  formCadastroFuncionarios: TformCadastroFuncionarios;

implementation

{$R *.dfm}

uses  formPáginaDeInícioFunc,
      System.Net.HttpClient,
      System.JSON;

procedure TformCadastroFuncionarios.leCEPExit(Sender: TObject);
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

    //edtStatusCode.Text := format('%d', [RESTResponse1.StatusCode]);
    leEndereco.Text := objetoJson.Values['street'].Value;
    leBairro.Text := objetoJson.Values['neighborhood'].Value;
    leCidade.Text := objetoJson.Values['city'].Value;
    cbUF.Text := objetoJson.Values['state'].Value;

    //if algumErro then
end;


end.
