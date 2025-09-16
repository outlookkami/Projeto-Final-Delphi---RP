unit frameSobreNos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TframePáginaSobreNos = class(TFrame)
    Panel1: TPanel;
    lblSobreNos: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var framePáginaSobreNos: TframePáginaSobreNos;

implementation

{$R *.dfm}

end.
