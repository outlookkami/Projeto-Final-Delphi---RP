program ProjetoDelphiJLA_Atualizado;



uses
  Vcl.Forms,
  unitLogoJLA in 'unitLogoJLA.pas' {formLoginSemGridPanel},
  formPáginaDeInício in 'formPáginaDeInício.pas' {formPáginaInicial},
  formCadastroClientesANTIGO in 'formCadastroClientesANTIGO.pas' {formCadastroClientes},
  unitTestesJLA in 'unitTestesJLA.pas' {formTESTEPanelGrid},
  unitLoginGrid in 'unitLoginGrid.pas' {formLoginGrid},
  frameCadastroFuncionario in 'frameCadastroFuncionario.pas' {frameCadastroFunc: TFrame},
  formCadastroFuncionario in 'formCadastroFuncionario.pas' {formCadastroFuncionarios},
  frameCadastroDeSenhaFuncionário in 'frameCadastroDeSenhaFuncionário.pas' {frameCadSenhaFuncionario: TFrame},
  frameTESTEFormularioPedido in 'frameTESTEFormularioPedido.pas' {frameFormularioPedidoSemGridPanel: TFrame},
  frameFormularioPedido in 'frameFormularioPedido.pas' {frameFormularioDePedido: TFrame},
  frameCadastroClientes in 'frameCadastroClientes.pas' {formCadastroDeClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformLoginGrid, formLoginGrid);
  Application.CreateForm(TframeCadastroFunc, frameCadastroFunc);
  Application.CreateForm(TformPáginaInicial, formPáginaInicial);
  Application.CreateForm(TformCadastroFuncionarios, formCadastroFuncionarios);
  Application.CreateForm(TframeCadSenhaFuncionario, frameCadSenhaFuncionario);
  Application.CreateForm(TframeFormularioPedidoSemGridPanel, frameFormularioPedidoSemGridPanel);
  Application.CreateForm(TformLoginSemGridPanel, formLoginSemGridPanel);
  Application.CreateForm(TframeFormularioDePedido, frameFormularioDePedido);
  Application.CreateForm(TformCadastroDeClientes, formCadastroDeClientes);
  Application.CreateForm(TformCadastroClientes, formCadastroClientes);
  Application.Run;
end.
