unit DataModuleInicial;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection,
  ZAbstractTable, ZDataset, ZSqlUpdate, Data.DB, ZAbstractRODataset,
  ZAbstractDataset;

type
  TdtmInicial = class(TDataModule)
    ConexaoPG: TZConnection;
    ZQuery1: TZQuery;
    ZUpdateSQL1: TZUpdateSQL;
    ZTable1: TZTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmInicial: TdtmInicial;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
