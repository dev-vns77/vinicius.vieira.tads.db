-- Liste o nome do cliente e o produto de cada venda, mostrando também a cidade.
SELECT 
    C.NOME AS CLIENTE,
        V.PRODUTO,
        V.VALOR,
        C.CIDADE
FROM VENDAS V
INNER JOIN CLIENTES C
ON C. ID_CLIENTE = V.ID_CLIENTE;

--Mostre o total de vendas por estado.

SELECT 
    C.ESTADO,
    SUM(V.VALOR) AS TOTAL_VENDAS
FROM VENDAS V
    INNER JOIN CLIENTES C
ON C.ID_CLIENTE = V.ID_CLIENTE
GROUP BY C.ESTADO;