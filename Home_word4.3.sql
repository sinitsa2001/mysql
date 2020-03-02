/*Написать скрипт, отмечающий несовершеннолетних пользователей 
как неактивных (поле is_active = false). Предварительно добавить такое поле 
в таблицу profiles со значением по умолчанию = true (или 1)*/

ALTER TABLE vk.profiles MODIFY COLUMN is_active varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL;


SELECT birthday FROM profiles  WHERE birthday < '2002-01-01'; -- выводим данные по "молодым людям"

UPDATE vk.profiles SET is_active='1' WHERE user_id ; 
-- обновляем в табличке колонку в формат True..забыл сделать при создании

UPDATE profiles set is_active = '0' WHERE birthday < '2002-01-01';  
-- выполняем домашнее задание - отмечаем "false" молодых людей.

