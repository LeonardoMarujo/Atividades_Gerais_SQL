-- Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria.

SELECT
    product_category_name,
    avg(product_description_lenght) as media,
    max(product_description_lenght) as maximo,
    min(product_description_lenght) as min
FROM tb_products

WHERE product_category_name is not NULL

GROUP BY 1