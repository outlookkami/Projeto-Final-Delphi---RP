unit dataModuleNormal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.ConsoleUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, Data.Win.ADODB, FireDAC.VCLUI.Wait;

type
  TDM = class(TDataModule)
    ConexaoBanco: TFDConnection;
    QueryClientes: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysPgDriverLink2: TFDPhysPgDriverLink;
    QueryFuncionarios: TFDQuery;
    QueryPerfil: TFDQuery;
    QueryUsuarios: TFDQuery;
    QueryUsuariosid_usuario: TIntegerField;
    QueryUsuariostipo_usuario: TStringField;
    QueryUsuariosnome_usuario: TStringField;
    QueryUsuariossenha_hash: TStringField;
    QueryFuncionarioscodigo_funcionario: TIntegerField;
    QueryFuncionarioshash_senha_func: TStringField;
    QueryFuncionariosnome_funcionario: TStringField;
    QueryFuncionariostelefone_funcionario: TStringField;
    QueryFuncionariosemail_funcionario: TStringField;
    QueryFuncionarioscep_funcionario: TStringField;
    QueryFuncionariosendereco_funcionario: TStringField;
    QueryFuncionariosnum_endereco: TStringField;
    QueryFuncionariosbairro: TStringField;
    QueryFuncionarioscidade: TStringField;
    QueryFuncionariosuf: TStringField;
    QueryFuncionariosfuncao: TStringField;
    QueryFuncionarioscpf_funcionario: TStringField;
    QueryFuncionariosrg_funcionario: TStringField;
    QueryProdutos: TFDQuery;
    QueryProdutoscodigo_produto: TIntegerField;
    QueryProdutoscodigo_barras: TStringField;
    QueryProdutosnome_produto: TStringField;
    QueryProdutoscategoria: TStringField;
    QueryProdutosunidade_medida: TStringField;
    QueryProdutosquant_estoque: TIntegerField;
    QueryProdutosquant_est_prevista: TIntegerField;
    QueryProdutospreco_compra: TBCDField;
    QueryProdutospreco_venda: TBCDField;
    QueryProdutosfoto_produto: TStringField;
    QueryProdutosmarca: TStringField;
    FDTransaction1: TFDTransaction;
    QueryFuncionariosativo_in: TBooleanField;
    QueryPedidos: TFDQuery;
    QueryPedidoscodigo_pedido: TIntegerField;
    QueryPedidoscodigo_cliente: TIntegerField;
    QueryPedidosendereco_cliente: TStringField;
    QueryPedidoscep_cliente: TStringField;
    QueryPedidosplaca_veiculo: TStringField;
    QueryPedidosmarca: TStringField;
    QueryPedidosmodelo: TStringField;
    QueryPedidoscor: TStringField;
    QueryPedidosdescricao_pedido: TMemoField;
    QueryVeiculos: TFDQuery;
    QueryVeiculoscodigo_veiculo: TIntegerField;
    QueryVeiculosplaca_veiculo: TStringField;
    QueryVeiculoschassi: TStringField;
    QueryVeiculosmodelo: TStringField;
    QueryVeiculosmarca: TStringField;
    QueryVeiculoscor: TStringField;
    QueryVeiculosano_fab: TSmallintField;
    QueryVeiculosano_mod: TSmallintField;
    QueryVeiculosnome_cliente: TStringField;
    QueryVeiculosnome_usuario_cliente: TStringField;
    QueryVeiculoscodigo_cliente: TIntegerField;
    QueryLogin: TFDQuery;
    QueryLoginid_usuario: TIntegerField;
    QueryLogintipo_usuario: TStringField;
    QueryLoginnome_usuario: TStringField;
    QueryLoginsenha_hash: TStringField;
    FDMemTable1: TFDMemTable;
    QueryFuncionariosfuncionario_data_criacao: TSQLTimeStampField;
    QueryPedidoscontato_cliente: TStringField;
    QueryPedidosdata_pedido: TSQLTimeStampField;
    QueryPedidosnome_cliente: TStringField;
    QueryPedidosstatus_pedido: TStringField;
    QueryUsuariosusuario_data_criacao: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
