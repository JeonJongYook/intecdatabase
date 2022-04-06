CREATE TABLE Student (
	S_No int NOT NULL,
    S_Name Varchar(10),
    S_Year SmallInt,
    S_Dept Varchar(12),
    primary key(S_No)
);

insert INTO db_1.student(S_No,S_Name,S_Year,S_Dept) VALUES (100, "김수철", 4, "경영");
insert INTO db_1.student(S_No,S_Name,S_Year,S_Dept) VALUES (100, "김수철", 4, "경영");
insert INTO db_1.student(S_No,S_Name,S_Year,S_Dept) VALUES (200, "이은경", 3, "전자");
insert INTO db_1.student(S_No,S_Name,S_Year,S_Dept) VALUES (300, "선영지", 1, "경영");
insert INTO db_1.student(S_No,S_Name,S_Year,S_Dept) VALUES (400, "안선미", 4, "경영");
insert INTO db_1.student(S_No,S_Name,S_Year,S_Dept) VALUES (500, "이준용", 2, "나노");

SELECT * FROM db_1.student;
