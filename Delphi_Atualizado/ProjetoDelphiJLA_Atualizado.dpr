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
  DataModuleInicial in 'DataModuleInicial.pas' {dtmInicial: TDataModule},
  formPáginaDeInícioClientes in 'formPáginaDeInícioClientes.pas' {formPáginaInicialCli},
  formPáginaDeInícioADM in 'formPáginaDeInícioADM.pas' {formPáginaInicialADM},
  framePerfil in 'framePerfil.pas' {framePerfilUsuário: TFrame},
  crudClientes in 'crudClientes.pas' {crudCli: TFrame},
  frameSobreNos in 'frameSobreNos.pas' {framePáginaSobreNos: TFrame},
  crudFuncionarios in 'crudFuncionarios.pas' {Frame2: TFrame},
  frameCadastroVeiculo in 'frameCadastroVeiculo.pas' {frameCadVeiculo: TFrame},
  testandoHash in 'testandoHash.pas' {Form1},
  dataModuleNormal in 'dataModuleNormal.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Aviso';
  Application.CreateForm(TformCadastroDeClientes, formCadastroDeClientes);
  Application.CreateForm(TformPáginaInicialFunc, formPáginaInicialFunc);
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TformCadastroFuncionarios, formCadastroFuncionarios);
  Application.CreateForm(TformPáginaInicialADM, formPáginaInicialADM);
  Application.CreateForm(TformPáginaInicialCli, formPáginaInicialCli);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdtmInicial, dtmInicial);
  Application.CreateForm(TcrudCli, crudCli);
  Application.CreateForm(TframeCadastroFunc, frameCadastroFunc);
  Application.CreateForm(TframeCadVeiculo, frameCadVeiculo);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
