/*
DIMPRODUCT

a) Faça um agrupamento e descubra a quantidade total de produtos por marca.
b) Determine a média do preço unitário (UnitPrice) para cada ClassName.
c) Faça um agrupamento de cores e descubra o peso total que cada cor de produto possui.
*/


-- Visualizar as colunas
SELECT * FROM DimProduct

-- Letra A
SELECT 
	BrandName AS 'Marca',
	COUNT(ProductKey) AS 'Qtd. Produtos'
FROM	
	DimProduct
GROUP BY BrandName

--Letra B
SELECT 
	ClassName,
	AVG(UnitPrice) AS 'Média Preço Unitário'
FROM	
	DimProduct
GROUP BY ClassName

-- Letra C
SELECT
	ColorName,
	SUM(Weight) AS 'Peso Total'
FROM
	DimProduct
GROUP BY ColorName
ORDER BY SUM(Weight) DESC