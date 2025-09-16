program ProjetoDelphiJLA_Atualizado;



uses
  Vcl.Forms,
  formLoginJLA in 'formLoginJLA.pas' {formLogin},
  formP�ginaDeIn�cioFunc in 'formP�ginaDeIn�cioFunc.pas' {formP�ginaInicialFunc},
  frameCadastroFuncionario in 'frameCadastroFuncionario.pas' {frameCadastroFunc: TFrame},
  formCadastroFuncionario in 'formCadastroFuncionario.pas' {formCadastroFuncionarios},
  frameCadastroDeSenhaFuncion�rio in 'frameCadastroDeSenhaFuncion�rio.pas' {frameCadSenhaFuncionario: TFrame},
  frameFormularioPedido in 'frameFormularioPedido.pas' {frameFormularioDePedido: TFrame},
  formCadastroClientes in 'formCadastroClientes.pas' {formCadastroDeClientes},
  DataModuleInicial in 'DataModuleInicial.pas' {DataModule1: TDataModule},
  formP�ginaDeIn�cioClientes in 'formP�ginaDeIn�cioClientes.pas' {formP�ginaInicialCli},
  formP�ginaDeIn�cioADM in 'formP�ginaDeIn�cioADM.pas' {formP�ginaInicialADM},
  framePerfil in 'framePerfil.pas' {Frame1: TFrame},
  crudClientes in 'crudClientes.pas' {crudCli: TFrame},
  frameSobreNos in 'frameSobreNos.pas' {frameP�ginaSobreNos: TFrame},
  crudFuncionarios in 'crudFuncionarios.pas' {Frame2: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformCadastroFuncionarios, formCadastroFuncionarios);
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TformP�ginaInicialADM, formP�ginaInicialADM);
  Application.CreateForm(TformP�ginaInicialFunc, formP�ginaInicialFunc);
  Application.CreateForm(TformP�ginaInicialCli, formP�ginaInicialCli);
  Application.CreateForm(TformCadastroDeClientes, formCadastroDeClientes);
  Application.CreateForm(TframeCadastroFunc, frameCadastroFunc);
  Application.CreateForm(TframeCadSenhaFuncionario, frameCadSenhaFuncionario);
  Application.CreateForm(TframeFormularioDePedido, frameFormularioDePedido);
  Application.CreateForm(TFrame1, Frame1);
  Application.CreateForm(TframeP�ginaSobreNos, frameP�ginaSobreNos);
  Application.CreateForm(TcrudCli, crudCli);
  Application.Run;
end.
