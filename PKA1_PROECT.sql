/*Требования к курсовому проекту

1. общее текстовое описание БД и решаемых ею задач
2. минимальное количество таблиц - 10
3. скрипты создания структуры БД (с первичными ключами, индексами, внешними ключами)
4. скрипты наполнения БД данными
5. скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы)
6. представления (минимум 2)
7. хранимые процедуры / триггеры
8. ER-диаграмма
9. …

 * 
-- Описание базы данных: 
 *  База данных предприятия = автомойка. !! 
 * В данном случае - реально реализованное решение (написанное по моему заказу (для меня) программистами. 
 * Настоящая база в проекте конечно же намного сложнее ибо ПРОГРАММНО-АППАРАТНЫЙ КОМПЛЕКС - как мы его называем.
 * 
 * В данном (упрощенном) случае аппаратной части нет. есть только видеокамеры и собственно все.  
 * Каждый бокс (помещение) автомойки оборудован камерами, также 
 * может быть оборудован контроллерами (релейными) включения/выключения оборудования. 
 * Ведется учет количества машин за заданный период, фото/видеосъемка, учет оказываемых услуг, подсчет выручки. 
 * прием заказа и основные действия ведутся в таблице 'session'. 
 * При приеме заказа на мойку: указывается номер бокса, категория авто, номер авто, id клиента, скидка (если она есть), 
 * базовая цена из таблицы прайс, сумма за оказанные услуги, детекция принт-чек и id администратора (user) принимающего заказ.
 * 
 * сделано на примере одной лишь мойки (кроме этого есть еще сервис, и кафе) = тут реализована только мойка 
 * Все основные действия происходят в таблице = session . В этой таблице происходит определение времени начали/конца события
 * вводится номер машины клиента, услуги, id клиента, скидка клиента,   id администратора (в чью смену происходит мойка), номер бокса = где моется машина
 * статус работы видеокамеры, и собственно деньги за услугу
 * 
 * связанные таблицы: 
 * Прайс - где есть id услуги, описание, наименование и базовая цена, категория (свазанная позиция)
 * Категории - это вид услуги (над прайсом) : мойка, шиномонтаж, кафе, сервис, и т.д
 * Юзер = это администратор, со своим логином, паролем, данными для входа и правами на управление
 * Клиент = где ест все данные на клиента: номер машины, скидка, категории, имя, данные для связи и т.д.
 * Бокс  = таблица с описанием бокса мойки, с номером и камерой
 * Order - в данном случае (заказ-чек) = отображает время создания, порядковый номер и ссылается на  id сессии - где собственно все происходит
 * 
 * Таблицы Сервис=авто и Сервис Сессии = по факту тоже что и мойка, но со своими услугами. Функционал = такой же 
 * 
 * Таблицы получения отчетов
 * 1) Статистика = табличка для сбора данных работы мойки: поля: сумма денег, за выбранный день, 
 * кол-во машин, отдельная выбрка = наличные /безналичные (эквайринг)
 * 
 * 2) Важный клиент = в данной реализации - таблица для предоставления максимальной скидки (акционная) клиенту
 */ 
 */

