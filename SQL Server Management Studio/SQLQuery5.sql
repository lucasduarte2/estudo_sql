-- Inser��es das tabelas
-- INSERT INTO [nome da tabela] ([colunas]) VALUES ()

INSERT INTO tb_Produtos VALUES ('Suco de Laranja', 4.5);
INSERT INTO tb_Produtos VALUES ('Suco de uva', 5.0);
-- Ordem errada
--INSERT INTO tb_Produtos VALUES (1.5, 'Suco de Manga');
-- Com os nomes das colunas
INSERT INTO tb_Produtos (vlProduto, nmProduto) VALUES (1.5, 'Suco de Manga');
-- Testando o Constraint
INSERT INTO tb_Vendas VALUES(2, 3.2);