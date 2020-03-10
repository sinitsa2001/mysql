
/* Составьте список пользователей users, которые осуществили 
  хотя бы один заказ orders в интернет магазине.
 */
-- заполняем таблицы заказов и состава заказов = соответственно друг другу
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

INSERT INTO `orders` VALUES ('1','1','2012-05-29 08:43:50','2012-05-29 08:43:50'),
('2','1','1999-01-05 11:39:38','1999-01-05 11:39:38'),
('3','4','1999-03-05 08:06:34','1999-03-05 08:06:34'),
('4','2','2000-02-17 01:39:00','2000-02-17 01:39:00'),
('5','7','2005-10-01 19:10:03','2005-10-01 19:10:03'),
('6','5','2009-05-31 10:47:17','2009-05-31 10:47:17'),
('7','4','2005-12-20 10:46:54','2005-12-20 10:46:54');


DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY,
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состав заказа';

INSERT INTO orders_products(order_id, product_id, total)
VALUES (1, 1, 1), (2, 1, 2), (3, 4, 3), (4, 7, 4), 
	   (5, 7, 1), (6, 5, 2), (7, 4, 3);
	  
-- решение задачи = выводим юзеров кто делал заказы	  
	  
select id, name from users where id in
	(select user_id from orders group by user_id);	  
