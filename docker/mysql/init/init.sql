CREATE DATABASE sampledb;

USE sampledb;

DROP TABLE IF EXISTS `user`;

CREATE TABLE
    `user` (
        `id` int NOT NULL AUTO_INCREMENT,
        `name` VARCHAR(35),
        `team` VARCHAR(35),
        PRIMARY KEY(`id`),
        INDEX(`id`)
    ) ENGINE = INNODB;

SET AUTOCOMMIT=0;

INSERT INTO `user`VALUES(0, '田中太郎', '営業部');

INSERT INTO `user`VALUES(0, '鈴木一郎', '経理部');

INSERT INTO `user`VALUES(0, '山下真一', 'システム部');

INSERT INTO `user`VALUES(0, '堤和樹', 'システム部');

INSERT INTO `user`VALUES(0, '藤田五郎', '営業部');

INSERT INTO `user`VALUES(0, '斎藤一', '経理部');

COMMIT;