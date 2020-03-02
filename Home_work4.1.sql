INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('1', 'Chloe', 'O\'Conner', 'quentin.hermiston@example.net', '367137');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('2', 'Erick', 'Kris', 'xavier.dach@example.net', '795390');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('3', 'Alaina', 'Powlowski', 'jacobi.amos@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('4', 'Aaron', 'Hauck', 'william31@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('5', 'Nettie', 'Bogisich', 'oral.haag@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`)
VALUES ('6', 'Pattie', 'Deckow', 'alyson.jast@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('7', 'Tyra', 'Orn', 'davon.satterfield@example.org', '69');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('8', 'Bart', 'Wunsch', 'jacky.schultz@example.net', '933');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('9', 'Kyra', 'Schamberger', 'elyssa39@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('10', 'Alison', 'Fritsch', 'cecelia.barrows@example.net', '451');

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', '6', '1987-12-24', '1', '2020-02-20 10:00:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', '2', '2008-07-03', '2', '2020-02-20 10:00:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', '6', '1987-05-12', '3', '2020-02-20 10:00:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', '3', '1997-04-13', '4', '2020-02-20 10:00:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', '9', '1978-03-05', '5', '2020-02-20 10:00:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', '8', '1974-11-06', '6', '2020-02-20 10:00:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', '9', '1977-01-17', '7', '2020-02-20 10:00:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', '3', '1988-07-18', '8', '2020-02-20 10:00:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', '3', '2019-05-09', '9', '2020-02-20 10:00:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', '8', '2008-09-01', '10', '2020-02-20 10:00:09', NULL);




INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('3', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('4', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('5', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('8', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('9', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '10');

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '1', '1', '2008-06-01 03:35:44', '1992-03-13 06:30:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('2', '2', '2', '2011-05-01 18:42:21', '2006-08-29 16:27:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '3', '3', '1982-08-04 22:24:23', '1977-05-05 10:59:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '4', '4', '1979-06-07 18:44:07', '1997-04-12 20:54:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '5', '3', '1998-05-02 14:51:25', '1972-05-31 22:03:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('6', '6', '2', '1976-10-29 03:48:08', '1972-09-15 06:57:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '7', '4', '1981-12-27 12:45:17', '1997-08-04 05:20:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('8', '8', '2', '2019-04-14 19:22:17', '1988-06-12 13:31:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '9', '1', '1999-01-05 04:14:24', '1975-03-10 15:21:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('10', '10', '1', '1978-02-03 02:50:44', '1994-01-29 06:16:12');

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Et et ex ab atque ut. Nostrum doloribus ut rerum quia laudantium earum reiciendis qui. Atque voluptatem sed dolorem id maxime laboriosam quis quis. Est itaque iusto non consequuntur.', 'harum', 4735313, NULL, '1974-02-27 20:45:03', '1988-03-16 19:52:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Id ex culpa voluptatem molestiae rem tempore aspernatur. Voluptatem voluptate officiis explicabo officiis deserunt culpa molestiae. Esse veritatis voluptate commodi veniam non. Expedita dolorem dolorum accusantium aut.', 'a', 1, NULL, '1978-05-22 12:02:43', '2012-08-23 08:26:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Sunt atque similique hic adipisci fugit. Impedit non similique vel dolore vel. Similique et saepe occaecati reprehenderit ea rem sunt.', 'at', 2625500, NULL, '2005-07-31 11:19:48', '1996-12-07 02:05:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Totam asperiores earum nemo rerum quis. Harum excepturi repellendus velit dolores vel. Hic voluptate non et quos tenetur.', 'fugit', 269583846, NULL, '1993-12-09 02:56:27', '1989-02-12 16:17:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Mollitia quidem omnis laboriosam eum. Voluptatem qui ab iusto vel rerum dolor non. Maiores velit officia earum odit.', 'magni', 8, NULL, '2010-07-22 02:42:07', '1976-10-30 14:05:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'Doloribus tenetur similique odio praesentium consequuntur eveniet. Quia est est sint consectetur. Nisi laboriosam ut qui doloribus. Possimus debitis voluptatem quibusdam quia dolorem ex accusamus.', 'ducimus', 4, NULL, '1995-10-06 06:56:36', '1970-12-24 08:59:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', '7', 'Quis amet impedit consequatur aliquid amet doloribus. Molestias magnam nesciunt porro quam eligendi. Ipsam qui in aut.', 'placeat', 304952073, NULL, '1990-01-13 20:31:17', '1983-08-23 22:55:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '8', 'Dolores sed illum possimus quia. Mollitia praesentium facilis et possimus et blanditiis. Quaerat et autem ut tempore voluptas. Beatae repellat excepturi quam doloremque nulla repudiandae ut. Quam blanditiis aperiam quia iste ea deleniti nam itaque.', 'sint', 733344024, NULL, '1976-08-09 00:50:56', '2015-02-22 21:01:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', '9', 'Cumque aliquam non molestiae numquam voluptatum. Atque libero ut quod fugit doloremque atque quia officia. Et harum dolor odio voluptas dolor dolorem magni. Excepturi quis eos consequatur numquam.', 'aut', 531, NULL, '1982-01-06 05:56:13', '2015-07-29 22:07:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '10', 'Et minima maxime fugiat quia incidunt quibusdam. Quae quo sint voluptas ut. Quaerat iure corrupti non ut. Sint quo deserunt voluptas quis quas. Quibusdam aut minus aspernatur aut dicta.', 'modi', 5, NULL, '1974-04-01 21:51:52', '1974-04-21 05:02:23');

INSERT INTO `communities` (`id`, `name`) VALUES ('68', 'ab');
INSERT into `communities` (`id`, `name`) VALUES ('2', 'accusantium');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'adipisci');
INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'aliquid');
INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'aliquid');
INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'blanditiis');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'culpa');

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'omnis', '1973-12-05 13:21:59', '1981-04-18 22:30:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'atque', '2018-10-27 18:01:18', '2009-06-05 12:14:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'id', '1974-04-06 15:32:39', '1993-01-08 16:57:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'non', '1991-12-25 21:46:27', '2010-02-18 10:41:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'rerum', '1973-08-18 01:15:14', '1975-10-13 08:20:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'tempore', '2019-12-17 07:33:52', '2018-11-19 22:25:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'itaque', '1993-06-13 07:57:12', '1972-11-10 10:59:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'ducimus', '1995-04-13 22:59:18', '1992-08-25 07:17:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'ut', '1979-03-15 02:56:24', '2018-09-04 15:30:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'at', '2016-02-16 01:12:49', '1991-01-09 15:24:57');

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '1', '1', 'Repudiandae quo distinctio aliquam rem ut ipsa. Et aut cumque sint perferendis quo. Cum sint aliquam iste debitis vitae. Sed consequuntur est voluptate veniam. Harum non praesentium distinctio est facere.', '2004-05-24 06:23:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '2', '2', 'Et expedita quia dolor aut veritatis. Omnis atque eaque voluptates eligendi. Sint accusamus sunt maxime maxime nihil in quae. Dolores dolores velit earum officia dolorem ut adipisci.', '2003-08-08 19:34:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '3', '3', 'Qui minus rerum dignissimos modi ad libero temporibus. Et maxime eius est cumque. Aliquam voluptas et distinctio dolores. Et optio deserunt quae ipsam consequuntur commodi qui.', '2016-01-01 05:58:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '4', '4', 'Consequatur corporis hic nihil nostrum. Adipisci sed sunt reiciendis modi eveniet sit distinctio. Necessitatibus omnis et soluta dolorem sint sed laborum.', '1977-01-09 13:46:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '5', '5', 'Nulla suscipit libero rerum quia reprehenderit. Ullam architecto odio corporis officiis adipisci. Nihil expedita suscipit voluptates. Cum eos quia dolorum nam.', '1971-04-25 14:45:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '6', '6', 'Est sunt ullam ducimus nulla. Fugiat et expedita recusandae dolore minus est.', '2003-09-04 09:46:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '7', '7', 'Quis illum ipsum suscipit similique dolore. Quia quibusdam ex in.', '1998-06-23 14:33:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '8', '8', 'Esse sunt numquam iusto totam reiciendis. Consequatur ut libero iste. Quasi quibusdam distinctio porro atque omnis velit velit.', '1977-04-16 13:10:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '9', '9', 'Quo expedita ab nihil laborum repellendus quisquam sapiente vel. Vel necessitatibus eaque consequuntur qui quae omnis. Id explicabo aspernatur sit expedita aliquam.', '2004-09-29 18:30:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '10', '10', 'Occaecati quis quas voluptas laboriosam amet facere. Eum ducimus sed consequuntur. Aut perferendis autem eaque amet et aut occaecati. Dignissimos consequatur atque ut fugit dolores quis amet.', '1993-05-03 02:03:54');

INSERT INTO `user_personal_diary` (`id`, `user_personal_diary_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Fugiat consequatur excepturi iure veritatis eaque. Sit ex alias perspiciatis rerum voluptatem. Voluptates qui suscipit qui incidunt animi sint non.', 'amet', 47, NULL, '1974-12-29 06:35:53', '2000-02-13 23:52:56');
INSERT INTO `user_personal_diary` (`id`, `user_personal_diary_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Fugit iure sunt ut non repellat. Omnis totam ipsam necessitatibus earum. Tempora est aspernatur quaerat doloribus voluptas ea. Atque tempora ut laudantium enim quia delectus.', 'rem', 252220, NULL, '1998-11-21 15:06:40', '2019-06-18 07:11:06');
INSERT INTO `user_personal_diary` (`id`, `user_personal_diary_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Molestias quia alias consequatur consequatur. Sed deserunt ducimus et qui et. Est totam quae consectetur voluptatem.', 'error', 93097996, NULL, '1970-10-28 07:01:25', '2012-04-17 14:33:59');
INSERT INTO `user_personal_diary` (`id`, `user_personal_diary_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Dolorem quia nemo blanditiis. Accusamus repellat aut culpa sunt a fugit consequatur. Aut similique dolores voluptas dolores eos sit. Consequatur quo sed ipsa quisquam possimus ut molestiae. Dolor explicabo molestias consectetur voluptas quod molestiae id.', 'ea', 96715, NULL, '2008-08-24 08:31:57', '2005-06-18 20:25:01');
INSERT INTO `user_personal_diary` (`id`, `user_personal_diary_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Quae asperiores reiciendis temporibus nihil vero. Et nihil sed sit alias. Ipsa iste et aut voluptas sed eveniet deserunt. Et consequuntur omnis porro eius.', 'aut', 93, NULL, '2011-04-01 11:52:38', '2002-11-23 10:14:54');
INSERT INTO `user_personal_diary` (`id`, `user_personal_diary_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'Et consequuntur dolorem dolores veritatis voluptatibus inventore. Vero explicabo maiores aut iusto illum. Eius perferendis placeat placeat dolor sapiente ipsam. Aut consequatur possimus quod veniam dolor deleniti id aut.', 'eum', 49485, NULL, '1991-11-03 04:03:40', '2011-01-29 07:33:41');
INSERT INTO `user_personal_diary` (`id`, `user_personal_diary_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', '7', 'Omnis in ullam quasi dolor repellat est qui. Quos autem necessitatibus enim corrupti corrupti consequatur sint ab. Sit ut ut odio eius dolor voluptas et iusto. Et aut aut earum facere architecto odio.', 'officiis', 95, NULL, '2016-05-16 09:10:15', '1995-01-08 21:00:30');
INSERT INTO `user_personal_diary` (`id`, `user_personal_diary_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '8', 'Impedit veritatis magnam perspiciatis nihil. Incidunt corrupti numquam temporibus iure blanditiis repellendus. Dignissimos numquam enim veniam excepturi ullam in ducimus ullam. Ipsam neque hic sit voluptatum nulla aliquid laboriosam.', 'velit', 65, NULL, '2000-04-14 12:42:14', '2005-11-25 11:04:46');
INSERT INTO `user_personal_diary` (`id`, `user_personal_diary_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', '9', 'Explicabo cum qui autem blanditiis quia dolorem soluta. Dolorem sed mollitia ut voluptatibus error. Cumque ea dignissimos maxime. Quaerat sit tenetur quis error et rem ut.', 'unde', 315721, NULL, '1978-04-02 02:27:07', '1997-06-21 01:27:25');
INSERT INTO `user_personal_diary` (`id`, `user_personal_diary_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '10', 'Aliquam est ea atque nesciunt pariatur. Modi maxime corrupti ratione qui. Et natus culpa vel. Ipsam nisi in aut sed.', 'vitae', 16, NULL, '1993-03-09 05:28:33', '2009-12-01 09:01:26');

INSERT INTO `hobby_user` (`id`, `user_id`, `hobby_user_id`, `name`, `body`, `filename`) VALUES ('1', '1', '1', 'maxime', 'Odio asperiores et vero impedit ducimus optio dolorem. Est cumque sed quam et. Quis non earum dolor optio.', 'totam');
INSERT INTO `hobby_user` (`id`, `user_id`, `hobby_user_id`, `name`, `body`, `filename`) VALUES ('2', '2', '2', 'ea', 'Eaque corporis velit eum nulla. Culpa aliquam ut voluptas ut possimus. Laudantium quam repudiandae necessitatibus voluptates molestias. Nisi et accusantium neque iste id consequatur.', 'quibusdam');
INSERT INTO `hobby_user` (`id`, `user_id`, `hobby_user_id`, `name`, `body`, `filename`) VALUES ('3', '3', '3', 'illum', 'Autem modi ea omnis qui nesciunt. Sunt non optio voluptatem id corrupti. Ea facere necessitatibus doloribus incidunt. In nesciunt aut vel aut aut.', 'possimus');
INSERT INTO `hobby_user` (`id`, `user_id`, `hobby_user_id`, `name`, `body`, `filename`) VALUES ('4', '4', '4', 'officiis', 'Illum nemo commodi odio numquam rerum. Perferendis inventore asperiores dolorem eos reiciendis sed modi dolores. Odio ad ut nemo at distinctio sed natus odit.', 'delectus');
INSERT INTO `hobby_user` (`id`, `user_id`, `hobby_user_id`, `name`, `body`, `filename`) VALUES ('5', '5', '5', 'in', 'Tempora incidunt et et fugit vel vel dolores. Qui tenetur velit aut ut accusantium. Dicta quia fugit dolores voluptas iure repudiandae. Aut ut quia dolores alias recusandae reprehenderit repellat quasi. Et asperiores sit aliquid et soluta.', 'cupiditate');
INSERT INTO `hobby_user` (`id`, `user_id`, `hobby_user_id`, `name`, `body`, `filename`) VALUES ('6', '6', '6', 'consequatur', 'Et libero quidem a incidunt architecto quia. Voluptatem placeat rerum rem adipisci eveniet voluptatibus.', 'cupiditate');
INSERT INTO `hobby_user` (`id`, `user_id`, `hobby_user_id`, `name`, `body`, `filename`) VALUES ('7', '7', '7', 'eveniet', 'Omnis culpa omnis eveniet natus vel et. Est accusantium officia eligendi amet illo ipsum facilis quis. Magni aut numquam quis libero nemo. Et consequatur et qui quam.', 'eos');
INSERT INTO `hobby_user` (`id`, `user_id`, `hobby_user_id`, `name`, `body`, `filename`) VALUES ('8', '8', '8', 'ut', 'Facere id veritatis est ab et eius deserunt. Mollitia cum aut corrupti tempora architecto est. Enim molestias aut atque est voluptate. Earum quo nihil autem et.', 'corporis');
INSERT INTO `hobby_user` (`id`, `user_id`, `hobby_user_id`, `name`, `body`, `filename`) VALUES ('9', '9', '9', 'ullam', 'Vitae commodi expedita dolores velit. Explicabo iusto dolores et facilis voluptatem culpa ut. Corporis illum similique consequatur perspiciatis mollitia quo.', 'vel');
INSERT INTO `hobby_user` (`id`, `user_id`, `hobby_user_id`, `name`, `body`, `filename`) VALUES ('10', '10', '10', 'assumenda', 'Doloribus excepturi officia autem alias dolor mollitia et. Nostrum autem cumque ipsum aliquam dolorem qui delectus quos.', 'commodi');

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'et', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'veniam', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'cumque', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'commodi', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'pariatur', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'tenetur', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'delectus', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'explicabo', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'et', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'iusto', '10');

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '1', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '2', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '3', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '4', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '5', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '6', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '7', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '8', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '9', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '10', '10');

INSERT INTO `fitnes_profiles` (`user_id`, `fitnes_profiles_id`, `gender`, `birthday`, `photo_id`, `height`, `weight`, `created_at`, `gym`, `body`) VALUES ('1', '1', NULL, '1980-04-13', '1', NULL, NULL, '1986-07-03 14:16:17', NULL, 'Quidem omnis laborum eveniet maxime. Laborum est ut nulla illo. Et earum cupiditate excepturi consequatur. Vero ex enim sint est nihil dolore.');
INSERT INTO `fitnes_profiles` (`user_id`, `fitnes_profiles_id`, `gender`, `birthday`, `photo_id`, `height`, `weight`, `created_at`, `gym`, `body`) VALUES ('2', '2', NULL, '1999-09-21', '2', NULL, NULL, '2011-05-28 19:56:11', NULL, 'Fuga laboriosam repudiandae mollitia rem est. Aut doloremque iure fuga vero excepturi vitae. Et natus tenetur rerum doloremque dolores fugiat consequatur.');
INSERT INTO `fitnes_profiles` (`user_id`, `fitnes_profiles_id`, `gender`, `birthday`, `photo_id`, `height`, `weight`, `created_at`, `gym`, `body`) VALUES ('3', '3', NULL, '2001-04-01', '3', NULL, NULL, '2001-06-06 05:08:10', NULL, 'Quae quia cumque vel magni sunt quas libero. Laboriosam magnam velit eaque architecto qui. Laudantium voluptas praesentium ut dolore corrupti rerum dolores.');
INSERT INTO `fitnes_profiles` (`user_id`, `fitnes_profiles_id`, `gender`, `birthday`, `photo_id`, `height`, `weight`, `created_at`, `gym`, `body`) VALUES ('4', '4', NULL, '1978-09-26', '4', NULL, NULL, '1975-08-06 21:14:16', NULL, 'Consequuntur doloremque debitis facere incidunt et. Vel quo veritatis laudantium nam sit consequatur eius molestiae. Nesciunt quia harum perferendis eius tempore. Distinctio distinctio reprehenderit nemo rerum velit nihil excepturi tenetur.');
INSERT INTO `fitnes_profiles` (`user_id`, `fitnes_profiles_id`, `gender`, `birthday`, `photo_id`, `height`, `weight`, `created_at`, `gym`, `body`) VALUES ('5', '5', NULL, '1993-05-18', '5', NULL, NULL, '1994-08-06 08:46:12', NULL, 'Nisi nisi iusto rem quia. Enim eos quo hic dolores aspernatur ut. Est eos ratione ea eius. Voluptatibus non impedit libero est minus voluptates.');
INSERT INTO `fitnes_profiles` (`user_id`, `fitnes_profiles_id`, `gender`, `birthday`, `photo_id`, `height`, `weight`, `created_at`, `gym`, `body`) VALUES ('6', '6', NULL, '1999-07-17', '6', NULL, NULL, '2009-05-18 15:06:23', NULL, 'Deserunt accusantium nesciunt aperiam odio eum placeat aut. Explicabo iusto similique quia quae. Repudiandae magni earum dicta et omnis voluptas labore. Nihil iste non eveniet ipsam et quo aut.');
INSERT INTO `fitnes_profiles` (`user_id`, `fitnes_profiles_id`, `gender`, `birthday`, `photo_id`, `height`, `weight`, `created_at`, `gym`, `body`) VALUES ('7', '7', NULL, '1989-07-21', '7', NULL, NULL, '1991-04-01 23:29:59', NULL, 'Ratione id maiores dolore dolores quo. Vel iste earum molestiae aut voluptas ex. Ad quibusdam odio et quo rerum. Sed qui quam nobis illum.');
INSERT INTO `fitnes_profiles` (`user_id`, `fitnes_profiles_id`, `gender`, `birthday`, `photo_id`, `height`, `weight`, `created_at`, `gym`, `body`) VALUES ('8', '8', NULL, '2003-06-10', '8', NULL, NULL, '2009-07-04 15:23:57', NULL, 'Consequatur praesentium et ea dolor. Placeat dolores occaecati tempora qui iste quia. Aspernatur explicabo est at enim ad.');
INSERT INTO `fitnes_profiles` (`user_id`, `fitnes_profiles_id`, `gender`, `birthday`, `photo_id`, `height`, `weight`, `created_at`, `gym`, `body`) VALUES ('9', '9', NULL, '1979-10-11', '9', NULL, NULL, '2009-07-27 15:51:26', NULL, 'Quia est eum ratione magnam et facere dolorem. Accusamus possimus est animi suscipit non. Dolorum nostrum pariatur aperiam eligendi dignissimos. Voluptatum aut aut ex qui voluptas magnam aut. Laborum facere officia ea rerum maxime libero ut.');
INSERT INTO `fitnes_profiles` (`user_id`, `fitnes_profiles_id`, `gender`, `birthday`, `photo_id`, `height`, `weight`, `created_at`, `gym`, `body`) VALUES ('10', '10', NULL, '2019-10-10', '10', NULL, NULL, '1999-10-19 03:20:57', NULL, 'Natus recusandae accusantium rerum quia ad vitae aut. Et amet itaque iure velit et eligendi aspernatur voluptate. Laboriosam dolorum animi ipsa impedit qui qui.');

INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('1', '1', '1', '1974-09-10 10:10:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('2', '2', '2', '1999-03-30 17:57:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('3', '3', '3', '1973-01-23 12:25:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('4', '4', '4', '1976-01-11 07:08:31');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('5', '5', '5', '1991-01-06 07:36:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('6', '6', '6', '1972-03-27 15:48:53');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('7', '7', '7', '2007-11-08 04:03:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('8', '8', '8', '1975-12-22 16:08:00');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('9', '9', '9', '2005-06-27 22:24:35');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('10', '10', '10', '2000-03-12 06:00:34');


















