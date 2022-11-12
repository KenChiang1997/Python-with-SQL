-- construct company data base 

CREATE TABLE `employee`(
	`emp_id` INT PRIMARY KEY,
    `name` VARCHAR(20),
	`birth_date` DATE,
    `sex` VARCHAR(5),
    `salary` INT,
    `branch_id` INT,
    `sup_id` INT
);

CREATE TABLE `branch`(
	`branch_id` INT PRIMARY KEY,
    `branch_name` VARCHAR(20),
    `manager_id` INT,
    FOREIGN KEY (`manager_id`) REFERENCES`employee`(`emp_id`) ON DELETE SET NULL
);

# SET Foreign key for employee table (employee table(branch_id) --> branch table(branch_id))
ALTER TABLE `employee`
ADD FOREIGN KEY(`branch_id`)
REFERENCES `branch`(`branch_id`)
ON DELETE SET NULL;

# SET Foreign key for employee table (employee table(sup_id) --> employee table(emp_id))
ALTER TABLE `employee`
ADD FOREIGN KEY(`sup_id`)
REFERENCES `employee`(`emp_id`)
ON DELETE SET NULL;

CREATE TABLE `client`(
	`client_id` INT PRIMARY KEY,
    `client_name` VARCHAR(20),
    `phone` VARCHAR(20)
);

CREATE TABLE `works_with`(
	`emp_id` INT,
    `client_id` INT,
    `total_sales` INT,
    PRIMARY KEY(`emp_id`,`client_id`),
    FOREIGN KEY (`emp_id`) REFERENCES `employee`(`emp_id`) ON DELETE CASCADE,
    FOREIGN KEY (`client_id`) REFERENCES `client`(`client_id`) ON DELETE CASCADE
);


INSERT INTO `branch` VALUES(1,'研發',NULL);
INSERT INTO `branch` VALUES(2,'行政',NULL);
INSERT INTO `branch` VALUES(3,'資訊',NULL);

INSERT INTO `employee` VALUES(206,'小黃','1998-10-08','F',50000,1,NULL); # 發先沒有 branch_id = 1 的資料 (have to insert branch data first with manager_id is null)
INSERT INTO `employee` VALUES(207,'小綠','1995-09-16','F',29000,2,206);
INSERT INTO `employee` VALUES(208,'小黑','2000-05-08','F',35000,3,206);
INSERT INTO `employee` VALUES(209,'小白','1997-04-12','F',39000,3,207);
INSERT INTO `employee` VALUES(210,'小蘭','1928-11-10','F',84000,1,207);

UPDATE `branch`
SET `manager_id` = 206
WHERE `branch_id` = 1;

UPDATE `branch`
SET `manager_id` = 207
WHERE `branch_id` = 2;

UPDATE `branch`
SET `manager_id` = 208
WHERE `branch_id` = 3;

INSERT INTO `client` VALUES(400,'阿狗','98456');
INSERT INTO `client` VALUES(401,'阿貓','89456');
INSERT INTO `client` VALUES(402,'拿鐵','75456');
INSERT INTO `client` VALUES(403,'嚕嚕','75456');
INSERT INTO `client` VALUES(404,'小咪','13456');

INSERT INTO `works_with` VALUES(206,400,70000);
INSERT INTO `works_with` VALUES(207,401,24000);
INSERT INTO `works_with` VALUES(208,402,9800);
INSERT INTO `works_with` VALUES(208,403,24000);
INSERT INTO `works_with` VALUES(210,404,74560);

