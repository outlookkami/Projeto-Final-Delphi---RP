program ProjetoDelphiJLA1;

{$R *.dres}

uses
  Vcl.Forms,
  unitCrudClientes in 'unitCrudClientes.pas' {Form2},
  unitLogoJLA in 'unitLogoJLA.pas' {formLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TformLogin, formLogin);
  Application.Run;
end.
