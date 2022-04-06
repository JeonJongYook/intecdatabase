CREATE TABLE stu(
	StuNum INT NOT NULL,
    StuName Varchar(40),
    StuGrade smallint,
    primary key(StuNum)
);

INSERT INTO db_1.stu(StuNum, StuName, StuGrade) VALUES (30801, "강민석", 3);
INSERT INTO db_1.stu(StuNum, StuName, StuGrade) VALUES (30802, "강창범", 3);
INSERT INTO db_1.stu(StuNum, StuName, StuGrade) VALUES (30803, "곽장선", 3);

SELECT * FROM db_1.stu;