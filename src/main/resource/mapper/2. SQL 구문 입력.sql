
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


