DROP TABLE IF EXISTS Course;

create table Course(
CourseNo	char(6) not null,
crsDesc		varchar(50) not null,
CrsUnits	integer,
CONSTRAINT CoursePK PRIMARY KEY (CourseNo)
)Engine=innodb;

INSERT INTO course(CourseNo, crsDesc, CrsUnits)
	VALUES ( 'FIN300','FUNDAMENTALS OF FINANCE',4);

INSERT INTO course(CourseNo, crsDesc, CrsUnits)
	VALUES ( 'FIN450','PRINCIPLES OF INVESTMENTS',4);
	
INSERT INTO course(CourseNo, crsDesc, CrsUnits)
	VALUES ( 'FIN480','CORPORATE FINANCE',4);
	
INSERT INTO course(CourseNo, crsDesc, CrsUnits)
	VALUES ('IS320','FUNDAMENTALS OF BUSINESS PROGRAMMING',4 );

INSERT INTO course(CourseNo, crsDesc, CrsUnits)
	VALUES ( 'IS460','SYSTEMS ANALYSIS',4);
	
INSERT INTO course(CourseNo, crsDesc, CrsUnits)
	VALUES ( 'IS470','BUSINESS DATA COMMUNICATIONS',4);

INSERT INTO course(CourseNo, crsDesc, CrsUnits)
	VALUES ('IS480','FUNDAMENTALS OF DATABASE MANAGEMENT',4 );

		