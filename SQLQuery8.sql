/*
USANDO DIMCUSTOMER
Fa�a um agrupamento para descobrir a quantidade total de clientes e a m�dia salarial de
acordo com o seu n�vel escolar. Utilize a coluna Education da tabela DimCustomer para fazer
esse agrupamento.
*/

SELECT TOP(10) * FROM DimCustomer

SELECT
	Education AS 'N�vel Escolar',
	COUNT(CustomerKey) AS 'Total Clientes',
	AVG(YearlyIncome) AS 'M�dia Salarial'
FROM	
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education