CREATE TABLE onlinemeeting (
	회원아이디 varchar(45) not null,
    비밀번호 varchar(45) not null,
    사용자이름 varchar(45) null,
    이메일 varchar(45) not null,
    참여상태 varchar(15) not null,
    PRIMARY KEY(회원아이디)
);

insert into db_1.onlinemeeting(회원아이디, 비밀번호, 사용자이름, 이메일, 참여상태) values ('intec1', 'intec1234', 'inC1', 'tasdg@naver.com', 'on');
insert into db_1.onlinemeeting(회원아이디, 비밀번호, 사용자이름, 이메일, 참여상태) values ('intec2', 'intec1111', 'inD1', 'asfca@naver.com', 'off');
insert into db_1.onlinemeeting(회원아이디, 비밀번호, 사용자이름, 이메일, 참여상태) values ('intec3', 'intec2341', 'inG1', 'casds@naver.com', 'off');
SELECT * FROM db_1.onlinemeeting;