DROP TABLE IF EXISTS `box`;
CREATE TABLE `box` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `box_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `camera` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  INDEX `id` (`id`),
  index `camera` (`camera`)
) DEFAULT CHARSET=utf8;


INSERT INTO `box` (`id`, `name`, `box_type`,`camera`, `category_id`) VALUES
(1,	'Бокс 1',	'BOX', 'camera1',	2),
(2,	'Бокс 2',	'BOX',  'camera2',	2),
(3,	'Бокс 3',	'BOX',	'camera3',	2),
(4,	'Бокс 4',	'BOX',	'camera4',	2),
(5,	'Бокс 5',	'BOX',	'camera5',	2),
(6,	'Бокс 6',	'BOX',	'camera6',	2),
(7,	'Шиномонтаж',	'TIRE',	'camera7', 1),
(8,	'Кафе',	'CAFE',	'',	3),
(9,	'Сервис',	'TIRE',	'',	9);


DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  INDEX `id_idx` (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `category` (`id`, `name`) VALUES
(1,	'Шиномонтаж'),
(2,	'Мойка'),
(3,	'Кафе'),
(4,	'Химчистка'),
(5,	'Полировка'),
(6,	'Наномойка'),
(7,	'АКЦИИ'),
(8,	'Озонирование салона'),
(9,	'Автосервис'),
(10,'Автовинил и тонировка');


DROP TABLE IF EXISTS `Client`;
CREATE TABLE `Client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT NOW(),
  `gos_nomer` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auto_type_id` tinyint(4) NOT NULL DEFAULT '1', -- тип (категория авто)
  `marka` smallint(5) unsigned NOT NULL DEFAULT '0',
  `model` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discount` tinyint(4) NOT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `born` date NOT NULL DEFAULT '2016-01-01',
  `sex` tinyint(4) NOT NULL,
  `note` varchar(255) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `Updated` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
   INDEX `discount_idx` (`discount`),
   INDEX `gos_nomer_idx` (`gos_nomer`)
)  DEFAULT CHARSET=utf8;


