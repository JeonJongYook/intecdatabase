CREATE TABLE Stu (
	학번 INT NOT NULL,
    이름 VARCHAR(45),
    학과코드 INT NOT NULL,
    과목명 VARCHAR (45) NOT NULL,
    primary key(학번)
);

INSERT INTO db_1.Stu(학번, 이름, 학과코드, 과목명) VALUES (30801, "강민석", 330, "수학");
INSERT INTO db_1.Stu(학번, 이름, 학과코드, 과목명) VALUES (30802, "강창범", 331, "영어");
INSERT INTO db_1.Stu(학번, 이름, 학과코드, 과목명) VALUES (30803, "곽장선", 332, "데이터베이스");

SELECT * FROM db_1.Stu;

CREATE TABLE Sub (
	과목코드 INT NOT NULL,
	과목명 VARCHAR(45) NOT NULL,
    담당교사 VARCHAR(45) NOT NULL,
    학번 INT NOT NULL,
    primary key(과목코드),
    foreign key(학번) references db_1.stu(학번)
);

INSERT INTO db_1.Sub(과목코드, 과목명, 담당교사, 학번) VALUES (14, "수학", "창우빈", 30801);
INSERT INTO db_1.Sub(과목코드, 과목명, 담당교사, 학번) VALUES (13, "영어", "정찬미", 30802);
INSERT INTO db_1.Sub(과목코드, 과목명, 담당교사, 학번) VALUES (12, "데이터베이스", "권미란", 30803);

SELECT * FROM db_1.Sub;

CREATE TABLE StuSub (
	학과코드 INT NOT NULL,
    학과명 VARCHAR(45) NOT NULL,
    위치 VARCHAR(45) NOT NULL,
    학번 INT NOT NULL,
    primary key(학과코드),
    foreign key(학번) references db_1.stu(학번)
);

INSERT INTO db_1.StuSub(학과코드, 학과명, 위치, 학번) VALUES (330, "정보통신과", "7층", 30801);
INSERT INTO db_1.StuSub(학과코드, 학과명, 위치, 학번) VALUES (331, "전자회로과", "8층", 30802);
INSERT INTO db_1.StuSub(학과코드, 학과명, 위치, 학번) VALUES (332, "전자제어과", "9층", 30803);

SELECT * FROM db_1.StuSub;


CREATE TABLE Class (
	중간고사점수 VARCHAR(45) NOT NULL,
    기말고사점수 VARCHAR(45) NOT NULL,
    학번 INT NOT NULL,
	과목코드 INT NOT NULL,
    primary key(학번, 과목코드),
    foreign key(학번) references Stu(학번),
    foreign key(과목코드) references Sub(과목코드)
);

INSERT INTO db_1.Class(중간고사점수, 기말고사점수, 학번, 과목코드) VALUES (80, 90, 30801, 14);
INSERT INTO db_1.Class(중간고사점수, 기말고사점수, 학번, 과목코드) VALUES (75, 70, 30802, 13);
INSERT INTO db_1.Class(중간고사점수, 기말고사점수, 학번, 과목코드) VALUES (85, 100, 30803, 12);

SELECT * FROM db_1.Class;
