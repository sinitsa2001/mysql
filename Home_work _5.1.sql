/* Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение”
Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
Заполните их текущими датой и временем.
*/

 ALTER TABLE shop.users MODIFY COLUMN created_ad current_timestamp;
 ALTER TABLE shop.users MODIFY COLUMN updated_ad datetime;
 ALTER TABLE shop.user1 MODIFY COLUMN created_ad default now();
 insert into user1 (birthday_at, name, id) values ('1971-04-17', 'Serhio', '1');
 select * from user1;
 select * from user1 created_at; 
 