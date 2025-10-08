unit unitCEPConsultor;

interface

uses
  System.SysUtils, REST.Client, REST.Types, Data.Bind.Components, Data.Bind.ObjectScope,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.JSON, System.Net.HttpClient;

procedure ConsultaCEP(const CEP: String; leEndereco, leBairro, leCidade: TCustomEdit;
                      cbUF: TComboBox; RESTClient: TRESTClient; RESTRequest: TRESTRequest;
                      RESTResponse: TRESTResponse);

implementation

const urlConsultaCep = 'https://brasilapi.com.br/api/cep/v1/%s';

procedure ConsultaCEP(const CEP: String; leEndereco, leBairro, leCidade: TCustomEdit;
cbUF: TComboBox; RESTClient: TRESTClient; RESTRequest: TRESTRequest; RESTResponse: TRESTResponse);
var
  objetoJson: TJSONObject;
begin
    RESTClient.BaseURL := format(urlConsultaCep, [CEP]);
    RESTClient.SecureProtocols := [THTTPSecureProtocol.TLS12];

    RESTRequest.Method := rmGET;
    RESTRequest.Execute;

    objetoJson := RESTRequest.Response.JSONValue AS TJSONObject;

    leEndereco.Text := objetoJson.Values['street'].Value;
    leBairro.Text := objetoJson.Values['neighborhood'].Value;
    leCidade.Text := objetoJson.Values['city'].Value;
    cbUF.Text := objetoJson.Values['state'].Value;
end;
end.
