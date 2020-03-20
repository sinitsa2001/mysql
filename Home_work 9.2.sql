/*Создайте представление, которое выводит название name товарной позиции из
 таблицы products и соответствующее название каталога name из таблицы catalogs.*/

use shop;
CREATE VIEW
	products_catalogs AS
SELECT 
	p.name AS product_name, c.name AS catalog_name
FROM
	products AS p
LEFT JOIN
	catalogs AS c
ON
	p.catalog_id = c.id;