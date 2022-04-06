CREATE TABLE enroll (
	S_No Int Not NUll,
    C_No Varchar(4),
    E_Grade Varchar(2),
    E_MidTerm SmallInt,
    E_FinalTerm SmallInt,
    Primary key(S_No, C_No),
    foreign key(S_No) references student(S_No)
		ON Delete Cascade ON Update Cascade,
    foreign key(C_No) references course(C_No)
		ON Delete Restrict ON Update Restrict
);

insert INTO db_1.enroll(S_No,C_No,E_Grade,E_MidTerm,E_FinalTerm) VALUES (100, "B413", "A", 90, 95);
insert INTO db_1.enroll(S_No,C_No,E_Grade,E_MidTerm,E_FinalTerm) VALUES (100, "E412", "A", 95, 95);
insert INTO db_1.enroll(S_No,C_No,E_Grade,E_MidTerm,E_FinalTerm) VALUES (200, "B123", "B", 85, 80);
insert INTO db_1.enroll(S_No,C_No,E_Grade,E_MidTerm,E_FinalTerm) VALUES (300, "B312", "A", 90, 95);
insert INTO db_1.enroll(S_No,C_No,E_Grade,E_MidTerm,E_FinalTerm) VALUES (300, "B324", "C", 75, 75);
insert INTO db_1.enroll(S_No,C_No,E_Grade,E_MidTerm,E_FinalTerm) VALUES (300, "B413", "A", 95, 90);
insert INTO db_1.enroll(S_No,C_No,E_Grade,E_MidTerm,E_FinalTerm) VALUES (400, "B312", "A", 90, 95);
insert INTO db_1.enroll(S_No,C_No,E_Grade,E_MidTerm,E_FinalTerm) VALUES (400, "B324", "A", 95, 90);
insert INTO db_1.enroll(S_No,C_No,E_Grade,E_MidTerm,E_FinalTerm) VALUES (400, "B413", "B", 80, 85);
insert INTO db_1.enroll(S_No,C_No,E_Grade,E_MidTerm,E_FinalTerm) VALUES (400, "E412", "C", 65, 75);
insert INTO db_1.enroll(S_No,C_No,E_Grade,E_MidTerm,E_FinalTerm) VALUES (500, "B312", "B", 85, 80);

truncate table enroll;

SELECT * FROM db_1.enroll;

