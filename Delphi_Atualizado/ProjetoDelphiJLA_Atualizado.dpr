program ProjetoDelphiJLA_Atualizado;



uses
  Vcl.Forms,
  unitLogoJLA in 'unitLogoJLA.pas' {formLoginSemGridPanel},
  formP�ginaDeIn�cioFunc in 'formP�ginaDeIn�cioFunc.pas' {formP�ginaInicialFunc},
  unitLoginGrid in 'unitLoginGrid.pas' {formLoginGrid},
  frameCadastroFuncionario in 'frameCadastroFuncionario.pas' {frameCadastroFunc: TFrame},
  formCadastroFuncionario in 'formCadastroFuncionario.pas' {formCadastroFuncionarios},
  frameCadastroDeSenhaFuncion�rio in 'frameCadastroDeSenhaFuncion�rio.pas' {frameCadSenhaFuncionario: TFrame},
  frameFormularioPedido in 'frameFormularioPedido.pas' {frameFormularioDePedido: TFrame},
  formCadastroClientes in 'formCadastroClientes.pas' {formCadastroDeClientes},
  DataModuleInicial in 'DataModuleInicial.pas' {DataModule1: TDataModule},
  frameInicioPageControl in 'frameInicioPageControl.pas' {framePageControlInicio: TFrame},
  formP�ginaDeIn�cioClientes in 'formP�ginaDeIn�cioClientes.pas' {formP�ginaInicialCli},
  formP�ginaDeIn�cioADM in 'formP�ginaDeIn�cioADM.pas' {Form1},
  framePerfil in 'framePerfil.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformP�ginaInicialFunc, formP�ginaInicialFunc);
  Application.CreateForm(TformP�ginaInicialCli, formP�ginaInicialCli);
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
