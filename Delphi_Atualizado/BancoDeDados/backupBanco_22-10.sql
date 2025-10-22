SELECT * FROM "Clientes";
SELECT * FROM "Funcionarios";
SELECT * FROM Produtos;
SELECT * FROM Usuarios;
SELECT * FROM Veiculos;
SELECT * FROM Pedidos;

ALTER TABLE Pedidos ADD COLUMN nome_cliente VARCHAR(100);
CREATE TABLE IF NOT EXISTS Pedidos (
codigo_pedido SERIAL PRIMARY KEY,
codigo_cliente INT NOT NULL REFERENCES "Clientes"(codigo_cliente) ON DELETE CASCADE,
codigo_funcionario INT REFERENCES "Funcionarios"(codigo_funcionario) ON DELETE CASCADE,
data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
contato_cliente VARCHAR(11) NOT NULL,
endereco_cliente VARCHAR(60),
cep_cliente VARCHAR(8),
placa_veiculo VARCHAR(7) NOT NULL,
modelo VARCHAR(20),
marca VARCHAR(20),
cor VARCHAR(20),
descricao_pedido TEXT
);