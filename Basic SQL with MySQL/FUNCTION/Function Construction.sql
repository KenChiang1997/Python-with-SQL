SELECT * FROM `student`;

SELECT `student`.`student_id`,`student`.`name`,`student`.`score`
FROM `student`;
-- call the function here 

SELECT `student`.`student_id`,`student`.`name`,`student`.`score`,gradeitem(`score`) 
FROM `student`
ORDER By `student`.`score`desc;