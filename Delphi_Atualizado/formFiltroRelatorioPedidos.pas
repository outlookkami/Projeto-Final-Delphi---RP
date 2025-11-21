unit formFiltroRelatorioPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TformFiltroRelPedidos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dtInicio: TDateTimePicker;
    dtFim: TDateTimePicker;
    lblPeriodo: TLabel;
    lblDataInicio: TLabel;
    lblDataFim: TLabel;
    Button1: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroRelPedidos: TformFiltroRelPedidos;

implementation

{$R *.dfm}

uses relatorioPedidos, dataModuleNormal;

procedure TformFiltroRelPedidos.Button1Click(Sender: TObject);
begin
    //formRepPedidos := TformRepPedidos.Create(Application);
    try
//      formRepPedidos.dtInicio := dtInicio.Date;
//      formRepPedidos.dtFim := dtFim.Date;
      DM.QueryRelPedidos.Close;
      DM.QueryRelPedidos.ParamByName('dataInicio').AsDate := dtInicio.Date;
      DM.QueryRelPedidos.ParamByName('dataFim').AsDate := dtFim.Date;
      DM.QueryRelPedidos.Open;

      formRepPedidos.RLReport1.Preview;
    finally
      formRepPedidos.Free;
    end;
end;

end.
