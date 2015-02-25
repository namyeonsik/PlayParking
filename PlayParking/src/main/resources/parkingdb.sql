CREATE TABLE Admin
(
	aid                   VARCHAR2(20)  NOT NULL ,
	apwd                  VARCHAR2(20)  NOT NULL ,
	pid                   NUMBER  NOT NULL 
)


CREATE UNIQUE INDEX XPKAdministrator ON Admin
(aid  ASC)


ALTER TABLE Admin
	ADD CONSTRAINT  XPKAdministrator PRIMARY KEY (aid)


CREATE TABLE Members
(
	mid                   VARCHAR2(20)  NOT NULL ,
	memail                VARCHAR2(100)  NOT NULL ,
	mname                 VARCHAR2(20)  NOT NULL ,
	mphone                VARCHAR2(20)  NOT NULL ,
	mpoint                NUMBER  NULL ,
	mcheck                NUMBER(1)  NULL 
)


CREATE UNIQUE INDEX XPKMembers ON Members
(mid  ASC)

ALTER TABLE Members
	ADD CONSTRAINT  XPKMembers PRIMARY KEY (mid)


CREATE TABLE Notice
(
	nno                   NUMBER  NOT NULL ,
	aid                   VARCHAR2(20)  NOT NULL ,
	ntitle                VARCHAR2(100)  NULL ,
	ndate                 DATE  NULL ,
	nmodate               DATE  NULL ,
	ntext                 VARCHAR2()  NULL 
)


CREATE UNIQUE INDEX XPKnotice ON Notice
(nno  ASC,aid  ASC)


ALTER TABLE Notice
	ADD CONSTRAINT  XPKnotice PRIMARY KEY (nno,aid)




CREATE TABLE Parking
(
	pid                   NUMBER  NOT NULL ,
	pfare                 NUMBER  NOT NULL ,
	pwidth                NUMBER  NULL ,
	plength               NUMBER  NULL ,
	platefare             NUMBER  NULL ,
	pamount               NUMBER  NULL ,
	pname                 VARCHAR2(20)  NULL ,
	plocation             VARCHAR2(20)  NULL ,
	pphone                VARCHAR2(20)  NULL ,
	x                     NUMBER(10,6)  NULL ,
	y                     NUMBER(10,6)  NULL ,
	pcount                NUMBER  NULL ,
	pimage                VARCHAR2(100)  NULL ,
	pimage2               VARCHAR2(100)  NULL ,
	pimage3               VARCHAR2(100)  NULL ,
	paddress              VARCHAR2(1000)  NULL ,
	ptip                  VARCHAR2(1000)  NULL 
)


CREATE UNIQUE INDEX XPKParking ON Parking
(pid  ASC)


ALTER TABLE Parking
	ADD CONSTRAINT  XPKParking PRIMARY KEY (pid)




CREATE TABLE PayPoint
(
	mid                   VARCHAR2(20)  NOT NULL ,
	paypoint              NUMBER  NULL ,
	paydate               DATE  NOT NULL 
)



CREATE UNIQUE INDEX XPKPoint ON PayPoint
(paydate  ASC,mid  ASC)



ALTER TABLE PayPoint
	ADD CONSTRAINT  XPKPoint PRIMARY KEY (paydate,mid)

CREATE TABLE Reservation
(
	pid                   NUMBER  NOT NULL ,
	rstart                DATE  NOT NULL ,
	rtime                 NUMBER  NOT NULL ,
	mid                   VARCHAR2(20)  NOT NULL ,
	rid                   NUMBER  NOT NULL ,
	rend                  DATE  NULL ,
	rextrafare            NUMBER  NULL ,
	rstarttime            CHAR(4)  NOT NULL ,
	rstarttimeback        CHAR(4)  NOT NULL ,
	rpoint                NUMBER  NULL 
)


CREATE UNIQUE INDEX XPKReservation ON Reservation
(rid  ASC)

ALTER TABLE Reservation
	ADD CONSTRAINT  XPKReservation PRIMARY KEY (rid)

CREATE TABLE UsePoint
(
	usedate               DATE  NOT NULL ,
	usepoint              NUMBER  NULL ,
	pid                   NUMBER  NOT NULL ,
	mid                   VARCHAR2(20)  NOT NULL 
)

CREATE UNIQUE INDEX XPKusepoint ON UsePoint
(usedate  ASC,mid  ASC)


ALTER TABLE UsePoint
	ADD CONSTRAINT  XPKusepoint PRIMARY KEY (usedate,mid)

ALTER TABLE Admin
	ADD (CONSTRAINT  R_7 FOREIGN KEY (pid) REFERENCES Parking(pid))

ALTER TABLE Notice
	ADD (CONSTRAINT  R_12 FOREIGN KEY (aid) REFERENCES Admin(aid))

ALTER TABLE PayPoint
	ADD (CONSTRAINT  R_2 FOREIGN KEY (mid) REFERENCES Members(mid))

ALTER TABLE Reservation
	ADD (CONSTRAINT  R_1 FOREIGN KEY (mid) REFERENCES Members(mid))

ALTER TABLE Reservation
	ADD (CONSTRAINT  R_3 FOREIGN KEY (pid) REFERENCES Parking(pid))

ALTER TABLE UsePoint
	ADD (CONSTRAINT  R_10 FOREIGN KEY (pid) REFERENCES Parking(pid))

ALTER TABLE UsePoint
	ADD (CONSTRAINT  R_11 FOREIGN KEY (mid) REFERENCES Members(mid))

ALTER SEQUENCE RID_SEQ INCREMENT BY 1;
