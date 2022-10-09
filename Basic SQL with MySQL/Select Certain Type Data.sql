USE `sql_tutorial`;
SELECT * FROM `student`;

SET SQL_SAFE_UPDATES = 0;
# 把英語 Major Trnasform to 英語文學 


CREATE TABLE `student`(
	`student_id` INT,
    `name` VARCHAR(20),
    `major` VARCHAR(20),
    `score` INT,
    PRIMARY KEY(`student_id`)
);

# Select Data
SELECT * 
FROM `student`
ORDER BY `score`,`student_id`
LIMIT 2;

SELECT * 
FROM `student`
ORDER BY `score` DESC # DESC 要放在想 descending 的那個 crieteria 後面
LIMIT 6;

SELECT * 
FROM `student`
WHERE `major` = '英語' AND `SCORE` >= 60;

SELECT * 
FROM `student`
WHERE `major` IN('英語','化學')
ORDER BY `score` DESC # DESC 要放在想 descending 的那個 crieteria 後面
LIMIT 6;

SELECT * FROM `student`;

