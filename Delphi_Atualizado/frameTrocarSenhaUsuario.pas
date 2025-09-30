unit frameTrocarSenhaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, DataModuleNormal;

type
  TFrame1 = class(TFrame)
    pnlSenhaFuncionario: TPanel;
    lblCrieNovaSenha: TLabel;
    pnlCadSenhaFunc: TPanel;
    GridPanel1: TGridPanel;
    Label2: TLabel;
    dbleUsuarioNovaSenha: TDBLabeledEdit;
    Label1: TLabel;
    Label3: TLabel;
    pnlBotaoTrocarSenha: TPanel;
    GridPanel5: TGridPanel;
    leSenha: TLabeledEdit;
    cadeadoSenha: TImage;
    GridPanel6: TGridPanel;
    cadeadoConfSenha: TImage;
    leConfSenha: TLabeledEdit;
    procedure pnlBotaoTrocarSenhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame1.pnlBotaoTrocarSenhaClick(Sender: TObject);
begin
    if leSenha.Text = leConfSenha.Text then begin
      DM.QueryFuncionarios.SQL.Text :='UPDATE Usuarios SET senha_hash = leConfSenha.Text';
    end;

end;

end.
