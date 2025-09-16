program ProjetoDelphiJLA_Atualizado;



uses
  Vcl.Forms,
  formLoginJLA in 'formLoginJLA.pas' {formLogin},
  formPáginaDeInícioFunc in 'formPáginaDeInícioFunc.pas' {formPáginaInicialFunc},
  frameCadastroFuncionario in 'frameCadastroFuncionario.pas' {frameCadastroFunc: TFrame},
  formCadastroFuncionario in 'formCadastroFuncionario.pas' {formCadastroFuncionarios},
  frameCadastroDeSenhaFuncionário in 'frameCadastroDeSenhaFuncionário.pas' {frameCadSenhaFuncionario: TFrame},
  frameFormularioPedido in 'frameFormularioPedido.pas' {frameFormularioDePedido: TFrame},
  formCadastroClientes in 'formCadastroClientes.pas' {formCadastroDeClientes},
  DataModuleInicial in 'DataModuleInicial.pas' {DataModule1: TDataModule},
  formPáginaDeInícioClientes in 'formPáginaDeInícioClientes.pas' {formPáginaInicialCli},
  formPáginaDeInícioADM in 'formPáginaDeInícioADM.pas' {formPáginaInicialADM},
  framePerfil in 'framePerfil.pas' {Frame1: TFrame},
  crudClientes in 'crudClientes.pas' {crudCli: TFrame},
  frameSobreNos in 'frameSobreNos.pas' {framePáginaSobreNos: TFrame},
  crudFuncionarios in 'crudFuncionarios.pas' {Frame2: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformCadastroFuncionarios, formCadastroFuncionarios);
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TformPáginaInicialADM, formPáginaInicialADM);
  Application.CreateForm(TformPáginaInicialFunc, formPáginaInicialFunc);
  Application.CreateForm(TformPáginaInicialCli, formPáginaInicialCli);
  Application.CreateForm(TformCadastroDeClientes, formCadastroDeClientes);
  Application.CreateForm(TframeCadastroFunc, frameCadastroFunc);
  Application.CreateForm(TframeCadSenhaFuncionario, frameCadSenhaFuncionario);
  Application.CreateForm(TframeFormularioDePedido, frameFormularioDePedido);
  Application.CreateForm(TFrame1, Frame1);
  Application.CreateForm(TframePáginaSobreNos, framePáginaSobreNos);
  Application.CreateForm(TcrudCli, crudCli);
  Application.Run;
end.
