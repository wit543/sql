DROP TABLE IF EXISTS Offering;

create table Offering(
OfferNo		INTEGER not null,
CourseNo	char(6) not null,
OffTerm		char(6) not null,
OffYear		INTEGER not null,
OffLocation     varchar(30),
OffTime		varchar(10),
FacSSN		char(11),
OffDays		char(4),
CONSTRAINT OfferingPK PRIMARY KEY (OfferNo)
/*CONSTRAINT CourseFK FOREIGN KEY (CourseNo) REFERENCES Course
CONSTRAINT FacultyFK FOREIGN KEY (FacSSN) REFERENCES Faculty*/
)Engine=innodb;

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(1111,'IS320','SUMMER',2006,'BLM302','10:30:00','','MW');


INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(1234,'IS320','FALL',2005,'BLM302','10:30:00','098-76-5432','MW');

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(2222,'IS460','SUMMER',2005,'BLM412','13:30:00','','TTH');

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(3333,'IS320','SPRING',2006,'BLM214','08:30:00','098-76-5432','MW');

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(4321,'IS320','FALL',2005,'BLM214','15:30:00','098-76-5432','TTH');

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(4444,'IS320','WINTER',2006,'BLM302','15:30:00','543-21-0987','TTH');

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(5555,'FIN300','WINTER',2006,'BLM207','08:30:00','765-43-2109','MW');

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(5678,'IS480','WINTER',2006,'BLM302','10:30:00','987-65-4321','MW');

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(5679,'IS480','SPRING',2006,'BLM412','15:30:00','876-54-3210','TTH');

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(6666,'FIN450','WINTER',2006,'BLM212','10:30:00','987-65-4321','TTH');

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(7777,'FIN480','SPRING',2006,'BLM305','13:30:00','765-43-2109','MW');

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(8888,'IS320','SUMMER',2006,'BLM405','13:30:00','654-32-1098','MW');

INSERT INTO offering
	(OfferNo, CourseNo, OffTerm, OffYear, OffLocation, OffTime, FacSSN, OffDays)
	VALUES(9876,'IS460','SPRING',2006,'BLM307','13:30:00','654-32-1098','TTH');