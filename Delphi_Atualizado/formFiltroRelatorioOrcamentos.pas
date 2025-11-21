unit formFiltroRelatorioOrcamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TformFiltroRelOrcamentos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    lblPeriodo: TLabel;
    lblDataInicio: TLabel;
    lblDataFim: TLabel;
    dtInicio: TDateTimePicker;
    dtFim: TDateTimePicker;
    Button1: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroRelOrcamentos: TformFiltroRelOrcamentos;

implementation

{$R *.dfm}

uses relatorioOrcamentos, dataModuleNormal;

procedure TformFiltroRelOrcamentos.Button1Click(Sender: TObject);
begin
    formRepOrcamentos := TformRepOrcamentos.Create(Application);
    try
      DM.QueryRelOrcamentos.Close;
      DM.QueryRelOrcamentos.ParamByName('dataInicio').AsDate := dtInicio.Date;
      DM.QueryRelOrcamentos.ParamByName('dataFim').AsDate := dtFim.Date;
      DM.QueryRelOrcamentos.Open;

      formRepOrcamentos.repOrcamentos.Preview;
    finally
      formRepOrcamentos.Free;
    end;
end;

end.
