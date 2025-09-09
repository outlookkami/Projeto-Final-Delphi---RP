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
  unitCadastroClientes_Form in 'unitCadastroClientes_Form.pas' {formCadastroCliente},
  formCadastroFuncionario in 'formCadastroFuncionario.pas' {formCadastroFuncionarios},
  frameCadastroDeSenhaFuncionário in 'frameCadastroDeSenhaFuncionário.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformCadastroCliente, formCadastroCliente);
  Application.CreateForm(TformCadastroClientes, formCadastroClientes);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TframeCadastroFunc, frameCadastroFunc);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFrame2, Frame2);
  Application.CreateForm(TformCadastroFuncionarios, formCadastroFuncionarios);
  Application.Run;
end.
