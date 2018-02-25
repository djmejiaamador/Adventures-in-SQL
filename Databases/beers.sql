-- Database: beersdb

DROP DATABASE beersdb;

CREATE DATABASE beersdb
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
    
CREATE TABLE bars (
    name character varying(30),
    addr character varying(50),
    license character varying(50)
);

CREATE TABLE beers (
    name character varying(30),
    manf character varying(50)
);

CREATE TABLE drinkers (
    name character varying(30),
    addr character varying(50),
    phone character(16)
);

CREATE TABLE frequents (
    drinker character varying(30),
    bar character varying(30)
);

CREATE TABLE likes (
    drinker character varying(30),
    beer character varying(30)
);

CREATE TABLE sells (
    bar character varying(20),
    beer character varying(30),
    price real
);


INSERT INTO beers (name, manf) 
VALUES
('Coors', 'Adolph Coors'),
('Coors Lite',	'Adolph Coors'),
('Miller',	'Miller Brewing'),
('Miller Lite',	'Miller Brewing'),
('MGD',	'Miller Brewing'),
('Bud',	'Anheuser-Busch'),
('Bud Lite',	'Anheuser-Busch'),
('Michelob',	'Anheuser-Busch'),
('Anchor Steam',	'Anchor Brewing')
;

INSERT INTO bars (name, addr, license)
VALUES
('Joe''s',	'123 Any Street',	'B7462A'),
('Sue''s',	'456 My Way',	'C5473S')
;

Insert into drinkers (name, addr, phone)
Values
('Bill Jones','180 Saint St.',	'831-459-1812')    
('Kelly Arthur','180 Alto Pl.',	'650-856-2002')    
('Fred','1234 Fifth St.','831-426-1956')    
;

INSERT INTO frequents (drinker, bar)
VALUES
('Bill Jones',	'Joe''s'),
('Bill Jones',	'Sue''s'),
('Kelly Arthur',	'Joe''s')
;

INSERT INTO likes (drinker, beer)
VALUES
('Bill Jones',	'Miller'),
('Bill Jones',	'Michelob'),
('Kelly Arthur',	'Anchor Steam'),
('Fred',	'MGD')
;

INSERT INTO sells (bar, beer, price)
VALUES
('Joe''s',	'Coors',	2.5),
('Joe''s',	'Bud',	2.5),
('Joe''s',	'Bud Lite',	2.5),
('Joe''s',	'Michelob',	2.5),
('Joe''s',	'Anchor Steam',	3.5),
('Sue''s',	'Coors',	2),
('Sue''s',	'Miller',	2)
;


CREATE DATABASE hw5db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
    

CREATE TABLE Scores(
    team character varying(30),
    opponent character varying(50),
    RunsFor real
    RunsAgainst real
);


INSERT INTO Scores (team, opponent, RunsFor, RunsAgainst)
VALUES
('Dragon', 'Tigers', 5, 5),
('Carp', 'Swallows', 4, 6),
('Bay Stars', 'Giants',2,1),
('Marines', 'Hawks',5,3),
('Ham Figures', 'Buffaloes', 1, 6),
('Lions', 'Golden Eagles', 8, 12),
('Tigers', 'Dragons',3,5),
('Swallows', 'Carp', 6,4),
('Giants', 'Bay Stars',1,2),
('Hawks', 'Marines', 3,5),
('Buffaloes', 'Ham Figures',6,1),
('Golden Eagles','Lions',12,8)
;

CREATE TABLE Scores2(
    team character varying(30),
    day character varying(30),
    opponent character varying(50),
    runs real
);


INSERT INTO Scores2 (team, day, opponent, runs)
VALUES
('Dragon', 'Sunday','Swallows', 4),
('Tigers', 'Sunday', 'Bay Stars', 9),
('Carp', 'Sunday', NULL, NULL),
('Swallows', 'Sunday', 'Dragons',7),
('Bay Stars', 'Sunday' , 'Tigers', 2),
('Giants', 'Sunday',NULL, NULL),
('Dragons', 'Monday','Carp',NULL),
('Tigers', 'Monday', NULL,NULL),
('Carp', 'Monday','Dragons', null),
('Swallows', 'Monday','Giants', 0),
('Bay Stars','Monday', NULL, NULL),
('Giants','Monday','Swallows', 5)
;


-- Q9
CREATE TABLE R(
    A real,
    B real,
    
);

INSERT INTO R (A, B)
VALUES
(1, 2),
(3, 4),
(5, 6);


CREATE TABLE S(
    B real,
    C real,
    D real
    
);

INSERT INTO S (B,C,D)
VALUES
(2, 4, 6),
(4, 6, 8),
(4, 7, 9);



-- hW 5 relations
--Q5

CREATE TABLE R(
    A real,
    B real,
    C real,
    D real,
    E real
);

