-- Soma dos valores dos produtos

SELECT * FROM tb_ProdutoVenda;

SELECT * FROM tb_Produtos;

-- Seleção dos dados com  valores
SELECT V.cdVenda, C.nmCliete, P.cdProduto, P.nmProduto, PV.qtdProduto, P.vlProduto, qtdProduto * vlProduto AS qtdValorTotalProduto
FROM tb_Produtos P INNER JOIN tb_ProdutoVenda PV ON P.cdProduto = PV.cdProduto
INNER JOIN tb_Vendas V ON PV.cdVenda = V.cdVenda
INNER JOIN tb_Clientes C ON V.cdCliente = C.cdCliente;

-- Soma dos valores
SELECT C.nmCliete, 
SUM(PV.qtdProduto) AS qtdTotalProdutos,
p.nmProduto, 
SUM(P.vlProduto * PV.qtdProduto) AS qtdValorProdutos-- P.vlProduto, qtdProduto * vlProduto AS qtdValorTotalProduto
FROM tb_Produtos P INNER JOIN tb_ProdutoVenda PV ON P.cdProduto = PV.cdProduto
INNER JOIN tb_Vendas V ON PV.cdVenda = V.cdVenda
INNER JOIN tb_Clientes C ON V.cdCliente = C.cdCliente
GROUP BY C.nmCliete, P.nmProduto;

SELECT C.nmCliete, 
SUM(PV.qtdProduto) AS qtdTotalProdutos,
SUM(P.vlProduto * PV.qtdProduto) AS qtdValorProdutos-- P.vlProduto, qtdProduto * vlProduto AS qtdValorTotalProduto
FROM tb_Produtos P INNER JOIN tb_ProdutoVenda PV ON P.cdProduto = PV.cdProduto
INNER JOIN tb_Vendas V ON PV.cdVenda = V.cdVenda
INNER JOIN tb_Clientes C ON V.cdCliente = C.cdCliente
GROUP BY C.nmCliete;