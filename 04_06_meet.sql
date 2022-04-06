CREATE TABLE meet(	
	meetDate DATE NOT NULL,
	meetColoumn Varchar(99),
    StuNum INT NOT NULL,
    TeachNum INT NOT NULL,
    Primary key(StuNum, TeachNum),
    foreign key(StuNum) references stu(StuNum),
    foreign key(TeachNum) references Teacher(TeachNum)
);	

SELECT * FROM db_1.meet;

