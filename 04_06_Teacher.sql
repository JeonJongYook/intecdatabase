CREATE TABLE Teacher (
	TeachNum INT Not NULL,
    TeachName Varchar(15),
    primary key(TeachNum)
);

INSERT INTO db_1.Teacher(TeachNum, TeachName) VALUES (2030910, "조아형");
INSERT INTO db_1.Teacher(TeachNum, TeachName) VALUES (2030610, "홍종덕");
INSERT INTO db_1.Teacher(TeachNum, TeachName) VALUES (2030310, "이남숙");

SELECT * FROM db_1.teacher;