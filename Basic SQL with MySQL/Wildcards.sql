-- wildcards 萬用字元 

SELECT * FROM `client`; 
SELECT * FROM `employee`; 

-- 1. select customer whose phone number end with 5456
SELECT * 
FROM `client`
WHERE `phone` LIKE '%5456'; # 哦～ 拿鐵和露露 可能是住同一個家哦

-- 2. select customer whose phone number start with 754
SELECT * 
FROM `client`
WHERE `phone` LIKE '754%'; # 哦～ 拿鐵和露露 可能是住同一個家哦

-- 3. select employee whose birthday is in October
SELECT * 
FROM `employee`
WHERE `birth_date` LIKE '_____10%'; # each _ represent a character. 
