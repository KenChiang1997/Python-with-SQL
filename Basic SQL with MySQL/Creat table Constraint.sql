USE `sql_tutorial`;

CREATE TABLE `student_2`(
	`student_id` INT AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    `major` VARCHAR(20) DEFAULT '歷史',
    PRIMARY KEY(`student_id`)
);


DROP TABLE `student_2`;
DESCRIBE `student_2`;

INSERT INTO `student_2` VALUES(1,'小白' ,'歷史');
INSERT INTO `student_2` VALUES('小黑' ,'英文');
INSERT INTO `student_2` VALUES('小黃',NULL );

INSERT INTO `student_2`(`name`,`major`) VALUES('小蘭','英語');
SELECT * FROM `student_2`;