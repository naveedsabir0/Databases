CREATE DATABASE BBK;
USE BBK;


CREATE TABLE CYCLIST(
	CYCLISTID		INT 		NOT NULL,
    NAME		VARCHAR(10)		NOT NULL,
	MOBILE		BIGINT 			NOT NULL,
    EMAIL		VARCHAR(30)		NOT NULL,
    PRIMARY KEY(CYCLISTID),
    UNIQUE (CYCLISTID, NAME)
);


CREATE TABLE BIKE(
	BIKEID		INT		NOT NULL,
	MODEL	VARCHAR(10)		NOT NULL,
    MAKE	VARCHAR(20)		NOT NULL,
    CYCLISTID 	INT 	NOT NULL,
    PRIMARY KEY(BIKEID),
    FOREIGN KEY(CYCLISTID) REFERENCES CYCLIST(CYCLISTID),
    UNIQUE (BIKEID, MODEL)
);

CREATE TABLE REPAIR(
	REPAIRID	INT 	NOT NULL,
    REPAIRDATE	date	NOT NULL,
    BIKEID 		INT 	NOT NULL,
    PRIMARY KEY(REPAIRID),
    FOREIGN KEY(BIKEID) REFERENCES BIKE(BIKEID),
    UNIQUE (REPAIRID)
);

CREATE TABLE FAULT(
	FAULTID		INT 	NOT NULL,
    DESCRIPTION 	VARCHAR(20)		NOT NULL,
    REPAIRID		INT 	NOT NULL,
    PRIMARY KEY(FAULTID),
    FOREIGN KEY(REPAIRID) REFERENCES REPAIR(REPAIRID),
    UNIQUE (FAULTID)
);

CREATE TABLE VOLUNTEER(
	VOLUNTEERID		INT 	NOT NULL,
    MOBILE			BIGINT 	NOT NULL,
    EMAIL		VARCHAR(40)		NOT NULL,
    NAME		VARCHAR(15)		NOT NULL,
    PRIMARY KEY(VOLUNTEERID),
    UNIQUE (VOLUNTEERID, MOBILE)
);


CREATE TABLE CLASS(
	CLASSID		VARCHAR(10) 	NOT NULL,
    TITLE		VARCHAR(25)		NOT NULL,
    DATE		DATE,
    VOLUNTEERID		INT 		NOT NULL,
    PRIMARY KEY(CLASSID),
    FOREIGN KEY (VOLUNTEERID) REFERENCES VOLUNTEER(VOLUNTEERID),
    UNIQUE (CLASSID)
);


CREATE TABLE PART(
	PARTID		INT 		NOT NULL,
    COST		VARCHAR(4)	NOT NULL,
    NAME 		VARCHAR(15)	NOT NULL,
    QUANTITY	VARCHAR(3)	NOT NULL,
    REPAIRID 	INT 	NOT NULL,
    PRIMARY KEY(PARTID),
    FOREIGN KEY(REPAIRID) REFERENCES REPAIR(REPAIRID),
    UNIQUE (PARTID)
);

CREATE TABLE FAULT_VOLUNTEER(
	FAULTID		INT 	NOT NULL,
    VOLUNTEERID		INT 	NOT NULL,
    DATE 		date		NOT NULL,
    COMMENT		VARCHAR(30)		NOT NULL,
    DURATION     INT		NOT NULL,
    PRIMARY KEY(FAULTID,VOLUNTEERID),
    FOREIGN KEY (FAULTID) REFERENCES FAULT(FAULTID),
    FOREIGN KEY(VOLUNTEERID) REFERENCES VOLUNTEER(VOLUNTEERID)
);

CREATE TABLE CYCLIST_CLASS(
	CYCLISTID	INT		NOT NULL,
    CLASSID		VARCHAR(10) 	NOT NULL,
    PRIMARY KEY(CYCLISTID, CLASSID),
    FOREIGN KEY (CYCLISTID) REFERENCES CYCLIST(CYCLISTID),
    FOREIGN KEY (CLASSID) REFERENCES CLASS(CLASSID)
);