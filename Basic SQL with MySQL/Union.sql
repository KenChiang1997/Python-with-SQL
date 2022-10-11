-- union


-- 1. select employee name and client name 
SELECT `name`
FROM `employee`
UNION 
SELECT `client_name`
FROM `client`;

-- 2. select employee name and client name  and branch name
SELECT `name`
FROM `employee`
UNION 
SELECT `client_name`
FROM `client`
UNION
SELECT `branch_name`
FROM `branch`;


-- 3. Employee id + employee name "union" client id + client name
SELECT `name` AS `total_name`,`emp_id` AS `total_id `# will use this as columns name(default)
FROM `employee`
UNION 
SELECT `client_name`,`client_id`
FROM `client`;

-- 4. employee salary union sales number
SELECT `salary` AS `total money`
FROM `employee`
UNION 
SELECT `total_sales`
FROM `works_with`;


