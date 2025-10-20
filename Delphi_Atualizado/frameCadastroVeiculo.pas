unit frameCadastroVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, dataModuleNormal;

type
  TframeCadVeiculo = class(TFrame)
    pnlSenhaFuncionario: TPanel;
    lblCadastrandoVeiculo: TLabel;
    pnlDadosVeículo: TPanel;
    pnlBotaoCadastrarVeiculo: TPanel;
    Panel1: TPanel;
    gridPanelCad2: TGridPanel;
    Label5: TLabel;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    leCor: TLabeledEdit;
    lePlaca: TLabeledEdit;
    leChassi: TLabeledEdit;
    leMarca: TLabeledEdit;
    leModelo: TLabeledEdit;
    GridPanel2: TGridPanel;
    Label3: TLabel;
    DSVeiculos: TDataSource;
    GridPanel1: TGridPanel;
    lblAno: TLabel;
    cbAno: TComboBox;
    procedure pnlBotaoCadastrarVeiculoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameCadVeiculo: TframeCadVeiculo;

implementation

{$R *.dfm}

procedure TframeCadVeiculo.pnlBotaoCadastrarVeiculoClick(Sender: TObject);
var codCli, userCli, nomeCli: String;
begin

    if (lePlaca.Text = '') or (leMarca.Text = '') or (leModelo.Text = '') then begin
        ShowMessage('Preencha os campos obrigatórios');
        Exit;
    end else begin

        with DM.QueryVeiculos do begin

          SQL.Text := 'INSERT INTO Veiculos(placa_veiculo, chassi, modelo, marca, cor, ano_mod, nome_usuario_cliente, codigo_cliente, nome_cliente) VALUES (:Placa, :Chassi, :Modelo, :Marca, :Cor, :AnoMod, :UsuarioCli, :CodigoCli, :NomeCli);';

          ParamByName('Placa').AsString := lePlaca.Text;
          ParamByName('Chassi').AsString := leChassi.Text;
          ParamByName('Marca').AsString := leMarca.Text;
          ParamByName('Modelo').AsString := leModelo.Text;
          ParamByName('AnoMod').AsInteger := StrToInt(cbAno.Text);
          ParamByName('Cor').AsString := leCor.Text;
          ParamByName('UsuarioCli').AsString := userCli;
          ParamByName('CodigoCli').AsString := codCli;
          ParamByName('NomeCli').AsString := nomeCli;

          with DM.QueryClientes do begin
          SQL.Text := 'INSERT INTO Clientes(veiculo) VALUES(:Veiculo)';
          ParamByName('Veiculo').AsString := lePlaca.Text;

          end;

          ExecSQL;

          ShowMessage('Veículo cadastrado com sucesso!');

          Sleep(3000);

          Close;
//        if MessageDlg('Veículo cadastrado com sucesso!',
//        mtConfirmation, [mbYes, mbNo], 0) = mrYes then FrameVeiculo else Close; Self.Close;
        end;

end;
end;
end.
