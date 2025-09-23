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
  TDataModule1 = class(TDataModule)
    ConexaoBanco: TFDConnection;
    QueryCadastro: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    QueryCadastrocodigo_cliente: TIntegerField;
    QueryCadastrohash_senha_cli: TStringField;
    QueryCadastronome_cliente: TStringField;
    QueryCadastrotelefone_cliente: TStringField;
    QueryCadastroemail_cliente: TStringField;
    QueryCadastrocep_cliente: TStringField;
    QueryCadastroendereco_cliente: TStringField;
    QueryCadastronum_endereco: TStringField;
    QueryCadastrobairro: TStringField;
    QueryCadastrocidade: TStringField;
    QueryCadastrouf: TStringField;
    QueryCadastroveiculo: TStringField;
    procedure FDPhysPgDriverLink1DriverCreated(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
