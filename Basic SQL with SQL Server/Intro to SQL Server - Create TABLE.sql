-- CREATE DATABASE SQL_Tutorial
USE SQL_Tutorial
GO


CREATE TABLE student_table(
	student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT '歷史',
    PRIMARY KEY(student_id)
)

INSERT INTO student_table VALUES(1,'white' ,'history');
INSERT INTO student_table VALUES(2,'black' , 'english');
INSERT INTO student_table VALUES(3,'yellow',NULL );

SELECT * FROM student_table;

DROP TABLE student_table