INSERT INTO `Client` (`id`, `name`, `created`, `gos_nomer`, `auto_type_id`, `marka`, `model`, `phone`, `discount`, `email`, `born`, `sex`, `note`, `deleted`, `Updated`) VALUES
(1,	'Ашуров Абдухалип Бегович',	'2016-02-02 10:52:38',	'а140рр197',	1,	0,	'',	'8 916 548 32 21',	10,	'',	'2016-01-01',	0,	'',	0,	0),
(2,	'Мирошниченко Антонина Николаевна',	'2016-02-02 10:52:38',	'т697ум197',	2,	0,	'',	'8 916 425 77 08',	20,	'',	'2016-01-01',	0,	'',	0,	0),
(3,	'Николаев Наталия Дмитриевна',	'2016-02-02 10:52:38',	'т904ам50',	4,	0,	'',	'8 985 964 64 74',	10,	'nkordon@yandex.ru',	'2016-01-01',	1,	'',	0,	0),
(4,	'Дудкина Елена Викторович ',	'2016-02-02 10:52:38',	'у744ве77',	4,	0,	'',	'8 925 367 02 30',	10,	'',	'2016-01-01',	0,	'',	0,	0),
(5,	'Гусев Алексей Владимирович',	'2016-02-02 10:52:38',	'х783мн77',	3,	0,	'',	'8 916 412 53 34',	10,	'',	'2016-01-01',	0,	'',	0,	0),
(6,	'Федорова Татьяна викторовна',	'2016-02-02 10:52:38',	'н390тм37',	1,	0,	'',	'8 916 988 31 76',	10,	'',	'2016-01-01',	0,	'',	0,	0),
(7,	'Стрельченкова Мария Владимировна',	'2016-02-02 10:52:38',	'к819тс77',	2,	0,	'',	'8 925 345 78 09',	10,	'mavka@mail.ru',	'2016-01-01',	1,	'',	0,	0),
(8,	'Дудкина Елена Викторович ',	'2016-02-02 10:52:38',	'р156мт55',	3,	0,	'',	'8 925 367 02 30',	20,	'',	'2016-01-01',	1,	'',	0,	0),
(9,	'Лим Анна Александровна ',	'2016-02-02 10:52:38',	'х950нн',	3,	0,	'',	'8 965 229 09 33',	10,	'',	'2016-01-01',	0,	'',	0,	0),
(10,'Новиков Евгений Витальевич',	'2016-02-02 10:52:38',	'н233на197',	2,	0,	'',	'8 926 383 92 05',	10,	'nevsky79@mail.ru',	'2016-01-01',	0,	'',	0,	0),
(11,'Пофлин Дмитрий Евгеньевич',	'2016-02-02 10:52:38',	'х556ер',	1,	0,	'',	'8 926 996 39 30',	15,	'dima@mail.ru',	'2016-01-01',	0,	'',	0,	0),
(12,'шитуева Ирина Владимировна',	'2016-02-02 10:52:38',	'с034ст77',	2,	0,	'',	'8 903 961 0400',	10,	'coleno-ira@ya.ru',	'2016-01-01',	0,	'',	0,	0),
(13,'Благодатских Максим Сергеевич',	'2016-02-02 10:52:38',	'т541мн777',	1,	0,	'',	'8 916 291 40 42',	10,	'maxblago@mail.ru',	'2016-01-01',	0,	'',	0,	0),
(14,'Сазонов Владимир',	'2016-02-02 10:52:38',	'к684вр',	4,	0,	'',	'',	35,	'',	'2016-01-01',	0,	'',	0,	0),
(15,'Плеско Игорь Михайлович',	'2016-02-02 10:52:38',	'н969ем197',	2,	0,	'',	'8 916 724 99 60',	25,	'ya88@mail.ru',	'2016-01-01',	0,	'',	0,	0),
(16,'Соболев Владимир Николаевич',	'2016-02-02 10:52:38',	'е354тс',	3,	0,	'',	'8 925 518 12 43',	10,	'',	'2016-01-01',	0,	'',	0,	0),
(17,'Бабигев Михаил Евгеньевич',	'2016-02-02 10:52:38',	'т472мн197',	1,	0,	'',	'8 903 787 79 97',	10,	'',	'2016-01-01',	0,	'',	0,	0),
(18,'',	'2016-02-02 10:52:38',	'с988мс197',	1,	0,	'',	'',	50,	'',	'2016-01-01',	0,	'',	1,	0),
(19,'Литвинов антон Михайлович',	'2016-02-02 10:52:38',	'с902ха197',	2,	0,	'',	'8 985 419 85 14',	10,	'moskov-fs@yandex.ru',	'2016-01-01',	0,	'',	0,	0),
(20,'Богатырев Андрей Александрович ',	'2016-02-02 10:52:38',	'в209ах777',	2,	0,	'',	'8 926 530 11 27',	10,	'9794763@inbox.ru',	'2016-01-01',	0,	'',	0,	0),
(21,'Василенко Марина Олеговна',	'2016-02-02 10:52:38',	'е379ха197',	4,	0,	'',	'8 903 285 99 40',	30,	'vasilenko.marina@mail.ru',	'2016-01-01',	0,	'',	0,	0),
(22,'Даурбеков Мамсу Харукович',	'2016-02-02 10:52:38',	'а159мо99',	4,	0,	'',	'8 903 960 55 50',	10,	'daurbekov@list.ru',	'2016-01-01',	0,	'',	0,	0),
(23,'Трофимова Татьяна ',	'2016-02-02 10:52:38',	'т998ук199',	2,	0,	'',	'8 903 772 29 82',	10,	'ttatta@mail.ru',	'2016-01-01',	0,	'',	0,	0),
(24,'Борозина Анна Сергеевна',	'2016-02-02 10:52:38',	'р233ку197',	3,	0,	'',	'8 925 060 70 02',	20,	'ataille@lisi.ru',	'2016-01-01',	1,	'',	0,	0),
(25,'Силюков Игорь Александрович',	'2016-02-02 10:52:38',	'о797рв199',	3,	0,	'',	'8 985 765 23 83',	15,	'',	'2016-01-01',	0,	'',	0,	0);






DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_price` decimal(10,0) NOT NULL DEFAULT '0',
  `category_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  INDEX `category_id` (`category_id`),
  INDEX `base_price` (`base_price`),
  FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
)  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `price` (`id`, `name`, `description`, `base_price`,  
`category_id`) VALUES
(11,	'Химчистка салона 20%',	NULL,	5000, 4),
(12,	'Мойка радиатора',	NULL, 2500, 2),
(13,	'Нано обработка кожаных сидений Koch Chemie',	NULL, 3500, 2),
(14,	'Обработка кузова Ceramic PRO',	NULL, 12000, 5),
(15,	'Очистка кузова полировочной глиной',	NULL, 1500, 5),
(16,	'Абразивная полировка фар (за 1шт)',	NULL, 2000, 5),
(17,	'Абразивная полировка за 1 деталь',	NULL,	1000, 5),
(18,	'Химчистка ворсяных ковриков (4шт)',	NULL, 800, 4),
(19,	'Удаление шерсти животных',	NULL, 500, 2),
(20,	'Удаление смолы деревьев (за дет)',	NULL, 400, 2),
(21,	'Комплекс SUPER Plus',	NULL,	1200, 2),
(22,	'Комплекс SUPER',	NULL,	1000, 2),
(23,	'Удаление насекомых (за дет)',	NULL,	200, 2),
(24,	'Ручная мойка (ККП)',	NULL,	650, 2),
(25,	'Ручная мойка (кузов+пороги)',	NULL,	450, 2),
(26,	'Покрытие кузова жидким стеклом Wilson',	NULL,	1100, 2),
(27,	'Хичистка колесных арок (1шт)',	NULL,	500, 1),
(28,	'Подкачка шин',	NULL,	50,	1),
(29,	'Установка жгута',	NULL,	150, 1),
(30,	'Уплотнение борта',	NULL,	100, 1),
(31,	'Вентиль с установкой',	NULL,	50,	1),
(32,	'Балансировка 1кол джипы R20-22',	NULL,	500, 1),
(33,	'Балансировка 1кол джипы R19',	NULL,	440, 1),
(34,	'Балансировка 1кол джипы R18',	NULL,	360, 1),
(35,	'Балансировка 1кол джипы R17',	NULL,	300, 1),
(36,	'Балансировка 1кол джипы R16',	NULL,	240, 1),
(37,	'Балансировка 1кол джипы R15',	NULL,	200, 1),
(38,	'Балансировка 1кол легк R20-21',	NULL,	450, 1),
(50,	'Диагностика компьютерная',	NULL,	2500, 9),
(51,	'Замена ремня ГРМ',	NULL,	3500, 9),
(52,	'Замена шаровой опоры',	NULL,	1500, 9),
(53,	'Замена колодок тормозных',	NULL,	2000, 9),
(54,	'Замена масла моторного в двигателе',	NULL,	1600, 9),
(55,	'Плановое техническое обслуживание (комплект)',	NULL,	20000, 9),
(56,	'Замена технических жидкостей',	NULL,	4000, 9);



DROP TABLE IF EXISTS `service_session`;
CREATE TABLE `service_session` (
  `service_id` bigint(20) NOT NULL,
  `session_id` bigint(20) NOT NULL,
  `money` decimal(10,0) NOT NULL DEFAULT '0',
  `count` tinyint(4) NOT NULL DEFAULT '1'
) DEFAULT CHARSET=utf8;

INSERT INTO `service_session` (`service_id`, `session_id`, `money`, `count`) VALUES
(2844,	3,	100,	1);


DROP TABLE IF EXISTS `service_auto`;
CREATE TABLE `service_auto` (
  `id` bigint(20) NOT NULL,
  `price_id` bigint(20) NOT NULL,
  `auto_type_id` bigint(20) NOT NULL,
  `base_price` decimal(10,0) NOT NULL DEFAULT '0',
  INDEX `price_id` (`price_id`),
  INDEX `base_price` (`base_price`),
  FOREIGN KEY (`price_id`) REFERENCES `price` (`id`),
  FOREIGN KEY (`base_price`) REFERENCES `price` (`base_price`)
)  DEFAULT CHARSET=utf8;

INSERT INTO `service_auto` (`id`, `price_id`, `auto_type_id`, `base_price`) VALUES
(17,	55,	'1', 20000),
(18,	53,	'4', 2000),
(19,	50,	'3',2500),
(20,	52,	'4', 1500),
(21,	55,	'2', 20000),
(22,	51,	'1', 3500),
(23,	54,	'1', 1600),
(24,	54,	'2', 1600),
(25,	50,	'3',2500),
(26,	51,	'3', 3500),
(27,	53,	'4', 2000),
(28,	53,	'2', 2000),
(36,	52,	'3', 1500);

DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dt_start` timestamp NULL DEFAULT NULL,
  `dt_end` timestamp NULL DEFAULT NULL,
  `gos_nomer` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `auto_type_id` tinyint(4) DEFAULT NULL,
  `money` decimal(10,0) DEFAULT NULL,
  `box_number` int(11) NOT NULL,
  `price_id` bigint(20) NOT NULL,
  `image_status` varchar(255) NOT NULL,
  `discount` tinyint(4) NOT NULL,
  `print_check` tinyint(4) NOT NULL DEFAULT '0',
  `Client_id` int(10) unsigned NOT NULL,
   `user_id` bigint (20) not NULL,  

  PRIMARY KEY (`id`),
  KEY `money` (`money`), 
  INDEX `price_id` (`price_id`),
  INDEX `gos_nomer` (`gos_nomer`),
  INDEX `Client_id` (`Client_id`),
  INDEX `box_number` (`box_number`),
  INDEX `discount` (`discount`),
  FOREIGN KEY (`price_id`) REFERENCES `price` (`id`),
  FOREIGN KEY (`Client_id`) REFERENCES `Client` (`id`),
  FOREIGN KEY (`box_number`) REFERENCES `box` (`id`),
  FOREIGN KEY (`gos_nomer`) REFERENCES `Client` (`gos_nomer`),
  FOREIGN KEY (`discount`) REFERENCES `Client`  (`discount`),
  FOREIGN KEY (`user_id`) REFERENCES pka1.`user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) DEFAULT CHARSET=utf8;


INSERT INTO `session` (`id`, `dt_start`,`dt_end`, `gos_nomer`, `auto_type_id`, `money`, `box_number`, 
`price_id`, `image_status`,`discount`, `print_check`, `Client_id`,`user_id`) VALUES