INSERT INTO R (A, B, C, D, E)
VALUES
(1, 2, 3, 4 ,5),
(8,9,10, 11,12),
(7, 20, 3, 4 ,50),
(80,90,100, 111,102);

Select 
From R
Where C = D 
group by C,D


--Q8

CREATE TABLE Scores(
    team character varying(30),
    opponent character varying(50),
    RunsFor real,
    RunsAgainst real
);


INSERT INTO Scores (team, opponent, RunsFor, RunsAgainst)
VALUES
('Dragon', 'Tigers', 5, 3),
('Carp', 'Swallows', 4, 6),
('Bay Stars', 'Giants',2,1),
('Marines', 'Hawks',5,3),
('Ham Figures', 'Buffaloes', 1, 6),
('Lions', 'Golden Eagles', 8, 12),
('Tigers', 'Dragons',3,5),
('Swallows', 'Carp', 6,4),
('Giants', 'Bay Stars',1,2),
('Hawks', 'Marines', 3,5),
('Buffaloes', 'Ham Figures',6,1),
('Golden Eagles','Lions',12,8)
;

--Q9
CREATE TABLE R9(
    A real,
    B real
);


INSERT INTO R9 (A, B)
VALUES
(1, 2),
(3, 4),
(5, 6),
(2,12),
(4,12);

CREATE TABLE S9(
    C real,
    D real
    
);

INSERT INTO S9 (C,D)
VALUES
(2, 4),
(4, 6),
(2, 4),
(2, 2),
(1, 2);


--Q11
CREATE TABLE R11(
    A real,
    B real,
    C real
);

INSERT INTO R11 (a, b, c)
VALUES
(3, 6, 3),
(3, 7, 5),
(5, 5, 5),
(5, 5, 6),
(8, 6, 5);

--Q12
CREATE TABLE Scores11(
    team character varying(30),
    day character varying(30),
    opponent character varying(50),
    runs real
);


INSERT INTO Scores11 (team, day, opponent, runs)
VALUES
('Dragon', 'Sunday','Swallows', 4),
('Tigers', 'Sunday', 'Bay Stars', 9),
('Carp', 'Sunday', NULL, NULL),
('Swallows', 'Sunday', 'Dragons',7),
('Bay Stars', 'Sunday' , 'Tigers', 2),
('Giants', 'Sunday',NULL, NULL),
('Dragons', 'Monday','Carp',NULL),
('Tigers', 'Monday', NULL,NULL),
('Carp', 'Monday','Dragons', null),
('Swallows', 'Monday','Giants', 0),
('Bay Stars','Monday', NULL, NULL),
('Giants','Monday','Swallows', 5)
;


--Q13

CREATE TABLE R13(
    A real,
    B real
);

INSERT INTO R13 (a, b)
VALUES
(1,2),
(3,4),
(5,6);

CREATE TABLE S13(
    B real,
    C real,
    D real
);

INSERT INTO S13 (b,c,d)
VALUES
(4,5,1),
(6,7,2),
(8,9,3);


--Q14


CREATE TABLE R14(
    A real,
    B real
);

INSERT INTO R14 (a, b)
VALUES
(1,2),
(3,4),
(5,6);

CREATE TABLE S14(
    B real,
    C real,
    D real
);

INSERT INTO S14 (b,c,d)
VALUES
(2,4,6),
(4,6,8),
(4,7,9);

--Q15
CREATE TABLE Scores15(
    team character varying(30),
    day character varying(30),
    opponent character varying(50),
    runs real
);


INSERT INTO Scores15 (team, day, opponent, runs)
VALUES
('Dragon', 'Sunday','Swallows', 4),
('Tigers', 'Sunday', 'Bay Stars', 9),
('Carp', 'Sunday', 'Giants', 2),
('Swallows', 'Sunday', 'Dragons',7),
('Bay Stars', 'Sunday' , 'Tigers', 2),
('Giants', 'Sunday','Carp', 4),
('Dragons', 'Monday','Carp', 6),
('Tigers', 'Monday', 'Bay Stars',5),
('Carp', 'Monday','Dragons', 3),
('Swallows', 'Monday','Giants', 0),
('Bay Stars','Monday', 'Tiger', 7),
('Giants','Monday','Swallows', 5)
;

-- Q6

CREATE TABLE Arch(
    X real,
    Y real
);

INSERT INTO Arch (x,y)
VALUES
(1,2),
(1,2),
(2,3),
(3,4),
(3,4),
(4,1),
(4,1),
(4,1),
(4,2);


--Q7

CREATE TABLE R7(
    A real,
    B real
);

INSERT INTO R7 (a,b)
VALUES
(0,1),
(1,0),
(1,1);

CREATE TABLE S7(
    c real,
    d real
);

INSERT INTO S7(c,d)
VALUES
(0,1),
(1,0),
(1,1);

CREATE TABLE T7(
    e real,
    f real
);

INSERT INTO T7(e,f)
VALUES
(0,1),
(1,0),
(1,1);


