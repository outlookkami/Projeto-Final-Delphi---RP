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
    pnlBotaoCadastrarVeiculo: TPanel;
    Panel1: TPanel;
    gridPanelCad2: TGridPanel;
    Label5: TLabel;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    leAno: TLabeledEdit;
    leCor: TLabeledEdit;
    lePlaca: TLabeledEdit;
    leChassi: TLabeledEdit;
    leMarca: TLabeledEdit;
    leModelo: TLabeledEdit;
    GridPanel2: TGridPanel;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameCadVeiculo: TframeCadVeiculo;

implementation

{$R *.dfm}

end.