(1, '2020-03-22 08:45:22', '2020-03-22 09:40:22', 'с902ха197', 2,	1000, 2, 22, 1,	10,	1,	19,	'6'),
(2,	'2020-03-23 08:00:13',	'2020-03-23 09:00:13',	'н390тм37',	1,	800, 3, 18, 10,	10,1,6,'4'),
(3,	'2020-03-23 09:30:15',	'2020-03-23 10:30:15',	'т541мн777', 1,	450, 4,	25,	1, 10, 1, 13,'4'),
(4,	'2020-03-23 09:30:10',	'2020-03-23 11:30:10',	'к684вр',	4,	1100, 1,  26, 1, 35, 0, 14,'2'),
(5,	'2020-03-23 10:40:00',	'2020-03-23 12:40:00',	'а159мо99',	4,	12000, 6, 14, 1, 10, 0, 22,'1'),
(6,	'2020-03-23 11:30:00',	'2020-03-23 12:40:00',	'а140рр197',1,	4000, 5, 17, 1, 10, 1, 1,'1'),
(7,	'2020-03-23 13:20:00',	'2020-03-23 13:50:00',	'н390тм37',	1,	1500, 1, 15, 1, 10, 1, 6,'4'),
(8,	'2020-03-23 13:50:00',	'2020-03-23 14:50:00',	'х783мн77',	3,	1200, 2, 21, 1, 10, 1, 5,'3'),
(9,	'2020-03-23 14:20:00',	'2020-03-23 14:55:00',	'у744ве77',	4,	650, 4, 24, 1, 10,1, 4,'2'),
(10, '2020-03-23 15:15:00',	'2020-03-23 15:55:00',	'к819тс77',	2,	1000, 3, 22, 1, 10, 1, 7,'1'),
(11, '2020-03-23 16:00:00',	'2020-03-23 16:50:00',	'р156мт55',	3,	450, 6, 25, 1, 20, 1, 8,'2'),
(12, '2020-03-23 16:00:00',	'2020-03-23 17:05:00',	'х950нн',	3,	1500, 5, 15, 0, 10, 1, 9,'3'),
(13, '2020-03-23 17:05:00',	'2020-03-23 17:45:00',	'н233на197', 2,	1000, 1, 23, 0,10, 0, 10,'4'),
(14, '2020-03-23 17:05:00',	'2020-03-23 17:55:00',	'х556ер',	1,	4000, 3, 16, 1,15, 0, 11,'3'),
(15, '2020-03-23 18:15:00',	'2020-03-23 18:45:00',	'а140рр197', 1,	6000, 2, 17, 1,10, 1, 1,'2'),
(16, '2020-03-23 19:45:00',	'2020-03-23 20:45:00',	'т697ум197', 2,	1700, 6, 20, 0, 20, 1, 2,'6'),
(17, '2020-03-23 20:45:00',	'2020-03-23 21:05:00',	'т904ам50',	4,	5000, 4, 11, 0, 10, 1, 3,'7'),
(18, '2020-03-23 21:15:00',	'2020-03-23 21:55:00',	'е354тс',	3,	2500, 5, 12, 1, 10, 1, 16,'5'),
(19, '2020-03-23 22:00:00',	'2020-03-23 23:05:00',	'р233ку197', 3,	650, 1, 24, 1, 20, 1,  24,'1'),
(20, '2020-03-23 23:05:00',	'2020-03-23 23:40:00',	'о797рв199', 3,	1200, 2, 21, 0, 15, 1, 25,'7'),
(21, '2020-03-25 08:45:22', '2020-03-25 09:40:22', 'с902ха197', 2,	1000, 2, 22, 1,	10,	1,	19,	'6'),
(22,'2020-03-25 08:00:13',	'2020-03-25 09:00:13',	'н390тм37',	1,	800, 3, 18, 10,	10,1,6,'4'),
(23,'2020-03-25 09:30:15',	'2020-03-25 10:30:15',	'т541мн777', 1,	450, 4,	25,	1, 10, 1, 13,'4'),
(24,'2020-03-25 09:30:10',	'2020-03-25 11:30:10',	'к684вр',	4,	1100, 1,  26, 1, 35, 0, 14,'2'),
(25,'2020-03-25 10:40:00',	'2020-03-25 12:40:00',	'а159мо99',	4,	12000, 6, 14, 1, 10, 0, 22,'1'),
(26,'2020-03-26 11:30:00',	'2020-03-26 12:40:00',	'а140рр197',1,	4000, 5, 17, 1, 10, 1, 1,'1'),
(27,'2020-03-26 13:20:00',	'2020-03-26 13:50:00',	'н390тм37',	1,	1500, 1, 15, 1, 10, 1, 6,'4'),
(28,'2020-03-26 13:50:00',	'2020-03-26 14:50:00',	'х783мн77',	3,	1200, 2, 21, 1, 10, 1, 5,'3'),
(29,'2020-03-26 14:20:00',	'2020-03-26 14:55:00',	'у744ве77',	4,	650, 4, 24, 1, 10,1, 4,'2'),
(30, '2020-03-27 15:15:00',	'2020-03-27 15:55:00',	'к819тс77',	2,	1000, 3, 22, 1, 10, 1, 7,'1'),
(31, '2020-03-27 16:00:00',	'2020-03-27 16:50:00',	'р156мт55',	3,	450, 6, 25, 1, 20, 1, 8,'2'),
(32, '2020-03-27 16:00:00',	'2020-03-27 17:05:00',	'х950нн',	3,	1500, 5, 15, 0, 10, 1, 9,'3'),
(33, '2020-03-27 17:05:00',	'2020-03-27 17:45:00',	'н233на197', 2,	1000, 1, 23, 0,10, 0, 10,'4'),
(34, '2020-03-27 17:05:00',	'2020-03-27 17:55:00',	'х556ер',	1,	4000, 3, 16, 1,15, 0, 11,'3'),
(35, '2020-03-27 18:15:00',	'2020-03-27 18:45:00',	'а140рр197', 1,	6000, 2, 17, 1,10, 1, 1,'2'),
(36, '2020-03-27 19:45:00',	'2020-03-27 20:45:00',	'т697ум197', 2,	1700, 6, 20, 0, 20, 1, 2,'6'),
(37, '2020-03-27 20:45:00',	'2020-03-27 21:05:00',	'т904ам50',	4,	5000, 4, 11, 0, 10, 1, 3,'7'),
(38, '2020-03-27 21:15:00',	'2020-03-27 21:55:00',	'е354тс',	3,	2500, 5, 12, 1, 10, 1, 16,'5'),
(39, '2020-03-27 22:00:00',	'2020-03-27 23:05:00',	'р233ку197', 3,	650, 1, 24, 1, 20, 1,  24,'1'),
(40, '2020-03-27 23:05:00',	'2020-03-27 23:40:00',	'о797рв199', 3,	1200, 2, 21, 0, 15, 1, 25,'7'),
(41, '2020-03-31 23:05:00',	'2020-03-31 23:40:00',	'о797рв199', 3,	5200, 2, 21, 0, 15, 1, 25,'7');

