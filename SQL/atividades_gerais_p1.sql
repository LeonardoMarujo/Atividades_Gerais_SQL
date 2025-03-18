-- Quantos produtos temos na categoria 'artes'?

SELECT
    product_category_name as categorias,
    count(DISTINCT(product_id)) as quantidade
FROM tb_products

WHERE product_category_name = 'artes'