/*
USANDO DIMCUSTOMER
Faça um agrupamento para descobrir a quantidade total de clientes e a média salarial de
acordo com o seu nível escolar. Utilize a coluna Education da tabela DimCustomer para fazer
esse agrupamento.
*/

SELECT TOP(10) * FROM DimCustomer

SELECT
	Education AS 'Nível Escolar',
	COUNT(CustomerKey) AS 'Total Clientes',
	AVG(YearlyIncome) AS 'Média Salarial'
FROM	
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education