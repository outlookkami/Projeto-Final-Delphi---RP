program ProjetoDelphiJLA_Atualizado;



uses
  {$IFDEF EurekaLog}
  EMemLeaks,
  EResLeaks,
  EDebugJCL,
  EDebugMap,
  EDebugExports,
  EFixSafeCallException,
  EMapWin32,
  EAppVCL,
  EDialogWinAPIMSClassic,
  EDialogWinAPIEurekaLogDetailed,
  EDialogWinAPIStepsToReproduce,
  ExceptionLog7,
  {$ENDIF EurekaLog}
  Vcl.Forms,
  formLoginJLA in 'formLoginJLA.pas' {formLogin},
  formPáginaDeInícioFunc in 'formPáginaDeInícioFunc.pas' {formPáginaInicialFunc},
  frameCadastroFuncionario in 'frameCadastroFuncionario.pas' {frameCadastroFunc: TFrame},
  formCadastroFuncionario in 'formCadastroFuncionario.pas' {formCadastroFuncionarios},
  frameCadastroDeSenhaFuncionário in 'frameCadastroDeSenhaFuncionário.pas' {frameCadSenhaFuncionario: TFrame},
  frameFormularioPedido in 'frameFormularioPedido.pas' {frameFormularioDePedido: TFrame},
  formCadastroClientes in 'formCadastroClientes.pas' {formCadastroDeClientes},
  DataModuleInicial in 'DataModuleInicial.pas' {dtmInicial: TDataModule},
  formPáginaDeInícioClientes in 'formPáginaDeInícioClientes.pas' {formPáginaInicialCli},
  formPáginaDeInícioADM in 'formPáginaDeInícioADM.pas' {formPáginaInicialADM},
  framePerfil in 'framePerfil.pas' {framePerfilUsuário: TFrame},
  frameSobreNos in 'frameSobreNos.pas' {framePáginaSobreNos: TFrame},
  crudFuncionarios in 'crudFuncionarios.pas' {Frame2: TFrame},
  frameCadastroVeiculo in 'frameCadastroVeiculo.pas' {frameCadVeiculo: TFrame},
  dataModuleNormal in 'dataModuleNormal.pas' {DM: TDataModule},
  crudClientesSemErro in 'crudClientesSemErro.pas' {frameCrudClientes: TFrame},
  unitTestesDeProcedures in 'unitTestesDeProcedures.pas',
  frameTrocarSenhaUsuario in 'frameTrocarSenhaUsuario.pas' {TrocarSenha: TFrame},
  formPortfolio in 'formPortfolio.pas' {formPortfólio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Aviso';
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TformCadastroDeClientes, formCadastroDeClientes);
  Application.CreateForm(TformPáginaInicialFunc, formPáginaInicialFunc);
  Application.CreateForm(TformCadastroFuncionarios, formCadastroFuncionarios);
  Application.CreateForm(TformPáginaInicialADM, formPáginaInicialADM);
  Application.CreateForm(TformPáginaInicialCli, formPáginaInicialCli);
  Application.CreateForm(TdtmInicial, dtmInicial);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformPortfólio, formPortfólio);
  Application.Run;
end.

