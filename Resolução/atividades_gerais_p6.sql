-- Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria, considere apenas os que têm a descrição maior que 100 e com tamanho médio maior que 500

SELECT
    product_category_name,
    avg(product_description_lenght) as media,
    max(product_description_lenght) as maximo,
    min(product_description_lenght) as min
FROM tb_products

WHERE product_category_name is not NULL
AND product_description_lenght >= 100

GROUP BY 1

HAVING media >= 500