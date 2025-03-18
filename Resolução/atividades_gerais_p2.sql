-- Quantos produtos tem mais de 5 Litros?

SELECT 
    product_id,
    --Calculando o volume
    -- 1cm3 = 0,001 Litrros --> /1000
    product_length_cm * product_height_cm * product_width_cm / 1000 as volume_litros
FROM tb_products

WHERE product_length_cm * product_height_cm * product_width_cm / 1000 >= 5

