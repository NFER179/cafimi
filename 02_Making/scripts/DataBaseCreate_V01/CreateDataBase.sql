SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `role`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `user` (
    `user_id` VARCHAR(30) NOT NULL,
    `role_id` VARCHAR(30) NOT NULL,
    `pwd` INTEGER NOT NULL,
    `first_name` INTEGER NOT NULL,
    `last_name` INTEGER NOT NULL,
    PRIMARY KEY (`user_id`)
);

CREATE TABLE `role` (
    `role_id` VARCHAR(30) NOT NULL,
    `descr` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`role_id`)
);

ALTER TABLE `user` ADD FOREIGN KEY (`role_id`) REFERENCES `role`(`role_id`);