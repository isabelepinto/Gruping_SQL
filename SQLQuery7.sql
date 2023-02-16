/*
DIMCUSTOMER
Faça um agrupamento para saber o total de clientes de acordo com o Sexo e também a média
salarial de acordo com o Sexo. Corrija qualquer resultado “inesperado” com os seus
conhecimentos em SQL.
*/

SELECT TOP(10) * FROM DimCustomer

SELECT
	Gender AS 'Sexo',
	COUNT(CustomerKey) AS 'Total Clientes',
	AVG(YearlyIncome) AS 'Média Salarial'
FROM	
	DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender