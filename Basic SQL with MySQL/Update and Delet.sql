USE `sql_tutorial`;
SELECT * FROM `student`;

SET SQL_SAFE_UPDATES = 0;
# 把英語 Major Trnasform to 英語文學 

DROP TABLE `student`;

CREATE TABLE `student`(
	`student_id` INT,
    `name` VARCHAR(20),
    `major` VARCHAR(20),
    `score` INT,
    PRIMARY KEY(`student_id`)
);

INSERT INTO `student` VALUES(1, '小白','歷史',20);
INSERT INTO `student` VALUES(2, '小黑','生物',30);
INSERT INTO `student` VALUES(3, '小黃','英語',40);
INSERT INTO `student` VALUES(4, '小綠','英語',90);
INSERT INTO `student` VALUES(5, '小美','英語',60);
INSERT INTO `student` VALUES(6, '小美','化學',60);

UPDATE `student` 
SET `major` = '生化' 
WHERE `major` = '生物' OR `major` = '化學';

UPDATE `student` 
SET `major` = '生化', name = '小白' 
WHERE `student_id` = 1;

UPDATE `student` 
SET `major` = '物理';

# 刪除資料
DELETE FROM `student`
WHERE `name` = '小美' AND `major` = '物理';

DELETE FROM `student`
WHERE `score` >60;


SELECT * FROM `student`;

