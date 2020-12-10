SELECT SQL_NO_CACHE  SQL_CALC_FOUND_ROWS 			
CONCAT("PIN",product.id_product) AS id,
product_lang.name as title,
TRIM(TRIM(BOTH CHAR(13) FROM(TRIM(BOTH CHAR(13) FROM product_lang.description)))) AS description,
CONCAT("https://direct-d-sign.com/",product_lang.link_rewrite,".htm") AS link,
CONCAT( 'https://direct-d-sign.com/img/p/',MID(image.id_image,1,1),'/', IF (LENGTH(image.id_image)>1,CONCAT(MID(image.id_image,2,1),'/'),''),
 IF (LENGTH(image.id_image)>2,CONCAT(MID(image.id_image,3,1),'/'),''),IF(LENGTH(image.id_image)>3,CONCAT(MID(image.id_image,4,1),'/'),''),
 IF (LENGTH(image.id_image)>4,CONCAT(MID(image.id_image,5,1),'/'),''), image.id_image, '.jpg' ) AS image_link,
 CONCAT(ROUND((product.price*1.2),2), " EUR") AS price, 
category_lang.name AS category, 
IF(product_shop.active> 0, "in stock", "out of stock") AS availability
FROM ps_product product
LEFT JOIN ps_product_lang product_lang ON (product_lang.id_product = product.id_product AND product_lang.id_lang = 1 AND product_lang.id_shop = 1) 			 		
LEFT JOIN ps_image image ON (image.id_product = product.id_product)  AND image.cover = 1	
LEFT JOIN ps_stock_available stock_available ON (stock_available.id_product = product.id_product AND stock_available.id_product_attribute = 0 		 AND stock_available.id_shop = 1  AND stock_available.id_shop_group = 0 )  
JOIN ps_product_shop product_shop ON (product.id_product = product_shop.id_product AND product_shop.id_shop = product.id_shop_default) 				
LEFT JOIN ps_category_lang category_lang ON (product_shop.id_category_default = category_lang.id_category AND product_lang.id_lang = category_lang.id_lang AND category_lang.id_shop = product.id_shop_default) 						
LEFT JOIN ps_image_shop image_shop ON (image_shop.id_image = image.id_image AND image_shop.cover = 1 AND image_shop.id_shop = product.id_shop_default) 					
WHERE product_shop.active = 1
GROUP BY product_shop.id_product  			 			
ORDER BY product.id_product ASC 
#Version : PrestaShop 1.6.0.14 - MySQL 5.5.62 - PHP 5.5.9 - By dAv 
