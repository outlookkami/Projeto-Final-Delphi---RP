unit formLoginJLA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, System.Hash,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList, System.UITypes,
  Vcl.Imaging.pngimage, Vcl.Skia, Vcl.DBCtrls, DataModuleNormal,
  Data.DB, FireDAC.Stan.Param;

type
  TformLogin = class(TForm)
    pnlLogin: TPanel;
    pnlBaseLogin: TPanel;
    pnlLayoutLogin: TPanel;
    GridPanelLogin: TGridPanel;
    Label3: TLabel;
    Label4: TLabel;
    GridPanel3: TGridPanel;
    cadeadoSenha: TImage;
    GridPanel4: TGridPanel;
    lblVazio001: TLabel;
    lblVazio002: TLabel;
    lblVazio003: TLabel;
    lblVazio004: TLabel;
    lblVazio005: TLabel;
    lblVazio006: TLabel;
    imgFechar: TImage;
    Image1: TImage;
    lblAvisoSenha: TLabel;
    DSLogin: TDataSource;
    leSenhaLogin: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    GridPanel2: TGridPanel;
    lblVazio: TLabel;
    lblAvisoUsuario: TLabel;
    leUsuario: TLabeledEdit;
    lblEsqueceuSenha: TLabel;
    pnlEntrar: TPanel;
    lblCadastreAqui: TLabel;
    BalloonHint1: TBalloonHint;
    procedure cadeadoSenhaClick(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure lblCadastreAquiClick(Sender: TObject);
    procedure lblEsqueceuSenhaClick(Sender: TObject);
    procedure HideShowSenha;
    procedure pnlEntrarClick(Sender: TObject);
    procedure registDadosLogin;
    procedure lerDadosLogin;
  private
    { Private declarations }

  public
    { Public declarations }
    //procedure pnlEntrarClick(Sender: TObject);
  end;

var
  formLogin: TformLogin;

implementation

{$R *.dfm}

uses  unitSessao,
      formTrocarSenha,
      frameTrocarSenhaUsuario,
      formCadastroClientes,
      formPáginaDeInícioClientes,
      formPáginaDeInícioFunc,
      formPáginaDeInícioADM,
      IniFiles;

var iniArq: TIniFile;

procedure TformLogin.registDadosLogin;

begin
    iniArq := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'login.ini');
    try
      iniArq.WriteString('Login', 'Usuario', leUsuario.Text);
    finally
       iniArq.Free;
    end;
end;

procedure TformLogin.lerDadosLogin;
begin
    iniArq := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'login.ini');
    leUsuario.Text := iniArq.ReadString('Login', 'Usuario', '');
    iniArq.Free;
end;

procedure TformLogin.HideShowSenha;
begin
    if leSenhaLogin.PasswordChar = '*' then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul desbloqueado.png');
    leSenhaLogin.PasswordChar := #0;
    end else if leSenhaLogin.PasswordChar = #0 then begin
    cadeadoSenha.Picture.LoadFromFile('C:\Users\Kamilly Souza\Desktop\Projeto Delphi-JLA\Delphi_Atualizado\Assets\cadeado azul bloqueado.png');
    leSenhaLogin.PasswordChar := '*';
    end;
end;

procedure TformLogin.cadeadoSenhaClick(Sender: TObject);
begin
     HideShowSenha;
end;

procedure TformLogin.imgFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TformLogin.lblCadastreAquiClick(Sender: TObject);
begin
//    formCadastroDeClientes.Create(Self);
//    formCadastroDeClientes.Parent := Self;
//    formCadastroDeClientes.Align := alClient;
    formCadastroDeClientes.Show;
end;

procedure TformLogin.lblEsqueceuSenhaClick(Sender: TObject);
var frameTrocarSenhaUsuario: TTrocarSenha;
begin
    frameTrocarSenhaUsuario := TTrocarSenha.Create(Self);
    frameTrocarSenhaUsuario.Parent := Self;
    frameTrocarSenhaUsuario.Align := alClient;
    frameTrocarSenhaUsuario.Show;
end;

procedure TformLogin.pnlEntrarClick(Sender: TObject);
 var
 TipoUsuario: String;
 funcionarioAdm: Boolean;
begin
  if (leSenhaLogin.Text = '') or (leUsuario.Text = '') then begin
    ShowMessage('Preencha todos os campos.');
  end;

  if leSenhaLogin.Text = '' then begin
      lblAvisoSenha.Caption := 'Informe sua senha';
      leSenhaLogin.SetFocus;
  end else begin
      lblAvisoSenha.Caption := '';
  end;

  if leUsuario.Text = '' then begin
      lblAvisoUsuario.Caption := 'Informe seu usuário';
      leUsuario.SetFocus;
  end else begin
        lblAvisoUsuario.Caption := '';
  end;

  begin
     if (DM.QueryFuncionarios.FieldByName('funcao').AsString = 'Administrador') then begin
       funcionarioAdm := true;
     end;

     DM.QueryUsuarios.SQL.Text := 'SELECT * FROM Usuarios WHERE nome_usuario = :usuario AND senha_hash = :senha';

     DM.QueryUsuarios.ParamByName('usuario').AsString := leUsuario.Text;
     DM.QueryUsuarios.ParamByName('senha').AsString := THashSHA1.GetHashString(leSenhaLogin.Text);
     DM.QueryUsuarios.Open;

      if not DM.QueryUsuarios.IsEmpty then begin
        TipoUsuario := DM.QueryUsuarios.FieldByName('tipo_usuario').AsString;
        Self.Hide;
       if TipoUsuario = 'Cliente' then begin
         Application.CreateForm(TformPáginaInicialCli, formPáginaInicialCli);
         formPáginaInicialCli.Show;
       end else if TipoUsuario = 'Funcionario' then begin
         Application.CreateForm(TformPáginaInicialFunc, formPáginaInicialFunc);
         formPáginaInicialFunc.Show;
         end else if (TipoUsuario = 'Administrador') or (funcionarioAdm = true) then begin
            Application.CreateForm(TformPáginaInicialADM, formPáginaInicialADM);
            formPáginaInicialADM.Show;
                end else begin
                  ShowMessage('Usuário ou senha incorretos. Tente novamente.');
                end;
      end;
  end;
end;
end.

// ShowMessage('Usuário ou senha incorretos. Tente novamente.');
