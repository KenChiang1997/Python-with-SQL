-- subquery 子查詢 

SELECT * FROM `branch`;

-- 1. find out r&d branch manager name 

SELECT `manager_id` 
FROM `branch`
WHERE `branch_name` = '研發';

SELECT `name`
FROM `employee`
WHERE `emp_id` = (
	SELECT `manager_id` 
	FROM `branch`
	WHERE `branch_name` = '研發'
    );  #Subquery


-- 2. find out customer name with total sales contribution over 20,000

SELECT `client_name`
FROM `client` 
WHERE `client_id` IN (
	SELECT `client_id` 
	FROM `works_with`
	WHERE `total_sales` > 20000
);