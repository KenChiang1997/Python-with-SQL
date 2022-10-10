-- aggregate function 聚合函數 ( # it's like aggregate functoin in python pandas.)

-- 1. count number of row data 

SELECT COUNT(*) FROM `employee`; 
SELECT COUNT(`sup_id`) FROM `employee`;

-- 2. extract number of female employee who was born after 1950-01-01

SELECT COUNT(*) FROM `employee`
WHERE `birth_date` > '1950-01-01' AND `sex` = 'F';

-- 3. average salary in employee

SELECT AVG(`salary`) FROM `employee`;

-- 4. sum of employee salary

SELECT SUM(`salary`) FROM `employee`; 

-- 5. Highest pay employee salary

SELECT MAX(`salary`) FROM `employee`;

-- 6. Lowest pay employee salary 

SELECT MIN(`salary`) FROM `employee`;