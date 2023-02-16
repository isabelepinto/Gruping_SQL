/*
a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas
(channelkey).
b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade
total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).
c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas
para o ano de 2007.
*/

-- Visualizando a tabela
SELECT
	TOP(10)*
FROM
	FactSales

-- Resposta letra A
SELECT 
	channelKey AS 'Canal de Vendas',
	SUM(SalesQuantity) AS 'Total Qtd. Vendida'
FROM 
	FactSales
GROUP BY channelKey

-- Resposta letra B
SELECT
	StoreKey,
	SUM(SalesQuantity) AS 'Total Qtd. Vendida',
	SUM(ReturnQuantity) AS 'Total Qtd. Devolvida'
FROM
	FactSales
GROUP BY StoreKey
ORDER BY StoreKey

-- Resposta letra C
SELECT
	channelKey,
	SUM(SalesAmount) AS 'Total de Vendas'
FROM
	FactSales
WHERE DateKey LIKE '%2007%'
GROUP BY channelKey