/*
DIMEMPLOYEE
Fa�a uma tabela resumo mostrando a quantidade total de funcion�rios de acordo com o
Departamento (DepartmentName). Importante: Voc� dever� considerar apenas os
funcion�rios ativos.
*/

SELECT TOP(10)* FROM DimEmployee

SELECT 
	DepartmentName AS 'Departamento',
	COUNT(EmployeeKey) AS 'Qtd de Funcion�rios'
FROM
	DimEmployee
WHERE EndDate IS NULL
GROUP BY DepartmentName
ORDER BY COUNT(EmployeeKey)