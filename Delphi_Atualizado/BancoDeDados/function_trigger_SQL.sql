SELECT * FROM "Funcionarios";
SELECT * FROM "Clientes";
SELECT * FROM Usuarios;

ALTER TABLE "Funcionarios" ALTER COLUMN telefone_funcionario TYPE VARCHAR(11);


SHOW data_directory; "C:/Program Files/PostgreSQL/17/data"
SHOW log_directory; log
SHOW log_filename; "postgresql-%Y-%m-%d_%H%M%S.log"
SHOW logging_collector; on
SHOW log_statement;
SHOW log_min_duration_statement;
SHOW data_directory;

ALTER SYSTEM SET log_statement = 'ddl';
SELECT pg_reload_conf();

CREATE TABLE Usuarios(
id_usuario SERIAL PRIMARY KEY,
tipo_usuario VARCHAR(3) NOT NULL,
nome_usuario VARCHAR(255) NOT NULL UNIQUE,
senha_hash VARCHAR(255) NOT NULL
)

ALTER TABLE Usuarios ALTER COLUMN tipo_usuario TYPE VARCHAR(15)

ALTER TABLE "Clientes" ALTER COLUMN ;






CREATE OR REPLACE FUNCTION insere_cliente_usuarios()
RETURNS trigger AS $$
BEGIN
	INSERT INTO usuarios(nome_usuario, tipo_usuario, senha_hash)
	VALUES (NEW.email_cliente, 'Cliente', NEW.hash_senha_cli)
	ON CONFLICT (nome_usuario) DO NOTHING;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER cliente_usuario_trigger
AFTER INSERT ON "Clientes"
FOR EACH ROW 
EXECUTE FUNCTION insere_cliente_usuarios();








CREATE OR REPLACE FUNCTION insere_funcionario_usuarios()
RETURNS trigger AS $$
BEGIN
	INSERT INTO usuarios(nome_usuario, tipo_usuario, senha_hash)
	VALUES (NEW.email_funcionario, 'Funcionario', NEW.hash_senha_func)
	ON CONFLICT (nome_usuario) DO NOTHING;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER funcionario_usuario_trigger
AFTER INSERT ON "Funcionarios"
FOR EACH ROW 
EXECUTE FUNCTION insere_funcionario_usuarios();

SELECT * FROM "Clientes" 

DELETE FROM "Clientes" WHERE codigo_cliente = 1;


INSERT INTO "Clientes" (hash_senha_cli, nome_cliente, 
telefone_cliente, email_cliente, cep_cliente, endereco_cliente, num_endereco, 
bairro, cidade, uf, veiculo) VALUES ('a9993e364706816aba3e25717850c26c9cd0d89d', 
'Kamilly', '41995937553', 'dkamillythauanny@gmail.com',
'80740240', 'Rua Angela Ganz', '597', 
'Campina do Siqueira', 'Curitiba', 'PR', 'AVL7532');








