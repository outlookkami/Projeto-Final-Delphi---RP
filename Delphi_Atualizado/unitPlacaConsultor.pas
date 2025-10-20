unit unitPlacaConsultor;

interface

uses

System.SysUtils, REST.Client, REST.Types, Data.Bind.Components, Data.Bind.ObjectScope,
Vcl.StdCtrls, Vcl.ExtCtrls, System.JSON, System.Net.HttpClient;

procedure ConsultaPlaca(const Placa: String; leMarca, leModelo, leCor: TCustomEdit;
                      cbAno: TComboBox; RESTClient: TRESTClient; RESTRequest: TRESTRequest;
                      RESTResponse: TRESTResponse);

implementation

const tokenAPI = '187ef084ae7c6846e8ed0d652c1fc2f3';

//const urlConsultaPlaca = 'https://wdapi2.com.br/consulta/';
const urlConsultaPlaca = 'https://api.consultarplaca.com.br/v2/consultarPlaca';
//const urlConsultaPlaca = 'https://wdapi2.com.br/consulta/' + lePlaca + '/'+ tokenAPI;

procedure ConsultaPlaca(const Placa: String; leMarca, leModelo, leCor: TCustomEdit;
cbAno: TComboBox; RESTClient: TRESTClient; RESTRequest: TRESTRequest; RESTResponse: TRESTResponse);
var
  objetoJson: TJSONObject;
begin
    //RESTClient.BaseURL :=  (urlConsultaPlaca + Placa + '/' + tokenAPI);
    RESTClient.BaseURL := (urlConsultaPlaca);
    RESTClient.SecureProtocols := [THTTPSecureProtocol.TLS12];

    RESTRequest.Method := rmGET;
    RESTRequest.Execute;

    objetoJson := RESTRequest.Response.JSONValue AS TJSONObject;

    leMarca.Text := objetoJson.Values['marca'].Value;
    leModelo.Text := objetoJson.Values['modelo'].Value;
    cbAno.Text := objetoJson.Values['ano'].Value; // ano modelo
    cbAno.Text := objetoJson.Values['ano'].Value; // ano fabricação
    leCor.Text := objetoJson.Values['cor'].Value;

end;

end.
