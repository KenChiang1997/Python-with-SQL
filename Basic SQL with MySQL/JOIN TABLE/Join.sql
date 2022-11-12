-- join 連街

INSERT INTO `branch` VALUES(4,'偷懶',NULL);

-- EXTRACT all supervisor names (JOIN on condition)

SELECT * 
FROM `employee`
JOIN `branch`
ON `emp_id` = `manager_id`;

-- JOIN on condition

SELECT `employee`.`emp_id`,`employee`.`name`,`branch`.`branch_name` # you cna select both columns name here.
FROM `employee`
JOIN `branch`
ON `employee`.`emp_id` = `branch`.`manager_id`;

-- LEFT JOIN

SELECT `employee`.`emp_id`,`employee`.`name`,`branch`.`branch_name` # you cna select both columns name here.
FROM `employee` LEFT JOIN `branch`
ON `employee`.`emp_id` = `branch`.`manager_id`; # Retruns all left table data

-- RIGHT JOIN

SELECT `employee`.`emp_id`,`employee`.`name`,`branch`.`branch_name` # you cna select both columns name here.
FROM `employee` RIGHT JOIN `branch`
ON `employee`.`emp_id` = `branch`.`manager_id`; # Retruns all right table data
