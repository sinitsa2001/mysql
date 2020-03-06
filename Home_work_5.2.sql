
/*
 * Таблица users была неудачно спроектирована. 
Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались 
значения в формате "20.10.2017 8:10". 
Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
 */

create table user2(id INT UNSIGNED NOT NULL PRIMARY KEY, 
	name varchar(200), created_at varchar(255), 
	updated_at varchar(200));
-- создаем таблицу отвечающую требованиям задания с НЕ правильно оформленными полями created_at, updated_at

insert into user2 (id, name,created_at, updated_at) 
	values (1, 'Lele', "20.10.2017 8:10",'20.10.2020 9:10');
-- вставляем данные в табличку в соответствии с условиями задачи

-- ниже решение задачи
Update user2 set created_at = str_to_date(created_at, '%d.%m.%Y %H:%i:%s');
Update user2 set updated_at = str_to_date(updated_at, '%d.%m.%Y %H:%i:%s');

ALTER TABLE shop.user2 MODIFY COLUMN updated_at datetime;
ALTER TABLE shop.user2 MODIFY COLUMN created_at datetime;


/*В таблице складских запасов storehouses_products в поле value могут встречаться 
самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. 
Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения 
значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.
*/














