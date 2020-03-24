-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, 
-- catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы,
-- идентификатор первичного ключа и содержимое поля name.



DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at DATETIME NOT NULL,
	table_name VARCHAR(45) NOT NULL,
	str_id BIGINT(20) NOT NULL,
	name_value VARCHAR(45) NOT NULL
) ENGINE = ARCHIVE;


--  TRIGGER ON users 
DROP TRIGGER IF EXISTS watchlog_users;
delimiter //
CREATE TRIGGER watchlog_users AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'users', NEW.id, NEW.name);
END //
delimiter ;


-- TRIGGER ON catalogs 
DROP TRIGGER IF EXISTS watchlog_catalogs;
delimiter //
CREATE TRIGGER watchlog_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END //
delimiter ;


-- TRIGGER ON products 
delimiter //
CREATE TRIGGER watchlog_products AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'products', NEW.id, NEW.name);
END //
delimiter ;


-- проверка для юзер  
SELECT * FROM users;
SELECT * FROM logs;

INSERT INTO users (name, birthday_at)
VALUES ('Крист', '2020-01-01');

SELECT * FROM users;
SELECT * FROM logs;

INSERT INTO users (name, birthday_at)
VALUES ('Lele Sinitsa', '2020-01-01'),
		('Sublime', '1299-01-01'),
		('Hublime', '1299-01-01'),
		('Den', '0000-00-01');

SELECT * FROM users;
SELECT * FROM logs;


-- проверка для каталог
SELECT * FROM catalogs;
SELECT * FROM logs;

INSERT INTO catalogs (name)
VALUES ('SSD память'),
		('Приводы'),
		('Мышки');

SELECT * FROM catalogs;
SELECT * FROM logs;


-- проверка для продактс
SELECT * FROM products;
SELECT * FROM logs;

INSERT INTO products (name, description, price, catalog_id)
VALUES ('MHG ASD35994', 'SSD память', 6000.00, 19),
		('Light PRS 1 (BK022)', 'Приводы', 1200.00, 9),
		('Адаптер', 'Адаптер для мыши', 1250.00, 10);

SELECT * FROM products;
SELECT * FROM logs;

