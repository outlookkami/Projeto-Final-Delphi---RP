unit crudClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TcrudCli = class(TFrame)
    Panel1: TPanel;
    pnlPesquisa: TPanel;
    DBEdit1: TDBEdit;
    iconePesquisa: TImage;
    DBGrid1: TDBGrid;
    pnlLogin: TPanel;
    Label1: TLabel;
    gridPanelLogin: TGridPanel;
    LableV1: TLabel;
    dbleNome: TDBLabeledEdit;
    Label2: TLabel;
    dbleTelefone: TDBLabeledEdit;
    Label3: TLabel;
    dbleEmail: TDBLabeledEdit;
    Label4: TLabel;
    dbleCEP: TDBLabeledEdit;
    Label5: TLabel;
    dbleEndereco: TDBLabeledEdit;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    dbleNumero: TDBLabeledEdit;
    dbleBairro: TDBLabeledEdit;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    dbleCidade: TDBLabeledEdit;
    dbleUF: TDBLabeledEdit;
    Label8: TLabel;
    dbleSenha: TLabeledEdit;
    Label9: TLabel;
    dbleConfSenha: TLabeledEdit;
    Label10: TLabel;
    Label11: TLabel;
    pnlCadastrar: TPanel;
    btnIncluirCli: TPanel;
    procedure btnIncluirCliClick(Sender: TObject);
    procedure pnlCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var crudCli: TcrudCli;

implementation

{$R *.dfm}

procedure TcrudCli.btnIncluirCliClick(Sender: TObject);
begin
   pnlLogin.Visible := True;
end;

procedure TcrudCli.pnlCadastrarClick(Sender: TObject);
begin
    pnlLogin.Visible := False;
end;

end.
