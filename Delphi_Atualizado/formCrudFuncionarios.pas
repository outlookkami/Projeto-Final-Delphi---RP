unit formCrudFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, DataModuleNormal,
  Datasnap.DBClient, Vcl.Buttons;

type
  TformCrudFunc = class(TForm)
    Panel1: TPanel;
    btnIncluirFunc: TPanel;
    pnlPesquisa: TPanel;
    iconePesquisa: TImage;
    DBGrid1: TDBGrid;
    DSFuncionarios: TDataSource;
    lblDadosFunc: TLabel;
    gridPanelLogin: TGridPanel;
    lblVazio5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    leNumero: TLabeledEdit;
    leBairro: TLabeledEdit;
    Label7: TLabel;
    GridPanel4: TGridPanel;
    leCidade: TLabeledEdit;
    GridPanel7: TGridPanel;
    Label12: TLabel;
    cbUF: TComboBox;
    pnlSelecionaFuncao: TPanel;
    lblSelecionaFuncao: TLabel;
    cbFuncao: TComboBox;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    leCEP: TLabeledEdit;
    leEmail: TLabeledEdit;
    leTelefone: TLabeledEdit;
    leNome: TLabeledEdit;
    leEndereco: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    edtPesquisa: TEdit;
    btnEditFunc: TPanel;
    btnInativFunc: TPanel;
    btnExcluFunc: TPanel;
    procedure btnInativFuncClick(Sender: TObject);
    procedure iconePesquisaClick(Sender: TObject);
    procedure btnEditFuncClick(Sender: TObject);
    procedure btnIncluirFuncClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCrudFunc: TformCrudFunc;

implementation

{$R *.dfm}

procedure TformCrudFunc.FormCreate(Sender: TObject);
begin
//      DM.QueryFuncionarios.Close;
//      DM.QueryFuncionarios.Open;
end;

procedure TformCrudFunc.btnInativFuncClick(Sender: TObject);
begin
//    DM.QueryFuncionarios.SQL.Text := 'SELECT * FROM "Funcionarios" WHERE ativo_in = True';
//    if Funcionario.ativo_in <> true then begin
//      ShowMessage('O funcionário deve estar inativo antes de ser excluído.');
//    end;
end;


procedure TformCrudFunc.btnIncluirFuncClick(Sender: TObject);
begin
    DM.QueryFuncionarios.Open;
    DM.QueryFuncionarios.Insert;
end;


procedure TformCrudFunc.btnEditFuncClick(Sender: TObject);
begin
    DM.QueryFuncionarios.Open;
    DM.QueryFuncionarios.Edit;

    DM.QueryFuncionarios.SQL.Text := 'SET ativo_in = false';
end;

procedure TformCrudFunc.iconePesquisaClick(Sender: TObject);
begin
    //DM.QueryFuncionarios
end;

//procedure TformCrudFunc.spdbtnIncluFuncClick(Sender: TObject);
//begin
//    DM.QueryFuncionarios.Open;
//    DM.QueryFuncionarios.Insert;
//end;

end.
