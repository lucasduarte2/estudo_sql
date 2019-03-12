/*
	Loja de Sucos do Lucas

	* Vende sucos (principalmente de Laranja)

	* Dados dos clientes:
		Nome (texto)
		nascimento (data dd/mm/aaaa)
		sexo (número)
		endereço
			Rua (texto)
			cidade (texto)
			Estado (texto)
		Telefones (texto)

	* Dados das vendas
		Número da venda (número) 
		cliente que comprou (texto)
		preço total (número)

	* Dados do produto
		Nome (texto)
		Preço (número)
*/

/*
	Truncar - Diminui o tamanho do texto/dado
	nmProduto VARCHAR(3);
	"Coxinha" (7 letras) -> Cox
*/

-- Aula 4 - Criando Tabelas (Parte 1)
CREATE TABLE tb_Produtos (
	cdProduto INT PRIMARY KEY IDENTITY(1,1), --IDENTITY(1,1) comeca de 1 e vai aumentando de 1 em 1
	nmProduto VARCHAR(50) NOT NULL, -- Obrigatorio
	vlProduto DECIMAL(6,2) NOT NULL -- 6 n antes da virgula, e 2 n apois a virgula 	
);

-- Aula 5 - Criando Tabelas (Parte 2)
CREATE TABLE tb_Clientes (
	cdCliente INT PRIMARY KEY IDENTITY(1,1), --IDENTITY(1,1) comeca de 1 e vai aumentando de 1 em 1
	nmCliete VARCHAR(50) NOT NULL,
	dtNascimento DATE,
	inSexo VARCHAR(1) NOT NULL,
	nmEndereco VARCHAR(50),
	nmCidade VARCHAR(50),
	nmEstado VARCHAR(30),
	nmTelefone1 VARCHAR(15),
	nmTelefone2 VARCHAR(15)
);

CREATE TABLE tb_Vendas (
	cdVenda INT PRIMARY KEY IDENTITY(1,1), --IDENTITY(1,1) comeca de 1 e vai aumentando de 1 em 1
	cdCliente INT NOT NULL FOREIGN KEY REFERENCES tb_Clientes (cdCliente),
	dtVenda DATETIME NOT NULL
);

CREATE TABLE tb_ProdutoVenda (
	cdProdutoVenda INT PRIMARY KEY IDENTITY(1,1),
	cdVenda INT FOREIGN KEY REFERENCES tb_Vendas (cdVenda) NOT NULL,
	cdProduto INT FOREIGN KEY REFERENCES tb_Produtos (cdProduto) NOT NULL,
	qtdProduto INT NOT NULL
);



-- FOREIGN KEY
-- CONSTRAINT

ALTER TABLE tb_Vendas /*alterar a tabela vendas*/
ADD CONSTRAINT FK_Produtos_Vendas
FOREIGN KEY (cdProduto) /*coluna q vai receber a chave secundaria*/
REFERENCES tb_Produtos (cdProduto) /*qual tabela ela vai referenciar e a coluna*/

--remover a tabela de vendas
DROP TABLE tb_Vendas;