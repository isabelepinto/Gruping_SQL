/*
UTILIZANDO DIMPRODUCT
Voc� seria capaz de confirmar se todas as marcas dos produtos possuem � disposi��o todas as
16 op��es de cores?
*/

SELECT TOP(10)* FROM DimProduct

SELECT 
	BrandName,
	COUNT(DISTINCT ColorName) AS 'Tipos de Cores'
FROM	
	DimProduct
GROUP BY BrandName