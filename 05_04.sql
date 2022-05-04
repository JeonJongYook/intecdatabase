CREATE TABLE 동아리 (
	이름 varchar(40),
    학번 int,
    성별 varchar(2),
    학년 smallint,
    소속동아리 varchar(40),
    역할 varchar(40),
    primary key (학번),
	foreign key (학번) references 학급(학번)
);


INSERT INTO db_1.동아리(이름, 학번, 성별, 학년, 소속동아리, 역할) VALUES ("전종욱",30814,"남자",3,"배드민턴부","서브");
INSERT INTO db_1.동아리(이름, 학번, 성별, 학년, 소속동아리, 역할) VALUES ("권수아",30804,"여자",3,"밴드부","메인보컬");
INSERT INTO db_1.동아리(이름, 학번, 성별, 학년, 소속동아리, 역할) VALUES ("김효진",30711,"여자",3,"배드민턴부","스파이크");
INSERT INTO db_1.동아리(이름, 학번, 성별, 학년, 소속동아리, 역할) VALUES ("박서진",30716,"남자",3,"볼링부","백업");

SELECT *
FROM 동아리;

SELECT 학번
FROM 학급;

SELECT 성별
FROM 동아리;

SELECT 학년
FROM 학과;

SELECT 소속동아리
FROM 동아리
WHERE 밴드부;

SELECT 역할
FROM 동아리;



CREATE TABLE 학급 (
	이름 varchar(40),
    학번 int,
    성별 varchar(2),
    학년 smallint,
    반 varchar(40),
    primary key (학번),
    foreign key (학번) references 동아리(학번)
);

INSERT INTO db_1.학급(이름, 학번, 성별, 학년, 반) VALUES ("전종욱",30814,"남자",3,2);
INSERT INTO db_1.학급(이름, 학번, 성별, 학년, 반) VALUES ("권수아",30804,"여자",3,2);
INSERT INTO db_1.학급(이름, 학번, 성별, 학년, 반) VALUES ("김효진",30711,"여자",3,1);
INSERT INTO db_1.학급(이름, 학번, 성별, 학년, 반) VALUES ("박서진",30716,"남자",3,1);


CREATE TABLE 학과 (
	이름 varchar(40),
    학번 int,
    성별 varchar(2),
    학년 smallint,
    과 varchar(10),
    primary key (과),
    foreign key (과) references 학급(학번)
);

INSERT INTO db_1.학과(이름, 학번, 성별, 학년, 과) VALUES ("전종욱",30814,"남자",3,"정보통신과");
INSERT INTO db_1.학과(이름, 학번, 성별, 학년, 과) VALUES ("권수아",30804,"여자",3,"정보통신과");
INSERT INTO db_1.학과(이름, 학번, 성별, 학년, 과) VALUES ("김효진",30711,"여자",3,"정보통신과");
INSERT INTO db_1.학과(이름, 학번, 성별, 학년, 과) VALUES ("박서진",30716,"남자",3,"정보통신과");