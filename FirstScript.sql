CREATE DATABASE trialBase;

CREATE TABLE Person
(
Pid int,
PRIMARY KEY(Pid),
FirstN varchar(45),
LastN varchar(45),
Age int,
Sex char
);

CREATE TABLE Address
(
Aid int,
PRIMARY KEY(Aid),
Zip int,
Address varchar(45),
Pid int,
FOREIGN KEY (Pid) REFERENCES Person(Pid)
);

INSERT INTO Person (Pid, FirstN, LastN, Age, Sex)
VALUES(1, 'Eric', 'Masinter', 16, 'M');
INSERT INTO Person (Pid, FirstN, LastN, Age, Sex)
VALUES(2, 'Sarah', 'Masinter', 16, 'F');
INSERT INTO Person (Pid, FirstN, LastN, Age, Sex)
VALUES(3, 'James', 'Camire', 30, 'M');



INSERT INTO Address (Aid, ZIP, Address, Pid)
VALUES(1, 80007, '15631 W 79 Pl', 1);
INSERT INTO Address (Aid, ZIP, Address, Pid)
VALUES(2, 80478, '255 BlazingStar Trail', 1);
INSERT INTO Address (Aid, ZIP, Address, Pid)
VALUES(3, 80007, '15631 W 79 Pl', 2);