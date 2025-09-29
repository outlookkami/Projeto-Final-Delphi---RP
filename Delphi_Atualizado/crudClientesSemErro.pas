unit crudClientesSemErro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, System.UITypes, dataModuleNormal, formCadastroClientes;

type
  TframeCrudClientes = class(TFrame)
    Panel1: TPanel;
    btnIncluirCli: TPanel;
    pnlPesquisa: TPanel;
    iconePesquisa: TImage;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DSClientes: TDataSource;
    pnlCadastroCli: TPanel;
    Label1: TLabel;
    gridPanelLogin: TGridPanel;
    lblV1: TLabel;
    dbleNomeCompleto: TDBLabeledEdit;
    lblV2: TLabel;
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
    Label9: TLabel;
    Label11: TLabel;
    pnlCadastrar: TPanel;
    Label13: TLabel;
    GridPanel5: TGridPanel;
    Label10: TLabel;
    leSenha: TLabeledEdit;
    cadeadoSenha: TImage;
    Label14: TLabel;
    GridPanel6: TGridPanel;
    leConfSenha: TLabeledEdit;
    cadeadoConfSenha: TImage;
    procedure btnIncluirCliClick(Sender: TObject);
    procedure pnlCadastrarClick(Sender: TObject);
    procedure cadeadoSenhaClick(Sender: TObject);
    procedure cadeadoConfSenhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var frameCrudClientes: TframeCrudClientes;

implementation

{$R *.dfm}

procedure TframeCrudClientes.btnIncluirCliClick(Sender: TObject);
begin
   pnlCadastroCli.Visible := True;
end;

procedure TframeCrudClientes.cadeadoSenhaClick(Sender: TObject);
begin
    if leSenha.PasswordChar = '*' then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leSenha.PasswordChar := #0;
    end else if leSenha.PasswordChar = #0 then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    leSenha.PasswordChar := '*';
    end;
end;


procedure TframeCrudClientes.cadeadoConfSenhaClick(Sender: TObject);
begin
    if leConfSenha.PasswordChar = '*' then begin
    cadeadoConfSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leConfSenha.PasswordChar := #0;
    end else if leConfSenha.PasswordChar = #0 then begin
    cadeadoConfSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    leConfSenha.PasswordChar := '*';
    end;
end;

procedure TframeCrudClientes.pnlCadastrarClick(Sender: TObject);
begin
    pnlCadastroCli.Visible := False;
    if MessageDlg('Cadastro finalizado com sucesso! Deseja incluir um veículo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    //frameCadVeiculo.Visible := True;
end;

end.
