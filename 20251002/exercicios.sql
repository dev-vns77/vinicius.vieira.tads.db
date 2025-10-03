
-- Liste todos os produtos mais caros do que o produto mais barato da categoria "Eletrônicos"
SELECT CATEGORIA, VALOR
FROM VENDAS
WHERE VALOR > (SELECT MIN(VALOR)  FROM VENDAS WHERE CATEGORIA = 'Eletrônicos')
ORDER BY VALOR ASC; 

-- Mostre o vendedor que realizou a maior venda registrada na tabela.

SELECT VENDEDOR, PRODUTO, VALOR
FROM VENDAS
WHERE VALOR = (SELECT MAX(VALOR)  FROM VENDAS)


-- Liste as categorias que têm pelo menos um produto acima do preço médio geral.
SELECT CATEGORIA, PRODUTO, VALOR
FROM VENDAS
WHERE VALOR > (SELECT AVG(VALOR)  FROM VENDAS)

-- Monte um ranking dos 3 produtos mais caros vendidos por cada vendedor.

SELECT PRODUTO, VENDEDOR, VALOR
FROM VENDAS
WHERE VALOR SELECT MAX(VALOR)  FROM VENDAS)

--Monte um ranking dos 3 produtos mais caros vendidos por cada vendedor.
SELECT *
FROM (
    SELECT
        vendedor,
        produto,
        valor,
        ROW_NUMBER() OVER (PARTITION BY vendedor ORDER BY valor DESC) AS ranking
    FROM VENDAS
)