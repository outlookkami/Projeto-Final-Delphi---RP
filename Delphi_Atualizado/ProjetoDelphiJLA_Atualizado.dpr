program ProjetoDelphiJLA_Atualizado;



uses
  Vcl.Forms,
  unitLogoJLA in 'unitLogoJLA.pas' {formLoginSemGridPanel},
  formP�ginaDeIn�cio in 'formP�ginaDeIn�cio.pas' {formP�ginaInicial},
  formCadastroClientesANTIGO in 'formCadastroClientesANTIGO.pas' {formCadastroClientes},
  unitTestesJLA in 'unitTestesJLA.pas' {formTESTEPanelGrid},
  unitLoginGrid in 'unitLoginGrid.pas' {formLoginGrid},
  frameCadastroFuncionario in 'frameCadastroFuncionario.pas' {frameCadastroFunc: TFrame},
  formCadastroFuncionario in 'formCadastroFuncionario.pas' {formCadastroFuncionarios},
  frameCadastroDeSenhaFuncion�rio in 'frameCadastroDeSenhaFuncion�rio.pas' {frameCadSenhaFuncionario: TFrame},
  frameTESTEFormularioPedido in 'frameTESTEFormularioPedido.pas' {frameFormularioPedidoSemGridPanel: TFrame},
  frameFormularioPedido in 'frameFormularioPedido.pas' {frameFormularioDePedido: TFrame},
  frameCadastroClientes in 'frameCadastroClientes.pas' {formCadastroDeClientes},
  DataModuleInicial in 'DataModuleInicial.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformLoginSemGridPanel, formLoginSemGridPanel);
  Application.CreateForm(TformCadastroDeClientes, formCadastroDeClientes);
  Application.CreateForm(TformLoginGrid, formLoginGrid);
  Application.CreateForm(TframeCadastroFunc, frameCadastroFunc);
  Application.CreateForm(TformP�ginaInicial, formP�ginaInicial);
  Application.CreateForm(TformCadastroFuncionarios, formCadastroFuncionarios);
  Application.CreateForm(TframeCadSenhaFuncionario, frameCadSenhaFuncionario);
  Application.CreateForm(TframeFormularioPedidoSemGridPanel, frameFormularioPedidoSemGridPanel);
  Application.CreateForm(TframeFormularioDePedido, frameFormularioDePedido);
  Application.CreateForm(TformCadastroClientes, formCadastroClientes);
  Application.CreateForm(TformTESTEPanelGrid, formTESTEPanelGrid);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
