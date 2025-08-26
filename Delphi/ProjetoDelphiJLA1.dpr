program ProjetoDelphiJLA1;

uses
  Vcl.Forms,
  unitLogoJLA in 'unitLogoJLA.pas' {formLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformLogin, formLogin);
  Application.Run;
end.
