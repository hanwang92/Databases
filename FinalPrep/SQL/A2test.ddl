DROP TABLE hotel CASCADE;
DROP TABLE traveler CASCADE;
DROP TABLE booking CASCADE;
DROP TABLE staff CASCADE;


CREATE TABLE hotel (
	hotelname	VARCHAR(20)	PRIMARY KEY,
    	hotelcity 	VARCHAR(20) 	NOT NULL,
    	chain 		VARCHAR(20) 	NOT NULL,
    	country		VARCHAR(20) 	NOT NULL,
    	class 		VARCHAR(20) 	NOT NULL,
    	minrate 	INTEGER 	NOT NULL,
    	maxrate 	INTEGER 	NOT NULL);

INSERT INTO hotel VALUES('qqq','www','eee', 'rrr', 'a', 1, 10);
INSERT INTO hotel VALUES('aaa','sss','eee', 'fff', 'b', 5, 8);
INSERT INTO hotel VALUES('zzz','xxx','ccc', 'vvv', 'a', 3, 30);
INSERT INTO hotel VALUES('ttt','yyy','ccc', 'iii', 'c', 4, 51);
INSERT INTO hotel VALUES('ggg','hhh','eee', 'kkk', 'b', 45, 70);
INSERT INTO hotel VALUES('vvv','bbb','ccc', 'mmm', 'a', 22, 33);
    

CREATE TABLE traveler (
    travelerid	INTEGER 	PRIMARY KEY,
    name 	VARCHAR(20) 	NOT NULL,
    hometown 	VARCHAR(20) 	NOT NULL);

INSERT INTO traveler VALUES(0,'Apple','Irene');
INSERT INTO traveler VALUES(1,'Banana','Irene');
INSERT INTO traveler VALUES(2,'Citron','Michael');
INSERT INTO traveler VALUES(3,'Durian','Andrwe');
INSERT INTO traveler VALUES(4,'Elephant Papaya','Andrwe');
INSERT INTO traveler VALUES(5,'Fig','Annie');
	

CREATE TABLE booking (
    bookingid 	INTEGER 	PRIMARY KEY,
    travelerid 	INTEGER 	REFERENCES traveler(travelerid) ON DELETE RESTRICT,
    hotelname 	VARCHAR(20) 	REFERENCES hotel(hotelname) ON DELETE RESTRICT,
    hotelcity 	VARCHAR(20) 	NOT NULL,
    arrdate 	VARCHAR(20) 	NOT NULL,
    depdate 	INTEGER 	NOT NULL,
    rate 	INTEGER 	NOT NULL);

INSERT INTO booking VALUES(0, 0, 'aaa', 'sss', '2012-09-34', 16, 5);
INSERT INTO booking VALUES(1, 3, 'zzz', 'xxx', '2012-08-34', 52, 28);
INSERT INTO booking VALUES(2, 2, 'ttt', 'yyy', '2012-08-33', 76, 40);
INSERT INTO booking VALUES(3, 4, 'vvv', 'bbb', '2012-08-35', 37, 22);
INSERT INTO booking VALUES(4, 1, 'ttt', 'yyy', '2012-08-56', 70, 44);
INSERT INTO booking VALUES(5, 1, 'ggg', 'hhh', '2012-44-21', 41, 66);
INSERT INTO booking VALUES(6, 1, 'qqq', 'www', '2012-08-33', 49, 4);
INSERT INTO booking VALUES(7, 5, 'qqq', 'www', '2016-65-12', 13, 3);
INSERT INTO booking VALUES(8, 0, 'aaa', 'sss', '2012-10-34', 10, 8);
INSERT INTO booking VALUES(9, 2, 'vvv', 'bbb', '2012-08-23', 81, 25);
INSERT INTO booking VALUES(10, 4, 'vvv', 'bbb', '2012-08-12', 10, 33);




CREATE TABLE staff (
    employeeid	INTEGER 	PRIMARY KEY,
    firstname 	VARCHAR(20) 	NOT NULL,
    lastname	VARCHAR(20) 	NOT NULL,
    managerid 	INTEGER 	NOT NULL,
    salary 	INTEGER 	NOT NULL);

INSERT INTO staff VALUES(1, 'Banana',	'Irene',	3, 30);
INSERT INTO staff VALUES(2, 'Citron', 	'Michael',	3, 50);
INSERT INTO staff VALUES(3, 'Durian', 	'Andrwe',	3, 90);
INSERT INTO staff VALUES(4, 'Elephant', 	'Kandrwe',	3, 100);
INSERT INTO staff VALUES(5, 'Fig', 		'Annie',	2, 70);
INSERT INTO staff VALUES(6, 'Gig',		'Bannie',	2, 30);






