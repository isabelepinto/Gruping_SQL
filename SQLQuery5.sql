/*
Utilizando DIMPRODUCT

Voc� dever� descobrir o peso total para cada tipo de produto (StockTypeName).
A tabela final deve considerar apenas a marca �Contoso� e ter os seus valores classificados em
ordem decrescente.
*/

SELECT
	StockTypeName AS 'Tipo de Produto',
	SUM(Weight) AS 'Peso Total'
FROM	
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY SUM(Weight) DESC