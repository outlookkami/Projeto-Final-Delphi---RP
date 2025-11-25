unit formFormularioPedido;

interface

uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, System.UITypes,
  Data.DB, REST.Types, Data.Bind.Components, Data.Bind.ObjectScope,
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
    leStatusPedido: TLabeledEdit;
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
    procedure FormShow(Sender: TObject);
    procedure memoDescricaoDoServicoEnter(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
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
      unitSessao,
      formOrcamento;

procedure TFormPedido.FormShow(Sender: TObject);
var codigoCli: Integer;
     codCli: String;
    //codCli, nomeCli, contatoCli, emailCli, cepCli, enderecoCli, numEnderecoCli, bairroCli, cidadeCli, ufCli, veiculoCli: String;
begin
    lerDadosCliente;
    leCliente.Text := dadosCliente.nomeCli;
    codCli := IntToStr(dadosCliente.codigoCli);
    leCodigoCliente.Text := codCli;
    dtData.Date := Date;
    dbleTelefone.Text := dadosCliente.contatoCli;
    dbleRua.Text := dadosCliente.enderecoCli;
    dbleCEPendereco.Text := dadosCliente.cepCli;
    lePlaca.Text := dadosCliente.veiculoCli;


    with DM.QueryVeiculos do begin
      SQL.Text := 'SELECT * FROM Veiculos WHERE placa_veiculo = :Placa';
      ParamByName('Placa').AsString := lePlaca.Text;
      if not IsEmpty then begin
      leMarca.Text := FieldByName('marca').AsString;
      leModelo.Text := FieldByName('modelo').AsString;
      leCor.Text := FieldByName('cor').AsString;
      end else begin
        Exit;
      end;

    end;
end;

// Envio do pedido
procedure TFormPedido.memoDescricaoDoServicoEnter(Sender: TObject);
begin
      memoDescricaoDoServico.SelStart := 0;
end;

procedure TFormPedido.Panel2Click(Sender: TObject);
var codigoCli: Integer;
    codCli, nomeCli, Contato, Endereco, CEP, Status: String;
begin
    lerDadosCliente;
    codCli := IntToStr(dadosCliente.codigoCli);
    leCodigoCliente.Text := codCli;
    //dbleEndereco.Text := dadosCliente.enderecoCli;
    //dbleCEP.Text := dadosCliente.cepCli;
    //ShowMessage('Nome: '+ dadosCliente.nomeCli+ ' Contato: '+ dadosCliente.contatoCli);
    Status := 'Aguardando orçamento';

    if (lePlaca.Text = '') or (leMarca.Text = '') or (leCor.Text = '') or (leModelo.Text = '') or (memoDescricaoDoServico.Text = '') then begin
        ShowMessage('Preencha os campos obrigatórios');
        Exit;
    end else begin

        with DM.QueryPedidos do begin

        //SQL.Text := 'INSERT INTO Veiculos(placa_veiculo, modelo, marca, cor) VALUES (:Placa, :Modelo, :Marca);';
        SQL.Text := 'INSERT INTO Pedidos(codigo_cliente, data_pedido, contato_cliente, endereco_cliente, cep_cliente, placa_veiculo, modelo, marca, cor, descricao_pedido, nome_cliente, status_pedido, email_cliente) VALUES (:CodCli, :Data, :Contato, :Endereco, :CEP, :Placa, :Modelo, :Marca, :Cor, :Descricao, :NomeCli, :Status, :Email);';

        ParamByName('CodCli').AsString := leCodigoCliente.Text;
        ParamByName('Data').AsDateTime := Date;
        ParamByName('Contato').AsString := dbleTelefone.Text;
        ParamByName('Endereco').AsString := dbleRua.Text;
        ParamByName('CEP').AsString := dbleCEPEndereco.Text;
        ParamByName('Placa').AsString := lePlaca.Text;
        ParamByName('Modelo').AsString := leModelo.Text;
        ParamByName('Marca').AsString := leMarca.Text;
        ParamByName('Cor').AsString := leCor.Text;
        ParamByName('Descricao').AsString := memoDescricaoDoServico.Text;
        ParamByName('NomeCli').AsString := leCliente.Text;
        ParamByName('Status').AsString := Status;
        ParamByName('Email').AsString := dadosCliente.emailCli;

        //ShowMessage('Descrição: '+ memoDescricaoDoServico.Text);

        //ParamByName('Chassi').AsString := leChassi.Text;
        //ParamByName('AnoFab').AsString := leAno.Text;

        ExecSQL;
        end;
        ShowMessage('Pedido finalizado! Aguarde a resposta da oficina. O orçamento estará disponível na aba Orçamentos.');

//        if MessageDlg('Pedido finalizado! Aguarde a resposta da oficina. O orçamento estará disponível na aba Orçamentos.',
//        mtConfirmation, [mbYes, mbNo], 0) = mrYes then FrameVeiculo else Close; Self.Close;

      end;
end;

procedure TFormPedido.Panel3Click;
begin
    formVerOrcamento.Show;
end;

end.
