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
    QueryClientescodigo_cliente: TIntegerField;
    QueryClienteshash_senha_cli: TStringField;
    QueryClientesnome_cliente: TStringField;
    QueryClientestelefone_cliente: TStringField;
    QueryClientesemail_cliente: TStringField;
    QueryClientescep_cliente: TStringField;
    QueryClientesendereco_cliente: TStringField;
    QueryClientesnum_endereco: TStringField;
    QueryClientesbairro: TStringField;
    QueryClientescidade: TStringField;
    QueryClientesuf: TStringField;
    QueryClientesveiculo: TStringField;
    FDPhysPgDriverLink2: TFDPhysPgDriverLink;
    QueryFuncionarios: TFDQuery;
    Perfil: TFDQuery;
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
