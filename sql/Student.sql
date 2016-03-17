DROP TABLE IF EXISTS Student;

CREATE TABLE Student(
stdSSN		char(11),
stdFirstName	varchar(30) not null,
stdLastName	varchar(30) not null,
stdCity		varchar(30) not null,
stdState	char(2) not null,
stdZip		char(10) not null,
stdMajor	char(6),
stdClass	char(2),
stdGPA		decimal(3,2),
CONSTRAINT StudentPk PRIMARY KEY (StdSSN)
) Engine=innodb;

INSERT INTO student(stdSSN, stdFirstName, stdLastName, stdCity, stdState, stdMajor, stdClass, stdGPA, stdZip)
	VALUES ('123-45-6789','HOMER','WELLS','SEATTLE','WA','IS','FR',3.00,'98121-1111');

INSERT INTO student(stdSSN, stdFirstName, stdLastName, stdCity, stdState, stdMajor, stdClass, stdGPA, stdZip)
	VALUES ('124-56-7890','BOB','NORBERT','BOTHELL','WA','FIN','JR',2.70,'98011-2121');

INSERT INTO student(stdSSN, stdFirstName, stdLastName, stdCity, stdState, stdMajor, stdClass, stdGPA, stdZip)
	VALUES ('234-56-7890','CANDY','KENDALL','TACOMA','WA','ACCT','JR',3.50,'99042-3321');

INSERT INTO student(stdSSN, stdFirstName, stdLastName, stdCity, stdState, stdMajor, stdClass, stdGPA, stdZip)
	VALUES ('345-67-8901','WALLY','KENDALL','SEATTLE','WA','IS','SR',2.80,'98123-1141');

INSERT INTO student(stdSSN, stdFirstName, stdLastName, stdCity, stdState, stdMajor, stdClass, stdGPA, stdZip)
	VALUES ('456-78-9012','JOE','ESTRADA','SEATTLE','WA','FIN','SR',3.20,'98121-2333');

INSERT INTO student(stdSSN, stdFirstName, stdLastName, stdCity, stdState, stdMajor, stdClass, stdGPA, stdZip)
	VALUES ('567-89-0123','MARIAH','DODGE','SEATTLE','WA','IS','JR',3.60,'98114-0021');

INSERT INTO student(stdSSN, stdFirstName, stdLastName, stdCity, stdState, stdMajor, stdClass, stdGPA, stdZip)
	VALUES ('678-90-1234','TESS','DODGE','REDMOND','WA','ACCT','SO',3.30,'98116-2344');

INSERT INTO student(stdSSN, stdFirstName, stdLastName, stdCity, stdState, stdMajor, stdClass, stdGPA, stdZip)
	VALUES ('789-01-2345','ROBERTO','MORALES','SEATTLE','WA','FIN','JR',2.50,'98121-2212');

INSERT INTO student(stdSSN, stdFirstName, stdLastName, stdCity, stdState, stdMajor, stdClass, stdGPA, stdZip)
	VALUES ('876-54-3210','CRISTOPHER','COLAN','SEATTLE','WA','IS','SR',4.00,'98114-1332');

INSERT INTO student(stdSSN, stdFirstName, stdLastName, stdCity, stdState, stdMajor, stdClass, stdGPA, stdZip)
	VALUES ('890-12-3456','LUKE','BRAZZI','SEATTLE','WA','IS','SR',2.20,'98116-0021');

INSERT INTO student(stdSSN, stdFirstName, stdLastName, stdCity, stdState, stdMajor, stdClass, stdGPA, stdZip)
	VALUES ('901-23-4567','WILLIAM','PILGRIM','BOTHELL','WA','IS','SO',3.80,'98113-1885');