CREATE DATABASE `sql_tutorial`;
SHOW DATABASES; # Blue text is Function(關鍵字)
USE `sql_tutorial`;

# INT 			- 整數
# DECIMAL(3,2) 	- 有小數點的整數 3 表有幾位數， 2 表小數點站幾位數 --> 2.33 or 3.22
# VARCHAR(n) 	- 字串, n 表 最多能存放幾個字元
# BLOB 			- (Binary Large Object) 圖片，影片，檔案...
# Date 			- 'YYYY-MM-DD' 日期
# TIMESTAMP 	- 'YYYY-MM-DD HH:MM:SS' 紀錄時間

CREATE TABLE `student`(
	`student_id` INT,
    `name` VARCHAR(20),
    `major` VARCHAR(20),
    PRIMARY KEY(`student_id`)
);

DESCRIBE `student`;

INSERT INTO `student` VALUES(1, '小白','歷史');
INSERT INTO `student` VALUES(2, '小黑','生物');
INSERT INTO `student` VALUES(3, '小綠',NULL);
INSERT INTO `student`(`name`,`major`,`student_id`) VALUES('小蘭','英語','4');

SELECT * FROM `student`;


