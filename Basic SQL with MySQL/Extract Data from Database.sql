-- Little Pratice

USE `sql_tutorial`;

-- 1. Exrtract all employee data

SELECT * FROM `employee`;

-- 2. Ectract all client data 

SELECT * FROM `client`;

-- 3. Extract employee data and sort by salary

SELECT * 
FROM `employee`
ORDER BY `salary` DESC;

-- 4. Top 3 salary employee data

SELECT * 
FROM `employee`
ORDER BY `salary` DESC
LIMIT 3;

-- 5. extract all employee's name  

SELECT `name` FROM `employee`;

-- 6. extract unique in column of sex in employee table

SELECT DISTINCT `sex` FROM `employee`;