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
  EDialogService,
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
  formPáginaDeInícioClientes in 'formPáginaDeInícioClientes.pas' {formPáginaInicialCli},
  formPáginaDeInícioADM in 'formPáginaDeInícioADM.pas' {formPáginaInicialADM},
  framePerfil in 'framePerfil.pas' {framePerfilUsuario: TFrame},
  frameSobreNos in 'frameSobreNos.pas' {framePáginaSobreNos: TFrame},
  frameCadastroVeiculo in 'frameCadastroVeiculo.pas' {frameCadVeiculo: TFrame},
  dataModuleNormal in 'dataModuleNormal.pas' {DM: TDataModule},
  unitTestesDeProcedures in 'unitTestesDeProcedures.pas',
  frameTrocarSenhaUsuario in 'frameTrocarSenhaUsuario.pas' {TrocarSenha: TFrame},
  formPortfolio in 'formPortfolio.pas' {formVerPortfolio},
  formTrocarSenha in 'formTrocarSenha.pas' {formTrocaSenha},
  formCrudFuncionarios in 'formCrudFuncionarios.pas' {formCrudFunc},
  formConfirmeEmail in 'formConfirmeEmail.pas' {formConfEmail},
  formCrudProdutos in 'formCrudProdutos.pas' {formProdutos},
  formCrudClientes in 'formCrudClientes.pas' {formCrudCli},
  formPerfilPage in 'formPerfilPage.pas' {formPerfil},
  unitCEPConsultor in 'unitCEPConsultor.pas',
  formCrudVeiculos in 'formCrudVeiculos.pas' {CrudVeiculos},
  formFormularioPedido in 'formFormularioPedido.pas' {FormPedido},
  formOrcamento in 'formOrcamento.pas' {formVerOrcamento},
  unitPlacaConsultor in 'unitPlacaConsultor.pas',
  unitSessao in 'unitSessao.pas',
  formCrudPedidos in 'formCrudPedidos.pas' {crudPedidos},
  formCrudOrcamentos in 'formCrudOrcamentos.pas' {crudOrcamentos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Aviso';
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TformPáginaInicialADM, formPáginaInicialADM);
  Application.CreateForm(TformPáginaInicialFunc, formPáginaInicialFunc);
  Application.CreateForm(TformPáginaInicialCli, formPáginaInicialCli);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformVerOrcamento, formVerOrcamento);
  Application.Run;
end.


