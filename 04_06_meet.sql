CREATE TABLE meet(	
	meetDate VARCHAR(30) NOT NULL,
	meetColoumn Varchar(99),
    StuNum INT NOT NULL,
    TeachNum INT NOT NULL,
    Primary key(StuNum, TeachNum),
    foreign key(StuNum) references stu(StuNum),
    foreign key(TeachNum) references Teacher(TeachNum)
);	


INSERT INTO db_1.stu(StuNum, StuName, StuGrade) VALUES (30801, "강민석", 3);
INSERT INTO db_1.stu(StuNum, StuName, StuGrade) VALUES (30802, "강창범", 3);
INSERT INTO db_1.stu(StuNum, StuName, StuGrade) VALUES (30803, "곽장선", 3);

INSERT INTO db_1.meet(meetDate, meetColoumn) VALUES (2022-04-06, "안녕1", 30801, "조아형");

SELECT * FROM db_1.meet;
