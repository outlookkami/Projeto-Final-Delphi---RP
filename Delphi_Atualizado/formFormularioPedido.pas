unit formFormularioPedido;

interface

uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, System.UITypes,
  EComponent, Data.DB, REST.Types, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Client, Vcl.Buttons, Datasnap.Provider, Datasnap.DBClient, Vcl.ComCtrls;

type
  TFormPedido = class(TForm)
    pnlFrameFormPedido: TPanel;
    lblDescServico: TLabel;
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    dbleContato: TDBLabeledEdit;
    lblVazio4: TLabel;
    dbleEndereco: TDBLabeledEdit;
    lblVazio5: TLabel;
    dbleCEP: TDBLabeledEdit;
    GridPanel2: TGridPanel;
    dbleCliente: TDBLabeledEdit;
    lblVazio6: TLabel;
    dbleCodigoCliente: TDBLabeledEdit;
    lblVazio7: TLabel;
    dbleCodigoPedido: TDBLabeledEdit;
    lblVazio8: TLabel;
    dbleData: TDBLabeledEdit;
    GridPanel3: TGridPanel;
    dblePlaca: TDBLabeledEdit;
    lblVazio: TLabel;
    dbleMarca: TDBLabeledEdit;
    lblVazio2: TLabel;
    dbleModelo: TDBLabeledEdit;
    lblVazio3: TLabel;
    dbleCor: TDBLabeledEdit;
    memoDescricaoDoServico: TMemo;
    GridPanel4: TGridPanel;
    GridPanel5: TGridPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    leCliente: TLabeledEdit;
    leCodigoCliente: TLabeledEdit;
    leCodigoPedido: TLabeledEdit;
    GridPanel6: TGridPanel;
    dbleTelefone: TDBLabeledEdit;
    Label4: TLabel;
    dbleRua: TDBLabeledEdit;
    Label5: TLabel;
    dbleCEPendereco: TDBLabeledEdit;
    GridPanel7: TGridPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lePlaca: TLabeledEdit;
    leMarca: TLabeledEdit;
    leModelo: TLabeledEdit;
    leCor: TLabeledEdit;
    GridPanel8: TGridPanel;
    Panel2: TPanel;
    Label9: TLabel;
    Panel3: TPanel;
    DSPedido: TDataSource;
    GridPanel10: TGridPanel;
    Label10: TLabel;

    dtData: TDateTimePicker;
    procedure Panel2Click(Sender: TObject);
    procedure TmemoDescricaoDoServiçoOnCreate(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedido: TFormPedido;

implementation

{$R *.dfm}

uses  dataModuleNormal,
      unitSessao;



procedure TFormPedido.FormCreate(Sender: TObject);
var codigoCli: Integer;
    nomeCli, Contato, Endereco, CEP, Status: String;
begin
    dadosCliente(codigoCli, nomeCli, Contato, Endereco, CEP);

    leCliente.Text := nomeCli;
    leCodigoCliente.Text := IntToStr(codigoCli);
    dtData.Date := Date;
    dbleContato.Text := Contato;
    dbleRua.Text := Endereco;
    dbleCEPendereco.Text := CEP;
end;

procedure TformPedido.Panel2Click(Sender: TObject);
var codigoCli: Integer;
    nomeCli, Contato, Endereco, CEP, Status: String;
begin
    dadosCliente(codigoCli, nomeCli, Contato, Endereco, CEP);
    Status := 'Orçamento pendente';

    if (lePlaca.Text = '') or (leMarca.Text = '') or (leModelo.Text = '') then begin
        ShowMessage('Preencha os campos obrigatórios');
        Exit;
    end else begin

        with DM.QueryPedidos do begin

        //SQL.Text := 'INSERT INTO Veiculos(placa_veiculo, modelo, marca, cor) VALUES (:Placa, :Modelo, :Marca);';
        SQL.Text := 'INSERT INTO Pedidos(codigo_cliente, data_pedido, contato_cliente, endereco_cliente, cep_cliente, placa_veiculo, modelo, marca, cor, descricao_pedido, nome_cliente, status_pedido) VALUES (:codCli, :Data, :Contato, :Endereco, :CEP, :Placa, :Modelo, :Marca, :Cor, :Descricao, :NomeCli, :Status);';

        ParamByName('codCli').AsInteger := codigoCli;
        ParamByName('Data').AsDate := dtData.Date;
        ParamByName('Contato').AsString := Contato;
        ParamByName('Endereco').AsString := Endereco;
        ParamByName('CEP').AsString := CEP;
        ParamByName('Placa').AsString := lePlaca.Text;
        ParamByName('Modelo').AsString := leModelo.Text;
        ParamByName('Marca').AsString := leMarca.Text;
        ParamByName('Cor').AsString := leCor.Text;
        ParamByName('Descricao').AsString := memoDescricaoDoServico.Text;
        ParamByName('NomeCli').AsString := nomeCli;
        ParamByName('Status').AsString := Status;

        //ParamByName('Chassi').AsString := leChassi.Text;
        //ParamByName('AnoFab').AsString := leAno.Text;

        ExecSQL;

        ShowMessage('Pedido finalizado! Aguarde a resposta da oficina. O orçamento estará disponível na aba Orçamentos.');

//        if MessageDlg('Pedido finalizado! Aguarde a resposta da oficina. O orçamento estará disponível na aba Orçamentos.',
//        mtConfirmation, [mbYes, mbNo], 0) = mrYes then FrameVeiculo else Close; Self.Close;
          end;
end;
end;

procedure TformPedido.TmemoDescricaoDoServiçoOnCreate(Sender: TObject);
var TmemoDescricaoDoServiço: Tmemo;
begin
//      if TmemoDescricaoDoServiço.StyleName then
        TmemoDescricaoDoServiço.Clear;
end;

end.
