-- -----------------------------------------------------
-- Data for table `mydb`.`Role`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Role` (`id`, `name`, `description`) VALUES (DEFAULT, 'admin', 'Can create, modify, delete queries. Can block, unblock users.');
INSERT INTO `mydb`.`Role` (`id`, `name`, `description`) VALUES (DEFAULT, 'user', 'Can create, modify, delete queries.');
INSERT INTO `mydb`.`Role` (`id`, `name`, `description`) VALUES (DEFAULT, 'developer', 'Can make all changes.');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Access`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Access` (`id`, `Role_id`) VALUES (DEFAULT, 8);
INSERT INTO `mydb`.`Access` (`id`, `Role_id`) VALUES (DEFAULT, 8);
INSERT INTO `mydb`.`Access` (`id`, `Role_id`) VALUES (DEFAULT, 8);
INSERT INTO `mydb`.`Access` (`id`, `Role_id`) VALUES (DEFAULT, 8);
INSERT INTO `mydb`.`Access` (`id`, `Role_id`) VALUES (DEFAULT, 8);
INSERT INTO `mydb`.`Access` (`id`, `Role_id`) VALUES (DEFAULT, 8);
INSERT INTO `mydb`.`Access` (`id`, `Role_id`) VALUES (DEFAULT, 8);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Query`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Query` (`id`, `title`, `description`, `created`, `modified`, `Source_id`, `Access_id`) VALUES (DEFAULT, 'Consumers\' Opinion on New Danon Yoghurts', 'Analyze posts and comments regarding new yoghurt line and create a generalized average consumer\'s opinion', '2020-10-21', '2021-01-30', 2, 1);
INSERT INTO `mydb`.`Query` (`id`, `title`, `description`, `created`, `modified`, `Source_id`, `Access_id`) VALUES (DEFAULT, 'Social Image of a Youtuber Slidan', 'Create a detailed analysis of subscribers of a youtuber Slidan: average age, country prevalency, average hrs spent watching, gender', '2020-07-01', '2021-11-15', 1, 7);
INSERT INTO `mydb`.`Query` (`id`, `title`, `description`, `created`, `modified`, `Source_id`, `Access_id`) VALUES (DEFAULT, 'Most Mentioned Cola Brand', 'Analyze all social media sources in order to find the most talked about cola brand in Ukraine', '2021-04-24', '2021-07-25', 1, 6);
INSERT INTO `mydb`.`Query` (`id`, `title`, `description`, `created`, `modified`, `Source_id`, `Access_id`) VALUES (DEFAULT, 'Favourite Contestant', 'Collect data from all social media\'s comments under posts and videos regarding TV show \'Ukraine\'s Next Top Model\' to find most favoured contestant', '2018-10-12', '2019-01-23', 1, 2);
INSERT INTO `mydb`.`Query` (`id`, `title`, `description`, `created`, `modified`, `Source_id`, `Access_id`) VALUES (DEFAULT, 'Most Preferred Family Doctor', 'Analyze patients\' responses on helsi.me website to create a ranking of family doctors in Kyiv', '2021-01-11', '2021-12-05', 2, 5);
INSERT INTO `mydb`.`Query` (`id`, `title`, `description`, `created`, `modified`, `Source_id`, `Access_id`) VALUES (DEFAULT, 'Most Followed Meme Channel On Telegram', 'Create a ranking of meme channels on telegram based on their number of subscribers', '2020-09-23', '2021-09-11', 1, 4); 
INSERT INTO `mydb`.`Query` (`id`, `title`, `description`, `created`, `modified`, `Source_id`, `Access_id`) VALUES (DEFAULT, 'Opinion on Vaccination', 'Analyze all media sources to collect data regarding people\'s opinion on COVID-19 vaccination', '2021-02-21', '2021-12-15', 3, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`User`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`User` (`id`, `name`, `email`, `login`, `password`, `Access_id`) VALUES (DEFAULT, 'Olga Schevts', 'o.schevts@gmail.com', `socialFish`, `q1w2e3r4t5y`, `2`);
INSERT INTO `mydb`.`User` (`id`, `name`, `email`, `login`, `password`, `Access_id`) VALUES (DEFAULT, 'Eugene Pastushenko', 'past_2107@bigmir.net', `WackyColors`, `asdfg09876`, `4`);
INSERT INTO `mydb`.`User` (`id`, `name`, `email`, `login`, `password`, `Access_id`) VALUES (DEFAULT, 'Solomiya Onipko', 'onipkosolomia@gmail.com', `livid_redemption`, `Qwf4vTLht_6`, `6`);
INSERT INTO `mydb`.`User` (`id`, `name`, `email`, `login`, `password`, `Access_id`) VALUES (DEFAULT, 'Eugenia Larinova', 'criticaljenny_5@gmail.com', `criticaljenny_5`, `sencha11092005`, `7`);
INSERT INTO `mydb`.`User` (`id`, `name`, `email`, `login`, `password`, `Access_id`) VALUES (DEFAULT, 'Denis Yakusiv', 'den4ik_qqq12112@gmail.com', `DisloyalCustard`, `den_2368`, `5`);
INSERT INTO `mydb`.`User` (`id`, `name`, `email`, `login`, `password`, `Access_id`) VALUES (DEFAULT, 'Vladimir Ryazukh', 'vladimir_ryazukh@gmail.com', `qwerty`, `Qwerty12345`, `1`);
INSERT INTO `mydb`.`User` (`id`, `name`, `email`, `login`, `password`, `Access_id`) VALUES (DEFAULT, 'Savelii Martynenko', 'sav12_1998@bigmir.net', `marvelousTable`, `table_12345`, `3`);

COMMIT;

-- -----------------------------------------------------
-- Data for table `mydb`.`Source`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Source` (`id`, `template`) VALUES (DEFAULT, 'basic');
INSERT INTO `mydb`.`Source` (`id`, `template`) VALUES (DEFAULT, 'premium');
INSERT INTO `mydb`.`Source` (`id`, `template`) VALUES (DEFAULT, 'custom');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Result`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Result` (`id`, `name`, `description`, `Query_id`) VALUES (DEFAULT, 'ONGOING', 'Consumers\' Opinion on New Danon Yoghurts', 1);
INSERT INTO `mydb`.`Result` (`id`, `name`, `description`, `Query_id`) VALUES (DEFAULT, 'FINISHED', 'Social Image of a Youtuber Slidan', 2);
INSERT INTO `mydb`.`Result` (`id`, `name`, `description`, `Query_id`) VALUES (DEFAULT, 'ONGOING', 'Most Followed Meme Channel On Telegram', 6);
INSERT INTO `mydb`.`Result` (`id`, `name`, `description`, `Query_id`) VALUES (DEFAULT, 'ADMHELP','Favourite Contestant', 4);
INSERT INTO `mydb`.`Result` (`id`, `name`, `description`, `Query_id`) VALUES (DEFAULT, 'FINISHED', 'Opinion on Vaccination', 7);
INSERT INTO `mydb`.`Result` (`id`, `name`, `description`, `Query_id`) VALUES (DEFAULT, 'ONGOING', 'Most Preferred Family Doctor', 5);
INSERT INTO `mydb`.`Result` (`id`, `name`, `description`, `Query_id`) VALUES (DEFAULT, 'ONGOING', 'Most Mentioned Cola Brand', 3);

COMMIT;
