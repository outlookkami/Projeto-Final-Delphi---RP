unit unitTestesDeProcedures;

interface

const urlConsultaCep = 'https://brasilapi.com.br/api/cep/v1/%s';

implementation

uses  System.Hash,
      dataModuleNormal,
      System.Net.HttpClient,
      System.JSON;

//procedure leCEPExit(Sender: TObject);
//var
//  CEP: String;
//  objetoJson: TJSONObject;
//begin
//    CEP := trim(leCEP.Text);
//
//    RESTClient1.BaseURL := format(urlConsultaCep, [CEP]);
//    RESTClient1.SecureProtocols := [THTTPSecureProtocol.TLS12];
//
//    RESTRequest1.Method := rmGET;
//    RESTRequest1.Execute;
//
//    objetoJson := RESTRequest1.Response.JSONValue AS TJSONObject;
//
//    leEndereco.Text := objetoJson.Values['street'].Value;
//    leBairro.Text := objetoJson.Values['neighborhood'].Value;
//    leCidade.Text := objetoJson.Values['city'].Value;
//    cbUF.Text := objetoJson.Values['state'].Value;
//end;

end.
