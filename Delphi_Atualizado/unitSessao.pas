unit unitSessao;

interface

type
  TTipoUsuario =  String;

  TSessao = record
    codigo: Integer;
    nome, email, funcao, telefone: String;
    acesso: TTipoUsuario;
  end;

var sessaoAtual: TSessao;

implementation

//TipoUsuario := DM.QueryUsuarios.FieldByName('tipo_usuario').AsString
end.
