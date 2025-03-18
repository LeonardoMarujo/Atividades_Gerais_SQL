-- Quantos produtos de 'beleza_saude' com menos de 1 Litro?

SELECT 
    product_id,
    product_category_name,
    --Calculando o volume
    -- 1cm3 = 0,001 Litrros --> /1000
    product_length_cm * product_height_cm * product_width_cm / 1000 as volume_litros
FROM tb_products

WHERE product_length_cm * product_height_cm * product_width_cm / 1000 <= 1 
AND product_category_name = 'beleza_saude'

