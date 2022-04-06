CREATE TABLE socialmedia (
    회원아이디 int not null,
    비밀번호 varchar(45) not null,
    사용자이름 varchar(45) not null,
    이메일 varchar(50) null,
    핸드폰번호 varchar(30) null,
    닉네임 varchar(45) null,
    접속상태 varchar(5) not null,
    dm varchar(100) null,
    프로필 varchar(30) null,
    게시물번호 int null,
    PRIMARY KEY(회원아이디)
);

CREATE TABLE socialpost (
	게시물번호 int not null,
    게시물명 varchar(30) not null,
    댓글수 int null,
    좋아요수 int null,
    primary key(게시물번호),
    FOREIGN KEY (게시물번호) REFERENCES socialmedia(게시물번호)
);

insert into db_1.socialmedia(회원아이디,비밀번호,사용자이름,이메일,핸드폰번호,닉네임,접속상태,dm,프로필,게시물번호) values (1111, 'intec1234', 'intec1', 'intec1@naver.com', '010-1234-5678', 'ink1', 'on', 'ㅎㅇ1', '나는 1111입니다.', 1);
insert into db_1.socialmedia(회원아이디,비밀번호,사용자이름,이메일,핸드폰번호,닉네임,접속상태,dm,프로필,게시물번호) values (2222, 'intec5678', 'intec2', 'intec2@naver.com', '010-1312-1654', 'ink2', 'off', 'ㅎㅇ2', '나는 2222입니다.', 2);
insert into db_1.socialmedia(회원아이디,비밀번호,사용자이름,이메일,핸드폰번호,닉네임,접속상태,dm,프로필,게시물번호) values (3333, 'intec9012', 'intec3', 'intec3@naver.com', '010-1684-1968', 'ink3', 'on', 'ㅎㅇ2', '나는 3333입니다.', 3);
select * from db_1.socialmedia;
