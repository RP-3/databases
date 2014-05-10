CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
 /* Describe your table here.*/
);

/* You can also create more tables, if you need them... */

/*  Execute this file from the command line by typing:
 *    mysql < schema.sql
 *  to create the database and the tables.*/





-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'messages'
--
-- ---

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `text` VARCHAR(1000) NULL DEFAULT NULL,
  `userid` INTEGER NULL DEFAULT NULL,
  `roomid` INTEGER NULL DEFAULT NULL,
  `time` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `userid`),
KEY (`userid`)
);

-- ---
-- Table 'relationships'
--
-- ---

DROP TABLE IF EXISTS `relationships`;

CREATE TABLE `relationships` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `friendor` INTEGER NULL DEFAULT NULL,
  `friendee` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `friendor`, `friendee`)
);

-- ---
-- Table 'rooms'
--
-- ---

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'users'
--
-- ---

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (userid) REFERENCES `users` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (roomid) REFERENCES `rooms` (`id`);
ALTER TABLE `relationships` ADD FOREIGN KEY (friendor) REFERENCES `users` (`id`);
ALTER TABLE `relationships` ADD FOREIGN KEY (friendee) REFERENCES `users` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `relationships` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`id`,`text`,`userid`,`roomid`,`time`) VALUES
-- ('','','','','');
-- INSERT INTO `relationships` (`id`,`friendor`,`friendee`) VALUES
-- ('','','');
-- INSERT INTO `rooms` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `users` (`id`,`name`) VALUES
-- ('','');

