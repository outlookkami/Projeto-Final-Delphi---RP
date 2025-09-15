program ProjetoDelphiJLA_Atualizado;



uses
  Vcl.Forms,
  unitLogoJLA in 'unitLogoJLA.pas' {formLoginSemGridPanel},
  formPáginaDeInícioFunc in 'formPáginaDeInícioFunc.pas' {formPáginaInicialFunc},
  unitLoginGrid in 'unitLoginGrid.pas' {formLoginGrid},
  frameCadastroFuncionario in 'frameCadastroFuncionario.pas' {frameCadastroFunc: TFrame},
  formCadastroFuncionario in 'formCadastroFuncionario.pas' {formCadastroFuncionarios},
  frameCadastroDeSenhaFuncionário in 'frameCadastroDeSenhaFuncionário.pas' {frameCadSenhaFuncionario: TFrame},
  frameFormularioPedido in 'frameFormularioPedido.pas' {frameFormularioDePedido: TFrame},
  formCadastroClientes in 'formCadastroClientes.pas' {formCadastroDeClientes},
  DataModuleInicial in 'DataModuleInicial.pas' {DataModule1: TDataModule},
  frameInicioPageControl in 'frameInicioPageControl.pas' {framePageControlInicio: TFrame},
  formPáginaDeInícioClientes in 'formPáginaDeInícioClientes.pas' {formPáginaInicialCli},
  formPáginaDeInícioADM in 'formPáginaDeInícioADM.pas' {Form1},
  framePerfil in 'framePerfil.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPáginaInicialFunc, formPáginaInicialFunc);
  Application.CreateForm(TformPáginaInicialCli, formPáginaInicialCli);
  Application.CreateForm(TformLoginSemGridPanel, formLoginSemGridPanel);
  Application.CreateForm(TframePageControlInicio, framePageControlInicio);
  Application.CreateForm(TformCadastroDeClientes, formCadastroDeClientes);
  Application.CreateForm(TformLoginGrid, formLoginGrid);
  Application.CreateForm(TframeCadastroFunc, frameCadastroFunc);
  Application.CreateForm(TformCadastroFuncionarios, formCadastroFuncionarios);
  Application.CreateForm(TframeCadSenhaFuncionario, frameCadSenhaFuncionario);
  Application.CreateForm(TframeFormularioDePedido, frameFormularioDePedido);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
