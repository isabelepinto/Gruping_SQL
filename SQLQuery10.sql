/*
UTILIZANDO DIMEMPLOYEE
Fa�a uma tabela resumo mostrando o total de VacationHours para cada cargo (Title). Voc�
deve considerar apenas as mulheres, dos departamentos de Production, Marketing,
Engineering e Finance, para os funcion�rios contratados entre os anos de 1999 e 2000.
*/

SELECT TOP(10)* FROM DimEmployee

SELECT
	Title AS 'Cargo',
	SUM(VacationHours) AS 'Horas de F�rias Totais'
FROM
	DimEmployee
WHERE Gender = 'F' AND DepartmentName IN('Production' ,'Marketing', 'Engineerging', 'Finance') AND HireDate BETWEEN '19990101' AND '20001231'
GROUP BY Title

