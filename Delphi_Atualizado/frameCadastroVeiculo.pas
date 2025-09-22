unit frameCadastroVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TframeCadVeiculo = class(TFrame)
    pnlSenhaFuncionario: TPanel;
    lblCadastrandoVeiculo: TLabel;
    pnlDadosVeículo: TPanel;
    GridPanel2: TGridPanel;
    dbleModeloVeiculo: TDBLabeledEdit;
    Label1: TLabel;
    dbleMarcaVeiculo: TDBLabeledEdit;
    Label3: TLabel;
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    DBLabeledEdit2: TDBLabeledEdit;
    dbleChassiVeiculo: TDBLabeledEdit;
    dbleCorVeiculo: TDBLabeledEdit;
    Label4: TLabel;
    dbleAnoVeiculo: TDBLabeledEdit;
    pnlInfoVeiculo: TPanel;
    Label2: TLabel;
    pnlBotaoCadastrarVeiculo: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameCadVeiculo: TframeCadVeiculo;

implementation

{$R *.dfm}

end.
