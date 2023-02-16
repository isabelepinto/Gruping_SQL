/*
UTILIZANDO DIMPRODUCT
Você seria capaz de confirmar se todas as marcas dos produtos possuem à disposição todas as
16 opções de cores?
*/

SELECT TOP(10)* FROM DimProduct

SELECT 
	BrandName,
	COUNT(DISTINCT ColorName) AS 'Tipos de Cores'
FROM	
	DimProduct
GROUP BY BrandName