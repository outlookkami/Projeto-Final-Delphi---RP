unit frameCadastroVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFrame4 = class(TFrame)
    pnlSenhaFuncionario: TPanel;
    lblCadastrandoVeiculo: TLabel;
    pnlCadSenhaFunc: TPanel;
    pnlBotaoCadastrarVeiculo: TPanel;
    GridPanel2: TGridPanel;
    dbleModeloVeiculo: TDBLabeledEdit;
    Label1: TLabel;
    dbleMarcaVeiculo: TDBLabeledEdit;
    Label3: TLabel;
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    DBLabeledEdit2: TDBLabeledEdit;
    Label2: TLabel;
    dbleChassiVeiculo: TDBLabeledEdit;
    dbleCorVeiculo: TDBLabeledEdit;
    Label4: TLabel;
    dbleAnoVeiculo: TDBLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