INSERT INTO `session` (`id`, `dt_start`,`dt_end`, `gos_nomer`, `auto_type_id`, `money`, `box_number`, 
`price_id`, `image_status`,`discount`, `print_check`, `Client_id`,`user_id`) VALUES
(42, '2020-04-02 18:20:00',	'2020-04-02 18:48:00',	'о797рв199', 3,	5200, 2, 21, 0, 15, 1, 25,'7');




DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` bigint(20) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `session_id` (`session_id`),
  FOREIGN KEY (`session_id`) REFERENCES `session`(`id`),
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT into `orders` (`session_id`) Values
(1), (2), (19), (34), (38);



DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `login` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` tinyint(4) DEFAULT '0',
  `HASH` int(11) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;
INSERT INTO `user` (`id`, `login`, `password`, `first_name`, `last_name`, `role`, `HASH`, `deleted`) VALUES
(1,	'user',	'202cb962ac59075b964b07152d234b70',	'',	'admin',	1,	27490,	0),
(2,	'avto',	'd41d8cd98f00b204e9800998ecf8427e',	'Сергей',	'Стафф',	0,	NULL,	0),
(3,	'Иван',	'd41d8cd98f00b204e9800998ecf8427e',	'Иван',	'Иванов',	0,	NULL,	0),
(4,	'Петр',	'ff1c427243afb15d5e460b63d7d1ead0',	'Петр',	'Петров',	0,	NULL,	0),
(5,	'admin', '21232f297a57a5a743894a0e4a801fc3',	'',	'',	1,	NULL,	0),
(6,	'mc',	'b59c67bf196a4758191e42f76670ceba',	'alex',	'',	0,	NULL,	0),
(7,	'123',	'202cb962ac59075b964b07152d234b70',	'Алина', 'Стриптиз',	0,	NULL,	0);




DROP TABLE IF EXISTS `Statistic`; 
CREATE TABLE `Statistic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `sum_money_cash` decimal(10,0) DEFAULT '0',
  `sum_money_eq` decimal(10,0) DEFAULT '0',
  `auto_total` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  INDEX  `date` (`date`)
) DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `important_Client`; 
CREATE TABLE `important_Client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gos_nomer` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `max_money` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`),
  INDEX  `name` (`name`),
  INDEX `gos_nomer` (`gos_nomer`),
  INDEX `max_money` (`max_money`)
) DEFAULT CHARSET=utf8;


/* Выполнение домашнего задания: 
 * 1 скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы);
 */
-- № 1 - запрос отражает информацию о количестве сессий, денег по числам.
SELECT SUM(money) as summ_total, count(id) as sesion_count, DATE_FORMAT(dt_end,'%d.%m.%y') `date_order` 
 FROM `session` GROUP BY date_order ;

/* № 2 Скрипт выборки = берем данные из таблицы сесссии группируем их по клиетскому ид, где мы видим сколько раз всего 
 * клиент приезжал. далее, берем и присоединяем данные из другой таблицы..по клиентскому ид (там где =)
 * как результат получаем сколько раз какой клиент был */
SELECT count(t1.id) as `session_count`, t2.id, t2.name, t2.gos_nomer
FROM `session` as t1
JOIN Client as t2 ON (t1.Client_id  = t2.id)
GROUP BY Client_id;

