CREATE TABLE Course(
	C_No varchar(4) NOT NULL,
    C_Name varchar(20),
    C_Credit SmallInt,
    C_Dept Varchar(12),
    C_P_Name Varchar(10),
    primary key(C_No)
);

insert INTO db_1.course(C_No,C_Name,C_Credit,C_Dept,C_P_Name) VALUES ("B123", "프로그래밍기초", 3, "경영", "이동현");
insert INTO db_1.course(C_No,C_Name,C_Credit,C_Dept,C_P_Name) VALUES ("B312", "관리회계", 3, "경영", "김병진");
insert INTO db_1.course(C_No,C_Name,C_Credit,C_Dept,C_P_Name) VALUES ("B324", "경영통계", 3, "경영", "서종현");
insert INTO db_1.course(C_No,C_Name,C_Credit,C_Dept,C_P_Name) VALUES ("B413", "DB설계", 3, "경영", "이충석");
insert INTO db_1.course(C_No,C_Name,C_Credit,C_Dept,C_P_Name) VALUES ("E412", "반도체", 3, "전기", "서진구"); 

SELECT * FROM db_1.course;