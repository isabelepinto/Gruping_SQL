/*
Usando a tabela FACTONLINESALES
a) Voc� deve fazer uma consulta � tabela FactOnlineSales e descobrir qual � o ID
(CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna
SalesQuantity).
b) Feito isso, fa�a um agrupamento de total vendido (SalesQuantity) por ID do produto
e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a).
*/

-- Visualizando as colunas
SELECT TOP(10) * FROM FactOnlineSales

-- Letra A
SELECT 
	TOP(1) CustomerKey AS 'ID Cliente',
	SUM(SalesQuantity) AS 'Qtd. Vendas'
FROM
	FactOnlineSales
GROUP BY CustomerKey
ORDER BY SUM(SalesQuantity) DESC
-- resposta: cliente ID 19037

-- Letra B
SELECT 
	ProductKey AS 'ID Produto',
	SUM(SalesQuantity) AS 'Qtd. Vendas'
FROM
	FactOnlineSales
WHERE CustomerKey = '19037'
GROUP BY ProductKey
ORDER BY SUM(SalesQuantity) DESC
-- resposta: os top 3 produtos mais vendidos para o customer 19037 s�o: Produto ID 2515, 2516, 2506