-- № 3 Скрипт выборки которая выдает общую сумму денег заработанных за прошедший (сегодняшний) день. На момент запроса
SELECT sum(money) FROM `session` WHERE  DATE_FORMAT(dt_end,'%d.%m.%y') =  DATE_FORMAT(NOW(),'%d.%m.%y');

-- № 4 Скрипт сложного запроса который отображает клиента который потратил самую большую сумму, номер его машины + его клиентский id
SELECT DISTINCT gos_nomer, Client_id, money 
FROM   `session` as  `importatn_Client` 
WHERE  money =(SELECT MAX(money ) FROM `session` s2 );

--  в продолжение скрипта 4 = выборка клиента который потратил бОльшую сумму - имя и id
SELECT name, id FROM Client WHERE id = (SELECT DISTINCT Client_id
FROM   `session`
WHERE  money =(SELECT MAX(money ) FROM `session` s2 ) );
 
-- в завершение скрипта № 4 -= объединенный запрос на клиента с самой большой суммой на момент запроса
-- запрос с объедиением
SELECT DISTINCT AAA.gos_nomer, AAA.Client_id, AAA.money, Client.name
FROM   `session` as  `AAA` 
JOIN Client ON (AAA.Client_id=Client.id)
WHERE  AAA.money =(SELECT MAX(money ) FROM `session` s2 );


 -- 2 представления (минимум 2); 
 -- Представление которое отображает количество машин побывавших на мойке (по датам) + деньги в кассе на эту дату
 CREATE VIEW pka1.kass_info as (
SELECT SUM(money) as summ_total, count(id) as sesion_count, DATE_FORMAT(dt_end,'%d.%m.%y') `date_order` 
 FROM `session` GROUP BY date_order
);


 
 
 
 -- 3 хранимые процедуры / триггеры;
-- процедура сбора данных (отчет) в таблицу "Статистики" для получения отчета по количеству машин и денег в кассе за сутки
DROP PROCEDURE IF EXISTS `save_statistic`;
delimiter //
CREATE PROCEDURE `save_statistic`()
BEGIN
  DECLARE summ_money decimal(10,0) DEFAULT '0';
  DECLARE auto_total INT DEFAULT '0'; 
 SELECT sum(money) INTO @summ_money FROM `session` WHERE DATE_FORMAT(dt_end,'%d.%m.%y') =  DATE_FORMAT(NOW(),'%d.%m.%y');
 SELECT count(id) INTO @auto_total FROM `session` 
	WHERE DATE_FORMAT(dt_end,'%d.%m.%y') =  DATE_FORMAT(NOW(),'%d.%m.%y');
 INSERT into `Statistic` (`date`, `sum_money_cash`, `auto_total`) values
 (NOW(),@summ_money,@auto_total); 
END //
delimiter ;

CALL save_statistic();

-- Процедура сбора данных за сутки о самом "Важном клиенте" - кто потратил самую большую сумму(чек) на дату запроса
-- нужна для получения информации о клиенте = для предоставления скидки!! 
DROP PROCEDURE IF EXISTS `important_Client`;
delimiter //
CREATE PROCEDURE `important_Client`()
BEGIN
  DECLARE max_money decimal(10,0) DEFAULT '0';
  DECLARE `cl_name` varchar(64) DEFAULT NULL;
  DECLARE `cl_gos_nomer` varchar(20) DEFAULT NULL; 
 SELECT DISTINCT (money) INTO @max_money FROM `session` WHERE  money =(SELECT MAX(money ) FROM `session`);
 SELECT DISTINCT (name) INTO @cl_name FROM `Client` WHERE  `id` =(SELECT Client_id FROM `session` order by `money` desc limit 1);
 SELECT DISTINCT (gos_nomer) INTO @cl_gos_nomer FROM `session` WHERE  money =(SELECT MAX(money ) FROM `session`);
 INSERT into `important_Client` (`max_money`, `name`, `gos_nomer`) values
 (@max_money,@cl_name, @cl_gos_nomer);
END //
delimiter ;

CALL important_Client();


 