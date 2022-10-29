CREATE DEFINER=`root`@`localhost` FUNCTION `gradeitem`(`grade` INT) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	declare `mynote` varchar(20);
    if `grade` < 60 then
		set `mynote` = "Fail...";
	elseif (`grade` >= 60) & (`grade` < 80) then 
		set `mynote` = "Good~";
	elseif (`grade` > 80) then 
		set `mynote` = "Excellent";
	else
		set `mynote` = "Unclear";
	end if;
    
return `mynote`;
END