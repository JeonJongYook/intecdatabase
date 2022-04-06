CREATE TABLE Enroll2(
	S_No Int NOT NULL,
    C_No Varchar(4) NOT NULL,
    E_Grade Varchar(2),
    E_MidTerm SmallInt
);

SELECT * FROM Enroll2;

Alter Table Enroll2
	Add E_FinalTerm SmallInt;
Alter Table Enroll2
	Add Primary Key(S_No, C_No);
Alter Table Enroll2
	Add foreign key(S_No) references student(S_No)
		ON Delete cascade on update cascade;
Alter Table Enroll2
	Add foreign key(C_No) references course(C_No)
		on update restrict on delete restrict;