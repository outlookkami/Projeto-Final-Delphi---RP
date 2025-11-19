unit frameCadastroVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, dataModuleNormal, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.Imaging.pngimage;

type
  TframeCadVeiculo = class(TFrame)
    pnlSenhaFuncionario: TPanel;
    lblCadastrandoVeiculo: TLabel;
    pnlDadosVeículo: TPanel;
    pnlBotaoCadastrarVeiculo: TPanel;
    Panel1: TPanel;
    gridPanelCad2: TGridPanel;
    Label6: TLabel;
    lePlaca: TLabeledEdit;
    leChassi: TLabeledEdit;
    leMarca: TLabeledEdit;
    leModelo: TLabeledEdit;
    GridPanel2: TGridPanel;
    Label3: TLabel;
    DSVeiculos: TDataSource;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    GridPanel4: TGridPanel;
    leCor: TLabeledEdit;
    GridPanel5: TGridPanel;
    Label1: TLabel;
    cbAnoMod: TComboBox;
    Label2: TLabel;
    Label4: TLabel;
    GridPanel6: TGridPanel;
    leEmailCliente: TLabeledEdit;
    GridPanel7: TGridPanel;
    Label7: TLabel;
    cbAnoFab: TComboBox;
    btnVoltar: TImage;
    procedure pnlBotaoCadastrarVeiculoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameCadVeiculo: TframeCadVeiculo;

implementation

{$R *.dfm}

procedure TframeCadVeiculo.btnVoltarClick(Sender: TObject);
var frameCadVeiculo: TframeCadVeiculo;
begin
    frameCadVeiculo.Free;
end;

procedure TframeCadVeiculo.pnlBotaoCadastrarVeiculoClick(Sender: TObject);
var codCli, userCli, nomeCli, contatoCli: String;
begin

    if (lePlaca.Text = '') or (leMarca.Text = '') or (leModelo.Text = '') then begin
        ShowMessage('Preencha os campos obrigatórios');
        Exit;
    end else begin

      DM.QueryClientes.SQL.Text := 'SELECT * FROM "Clientes" WHERE email_cliente = :EmailCli';
      DM.QueryClientes.ParamByName('EmailCli').AsString := leEmailCliente.Text;
      contatoCli := DM.QueryClientes.FieldByName('telefone_cliente').AsString;

        with DM.QueryVeiculos do begin

          SQL.Text := 'INSERT INTO Veiculos(placa_veiculo, chassi, marca, modelo, ano_mod, cor, ano_fab, nome_usuario_cliente, contato_cliente) VALUES (:Placa, :Chassi, :Marca, :Modelo, :AnoMod, :Cor, :AnoFab, :EmailCli, :Contato);';

          ParamByName('Placa').AsString := UpperCase(lePlaca.Text);
          ParamByName('Chassi').AsString := leChassi.Text;
          ParamByName('Marca').AsString := leMarca.Text;
          ParamByName('Modelo').AsString := leModelo.Text;
          ParamByName('AnoMod').AsInteger := StrToInt(cbAnoMod.Text);
          ParamByName('Cor').AsString := leCor.Text;
          ParamByName('AnoFab').AsInteger := StrToInt(cbAnoFab.Text);
          ParamByName('EmailCli').AsString := leEmailCliente.Text;
          ParamByName('Contato').AsString := contatoCli;

          with DM.QueryClientes do begin
            SQL.Text := 'INSERT INTO "Clientes" (veiculo) VALUES(:Veiculo) WHERE email_cliente = :EmailCli';
            ParamByName('Veiculo').AsString := lePlaca.Text;
            ParamByName('EmailCli').AsString := leEmailCliente.Text;
          end;

          ExecSQL;

          ShowMessage('Veículo cadastrado com sucesso!');
          Sleep(3000);
          frameCadVeiculo.Free;
        end;

end;
end;
end.
