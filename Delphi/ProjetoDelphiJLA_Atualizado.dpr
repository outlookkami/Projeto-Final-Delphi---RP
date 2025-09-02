program ProjetoDelphiJLA_Atualizado;

{$R *.dres}

uses
  Vcl.Forms,
  unitLogoJLA in 'unitLogoJLA.pas' {formLogin},
  unitCrudClientes in 'unitCrudClientes.pas' {Form2},
  unitDadosCadastro in 'unitDadosCadastro.pas' {formCadastroClientes},
  unitTestesJLA in 'unitTestesJLA.pas' {Form4},
  unitLoginGrid in 'unitLoginGrid.pas' {Form5},
  unitCadastroFuncionario in 'unitCadastroFuncionario.pas' {frameCadastroFunc: TFrame},
  frameCadastroCli in 'frameCadastroCli.pas' {Frame2: TFrame},
  unitCadastroClientes_Form in 'unitCadastroClientes_Form.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TformCadastroClientes, formCadastroClientes);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TframeCadastroFunc, frameCadastroFunc);
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFrame2, Frame2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
