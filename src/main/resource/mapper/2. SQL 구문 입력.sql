 CREATE TABLE contentboard
(
    "NUM" NUMBER(3,0),
	"AUTHOR" VARCHAR2(15 BYTE),
	"TITLE" VARCHAR2(50 BYTE),
	"WRITEDAY" DATE DEFAULT sysdate,
	"READCNT" NUMBER(4,0) DEFAULT 0,
	"CONTENT" CLOB,
	"HSIZE" VARCHAR2(20 BYTE),
	"TYPE" VARCHAR2(20 BYTE),
	"MATE" VARCHAR2(50 BYTE),
	"FILENAME" VARCHAR2(900 BYTE),
	"PWD" VARCHAR2(20 BYTE),
	"UPLOADFILE" BLOB,
	 PRIMARY KEY ("NUM")
);



CREATE TABLE Members
(
	member_id varchar2(30) NOT NULL,
	member_pwd varchar2(30),
	member_name varchar2(10),
	member_phone number,
	member_email varchar2(50),
	member_joindate timestamp,
	PRIMARY KEY (member_id)
);


