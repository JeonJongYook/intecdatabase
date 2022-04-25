CREATE TABLE employees (
	직원번호 int,
    이름 varchar(20),
    직위 varchar(15),
    부서 varchar(20),
    입사날짜 date,
    급여번호 int,
    primary key(직원번호),
    foreign key(급여번호) REFERENCES salaries(급여번호)
);

INSERT INTO employees VALUES(1001, "김한주", "과장", "영업부", "2010-03-01", 101);
INSERT INTO employees VALUES(1002, "이하영", "사원", "영업부", "2015-07-01", 303);
INSERT INTO employees VALUES(1003, "김윤진", "과장", "기획부", "2011-01-01", 101);
INSERT INTO employees VALUES(1004, "유해민", "부장", "개발부", "2015-04-05", 202);

SELECT * FROM db_1.employees;

CREATE TABLE salaries (
	급여번호 int,
    급여 int,
    급여일 date,
    성과급여일 date,
    primary key(급여번호)
);

INSERT INTO salaries VALUES(101, 8000000, "2012-07-01", "2014-06-30");
INSERT INTO salaries VALUES(202, 5000000, "2013-07-01", "2014-06-30");
INSERT INTO salaries VALUES(303, 3000000, "2014-07-01", "2015-06-30");

SELECT * FROM db_1.salaries;


SELECT * FROM db_1.employees WHERE 직원번호=1001;
SELECT * FROM db_1.employees WHERE 직원번호=1003;
SELECT * FROM db_1.employees WHERE 이름 LIKE "김%";
SELECT COUNT(*) as 총직원수 FROM db_1.employees;
SELECT COUNT(*) as 직원수 FROM db_1.employees WHERE 부서='영업부';
SELECT SUM(급여) as 급여총액 FROM db_1.salaries;
SELECT AVG(급여) as 급여평균 FROM db_1.salaries;
SELECT MAX(급여) as 최고급여 FROM db_1.salaries;
SELECT * FROM db_1.employees WHERE 입사날짜 LIKE '2010%';
SELECT * FROM db_1.salaries WHERE 급여 >= 2000000;
SELECT * FROM db_1.salaries;

DROP TABLE db_1.employees;
DROP TABLE db_1.salaries;