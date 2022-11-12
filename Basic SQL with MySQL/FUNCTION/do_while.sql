CREATE DEFINER=`root`@`localhost` FUNCTION `do_while`(`plus` INT) RETURNS int
    DETERMINISTIC
BEGIN
  DECLARE `number` INT;
  SET `number` = 1;
  WHILE `number` <= 10 DO
    SET `number` = `number` + `plus`;
  END WHILE;

RETURN `number`;
END