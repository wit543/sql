DROP TABLE IF EXISTS Faculty;

CREATE TABLE Faculty(
FacSSN			char(11) not null,
FacFirstName            varchar(30) not null,
FacLastName		varchar(30) not null,
FacCity			varchar(30) not null,
FacState		char(2) not null,
FacZipCode		char(10) not null,
FacRank			char(4),
FacHireDate		date,
FacSalary		decimal(10,2),
FacSupervisor           char(11),
FacDept			char(6),
CONSTRAINT FacultyPK PRIMARY KEY (FacSSN)
/*CONSTRAINT SupervisorFK FOREIGN KEY (FacSupervisor) REFERENCES Faculty ON DELETE SET NULL ON UPDATE CASCADE*/
)Engine=innodb;

INSERT INTO faculty
	(FacSSN, FacFirstName, FacLastName, FacCity, FacState,FacDept, FacRank, FacSalary, FacSupervisor, FacHireDate, FacZipCode)
	 VALUES ('543-21-0987','VICTORIA','EMMANUEL','BOTHELL','WA','MS','PROF',120000.0,'','1996-04-15','98011-2242');

INSERT INTO faculty
	(FacSSN, FacFirstName, FacLastName, FacCity, FacState,FacDept, FacRank, FacSalary, FacSupervisor, FacHireDate, FacZipCode)
	 VALUES ('765-43-2109','NICKI','MACON','BELLEVUE','WA','FIN','PROF',65000.00,'','1997-04-11','98015-9945');

INSERT INTO faculty
	(FacSSN, FacFirstName, FacLastName, FacCity, FacState,FacDept, FacRank, FacSalary, FacSupervisor, FacHireDate, FacZipCode)
	 VALUES ('654-32-1098','LEONARD','FIBON','SEATTLE','WA','MS','ASSC',70000.00,'543-21-0987','1994-05-01','98121-0094');

INSERT INTO faculty
	(FacSSN, FacFirstName, FacLastName, FacCity, FacState,FacDept, FacRank, FacSalary, FacSupervisor, FacHireDate, FacZipCode)
	 VALUES ('098-76-5432','LEONARD','VINCE','SEATTLE','WA','MS','ASST',35000.00,'654-32-1098','1995-04-10','98111-9921');

INSERT INTO faculty
	(FacSSN, FacFirstName, FacLastName, FacCity, FacState,FacDept, FacRank, FacSalary, FacSupervisor, FacHireDate, FacZipCode)
	 VALUES ('876-54-3210','CRISTOPHER','COLAN','SEATTLE','WA','MS','ASST',40000.00,'654-32-1098','1999-03-01','98114-1332');

INSERT INTO faculty
	(FacSSN, FacFirstName, FacLastName, FacCity, FacState,FacDept, FacRank, FacSalary, FacSupervisor, FacHireDate, FacZipCode)
	 VALUES ('987-65-4321','JULIA','MILLS','SEATTLE','WA','FIN','ASSC',75000.00,'765-43-2109','2000-03-15','98114-9954');