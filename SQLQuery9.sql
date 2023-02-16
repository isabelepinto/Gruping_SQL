/*
DIMEMPLOYEE
Faça uma tabela resumo mostrando a quantidade total de funcionários de acordo com o
Departamento (DepartmentName). Importante: Você deverá considerar apenas os
funcionários ativos.
*/

SELECT TOP(10)* FROM DimEmployee

SELECT 
	DepartmentName AS 'Departamento',
	COUNT(EmployeeKey) AS 'Qtd de Funcionários'
FROM
	DimEmployee
WHERE EndDate IS NULL
GROUP BY DepartmentName
ORDER BY COUNT(EmployeeKey)