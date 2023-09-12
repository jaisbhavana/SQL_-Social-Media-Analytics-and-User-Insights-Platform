######################              WEEK SECOND MANDATORY PROJECT             #########################

create database moviedb;
use moviedb; 
/*CREATE TABLE `actors` (
  `act_id` varchar(50) NOT NULL,
  `act_fname` varchar(50) NOT NULL,
  `act_lname` varchar(50) NOT NULL,
  `act_gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `actors`
  ADD PRIMARY KEY (`act_id`);
*/


create table actors(
ACT_ID VARCHAR(50) NOT NULL,
ACT_FNAME VARCHAR(50) NOT NULL,
ACT_LNAME VARCHAR(50) NOT NULL,
ACT_GENDER VARCHAR(50) NOT NULL,
primary key (ACT_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO ACTORS VALUES('101', 'James', 'Stewart', 'M');
INSERT INTO ACTORS VALUES('102', 'Deborah', 'Kerr', 'F');
INSERT INTO ACTORS VALUES('103', 'Peter', 'OToole', 'M');
INSERT INTO ACTORS VALUES('104', 'Robert', 'De Niro', 'M');
INSERT INTO ACTORS VALUES('105', 'F. Murray', 'Abraham', 'M');
INSERT INTO ACTORS VALUES('106', 'Harrison', 'Ford', 'M');
INSERT INTO ACTORS VALUES('107', 'Nicole', 'Kidman', 'F');
INSERT INTO ACTORS VALUES('108', 'Stephen', 'Baldwin', 'M');
INSERT INTO ACTORS VALUES('109', 'Jack', 'Nicholson', 'M');
INSERT INTO ACTORS VALUES('110', 'Mark', 'Wahlberg', 'M');
INSERT INTO ACTORS VALUES('111', 'Woody', 'Allen', 'M');
INSERT INTO ACTORS VALUES('112', 'Claire', 'Danes', 'F');
INSERT INTO ACTORS VALUES('113', 'Tim', 'Robbins', 'M');
INSERT INTO ACTORS VALUES('114', 'Kevin', 'Spacey', 'M');
INSERT INTO ACTORS VALUES('115', 'Kate', 'Winslet', 'F');
INSERT INTO ACTORS VALUES('116', 'Robin', 'Williams', 'M');
INSERT INTO ACTORS VALUES('117', 'Jon', 'Voight', 'M');
INSERT INTO ACTORS VALUES('118', 'Ewan', 'McGregor', 'M');
INSERT INTO ACTORS VALUES('119', 'Christian', 'Bale', 'M');
INSERT INTO ACTORS VALUES('120', 'Maggie', 'Gyllenhaal', 'F');
INSERT INTO ACTORS VALUES('121', 'Dev', 'Patel', 'M');
INSERT INTO ACTORS VALUES('122', 'Sigourney', 'Weaver', 'F');
INSERT INTO ACTORS VALUES('123', 'David', 'Aston', 'M');
INSERT INTO ACTORS VALUES('124', 'Ali', 'Astin', 'F');
SELECT * FROM ACTORS;


# CREATING SECOND TABLE OF THE WEEK SECOND ASSIGNMENT.
/* CREATE TABLE `director` (
  `dir_id` int(20) NOT NULL,
  `dir_fname` varchar(20) NOT NULL,
  `dir_lname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `director`
  ADD PRIMARY KEY (`dir_id`);
  
  */
USE MOVIEDB;
CREATE TABLE DIRECTOR(
DIR_ID INT(20) NOT NULL PRIMARY KEY,
DIR_FNAME VARCHAR(20) NOT NULL,
DIR_LNAME VARCHAR(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO DIRECTOR VALUES(201, 'Alfred', 'Hitchcock');
INSERT INTO DIRECTOR VALUES(202, 'Jack', 'Clayton');
INSERT INTO DIRECTOR VALUES(203, 'David', 'Lean');
INSERT INTO DIRECTOR VALUES(204, 'Michael', 'Cimino');
INSERT INTO DIRECTOR VALUES(205, 'Milos', 'Forman');
INSERT INTO DIRECTOR VALUES(206, 'Ridley', 'Scott');
INSERT INTO DIRECTOR VALUES(207, 'Stanley', 'Kubrick');
INSERT INTO DIRECTOR VALUES(208, 'Bryan', 'Singer');
INSERT INTO DIRECTOR VALUES(209, 'Roman', 'Polanski');
INSERT INTO DIRECTOR VALUES(210, 'Paul', 'Thomas Anderson');
INSERT INTO DIRECTOR VALUES(211, 'Woody', 'Allen');
INSERT INTO DIRECTOR VALUES(212, 'Hayao', 'Miyazaki');
INSERT INTO DIRECTOR VALUES(213, 'Frank', 'Darabont');
INSERT INTO DIRECTOR VALUES(214, 'Sam', 'Mendes');
INSERT INTO DIRECTOR VALUES(215, 'James', 'Cameron');
INSERT INTO DIRECTOR VALUES(216, 'Gus', 'Van Sant');
INSERT INTO DIRECTOR VALUES(217, 'John', 'Boorman');
INSERT INTO DIRECTOR VALUES(218, 'Danny', 'Boyle');
INSERT INTO DIRECTOR VALUES(219, 'Christopher', 'Nolan');
INSERT INTO DIRECTOR VALUES(220, 'Richard', 'Kelly');
INSERT INTO DIRECTOR VALUES(221, 'Kevin', 'Spacey');
INSERT INTO DIRECTOR VALUES(222, 'Andrei', 'Tarkovsky');
INSERT INTO DIRECTOR VALUES(223, 'Peter', 'Jackson');
SELECT *  from director;


#CREATING TABLE GENERS FOR THIRD.
/* CREATE TABLE `genres` (
  `gen_id` int(30) NOT NULL,
  `gen_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `genres`
  ADD PRIMARY KEY (`gen_id`);
*/
USE MOVIEDB;
CREATE TABLE GENERS
(GEN_ID INT(30)  NOT NULL PRIMARY KEY,
GEN_TITLE VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO GENERS VALUES(1001, 'Action');
INSERT INTO GENERS VALUES(1002, 'Adventure');
INSERT INTO GENERS VALUES(1003, 'Animation');
INSERT INTO GENERS VALUES(1004, 'Biography');
INSERT INTO GENERS VALUES(1005, 'Comedy');
INSERT INTO GENERS VALUES(1006, 'Crime');
INSERT INTO GENERS VALUES(1007, 'Drama');
INSERT INTO GENERS VALUES(1008, 'Horror');
INSERT INTO GENERS VALUES(1009, 'Music');
INSERT INTO GENERS VALUES(1010, 'Mystery');
INSERT INTO GENERS VALUES(1011, 'Romance');
INSERT INTO GENERS VALUES(1012, 'Thriller');
INSERT INTO GENERS VALUES(1013, 'War');

SELECT * FROM GENERS;

 

#CREATING FOURTH TABLE CALLED MOVIES.
/*CREATE TABLE `movie` (
  `mov_id` int(11) NOT NULL,
  `mov_title` varchar(50) NOT NULL,
  `mov_year` int(11) NOT NULL,
  `mov_time` int(11) NOT NULL,
  `mov_lang` varchar(20) NOT NULL,
  `mov_dt_rel` date NOT NULL,
  `mov_rel_country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `movie`
  ADD PRIMARY KEY (`mov_id`);
*/
USE MOVIEDB;
CREATE TABLE MOVIES
(
MOV_ID INT(11) NOT NULL PRIMARY KEY,
MOV_TITLE varchar(50) NOT NULL,
MOV_YEAR INT(11) NOT NULL,
MOV_TIME INT(11) NOT NULL,
MOV_LANG VARCHAR(20) NOT NULL,
MOV_DT_REL DATE NOT NULL,
MOV_REL_COUNTRY VARCHAR(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SELECT * FROM MOVIES;
INSERT INTO MOVIES VALUES(901, 'Vertigo', 1958, 128, 'English', '1958-08-24', 'UK');
INSERT INTO MOVIES VALUES(902, 'The Innocents', 1961, 100, 'English', '1962-02-19', 'SW');
INSERT INTO MOVIES VALUES(903, 'Lawrence of Arabia', 1962, 216, 'English', '1962-12-11', 'UK');
INSERT INTO MOVIES VALUES(904, 'The Deer Hunter', 1978, 183, 'English', '1979-03-08', 'UK');
INSERT INTO MOVIES VALUES(905, 'Amadeus', 1984, 160, 'English', '1985-01-07', 'UK');
INSERT INTO MOVIES VALUES(906, 'Blade Runner', 1982, 117, 'English', '1982-09-09', 'UK');
INSERT INTO MOVIES VALUES(907, 'Eyes Wide Shut', 1999, 159, 'English', '0000-00-00', 'UK');
INSERT INTO MOVIES VALUES(908, 'The Usual Suspects', 1995, 106, 'English', '1995-08-25', 'UK');
INSERT INTO MOVIES VALUES(909, 'Chinatown', 1974, 130, 'English', '1974-08-09', 'UK');
INSERT INTO MOVIES VALUES(910, 'Boogie Nights', 1997, 155, 'English', '1998-02-16', 'UK');
INSERT INTO MOVIES VALUES(911, 'Annie Hall', 1977, 93, 'English', '1977-04-20', 'USA');
INSERT INTO MOVIES VALUES(912, 'Princess Mononoke', 1997, 134, 'Japanese', '2001-10-19', 'UK');
INSERT INTO MOVIES VALUES(913, 'The Shawshank Redemption', 1994, 142, 'English', '1995-02-17', 'UK');
INSERT INTO MOVIES VALUES(914, 'American Beauty', 1999, 122, 'English', '0000-00-00', 'UK');
INSERT INTO MOVIES VALUES(915, 'Titanic', 1997, 194, 'English', '1998-01-23', 'UK');
INSERT INTO MOVIES VALUES(916, 'Good Will Hunting', 1997, 126, 'English', '1998-06-03', 'UK');
INSERT INTO MOVIES VALUES(917, 'Deliverance', 1972, 109, 'English', '1982-10-05', 'UK');
INSERT INTO MOVIES VALUES(918, 'Trainspotting', 1996, 94, 'English', '1996-02-23', 'UK');
INSERT INTO MOVIES VALUES(919, 'The Prestige', 2006, 130, 'English', '2006-11-10', 'UK');
INSERT INTO MOVIES VALUES(920, 'Donnie Darko', 2001, 113, 'English', '0000-00-00', 'UK');
INSERT INTO MOVIES VALUES(921, 'Slumdog Millionaire', 2008, 120, 'English', '2009-01-09', 'UK');
INSERT INTO MOVIES VALUES(922, 'Aliens', 1986, 137, 'English', '1986-08-29', 'UK');
INSERT INTO MOVIES VALUES(923, 'Beyond the Sea', 2004, 118, 'English', '2004-11-26', 'UK');
INSERT INTO MOVIES VALUES(924, 'Avatar', 2009, 162, 'English', '2009-12-17', 'UK');
INSERT INTO MOVIES VALUES(925, 'Braveheart', 1995, 178, 'English', '1995-09-08', 'UK');
INSERT INTO MOVIES VALUES(926, 'Seven Samurai', 1954, 207, 'Japanese', '1954-04-26', 'JP');
INSERT INTO MOVIES VALUES(927, 'Spirited Away', 2001, 125, 'Japanese', '2003-09-12', 'UK');
INSERT INTO MOVIES VALUES(928, 'Back to the Future', 1985, 116, 'English', '1985-12-04', 'UK');



# CREATING TABEL CALLED MOVIES_CAST.
/* CREATE TABLE `movie_cast` (
  `act_id` int(20) NOT NULL,
  `mov_id` int(20) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `movie_cast`
  ADD KEY `act_id` (`act_id`,`mov_id`);
*/
USE MOVIEDB;
CREATE TABLE MOVIE_CAST
(ACT_ID INT(20) NOT NULL,
MOV_ID INT(20) NOT NULL,
ROLE VARCHAR(30) NOT NULL,
primary key(ACT_ID, MOV_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO MOVIE_CAST VALUES(101, 901, 'John Scottie Ferguson');
INSERT INTO MOVIE_CAST VALUES(102, 902, 'Miss Giddens');
INSERT INTO MOVIE_CAST VALUES(103, 903, 'T.E. Lawrence');
INSERT INTO MOVIE_CAST VALUES(104, 904, 'Michael');
INSERT INTO MOVIE_CAST VALUES(105, 905, 'Antonio Salieri');
INSERT INTO MOVIE_CAST VALUES(106, 906, 'Rick Deckard');
INSERT INTO MOVIE_CAST VALUES(107, 907, 'Alice Harford');
INSERT INTO MOVIE_CAST VALUES(108, 908, 'McManus');
INSERT INTO MOVIE_CAST VALUES(110, 910, 'Eddie Adams');
INSERT INTO MOVIE_CAST VALUES(111, 911, 'Alvy Singer');
INSERT INTO MOVIE_CAST VALUES(112, 912, 'San');
INSERT INTO MOVIE_CAST VALUES(113, 913, 'Andy Dufresne');
INSERT INTO MOVIE_CAST VALUES(114, 914, 'Lester Burnham');
INSERT INTO MOVIE_CAST VALUES(115, 915, 'Rose DeWitt Bukater');
INSERT INTO MOVIE_CAST VALUES(116, 916, 'Sean Maguire');
INSERT INTO MOVIE_CAST VALUES(117, 917, 'Ed');
INSERT INTO MOVIE_CAST VALUES(118, 918, 'Renton');
INSERT INTO MOVIE_CAST VALUES(120, 920, 'Elizabeth Darko');
INSERT INTO MOVIE_CAST VALUES(121, 921, 'Older Jamal');
INSERT INTO MOVIE_CAST VALUES(122, 922, 'Ripley');
INSERT INTO MOVIE_CAST VALUES(114, 923, 'Bobby Darin');
INSERT INTO MOVIE_CAST VALUES(109, 909, 'J.J. Gittes');
INSERT INTO MOVIE_CAST VALUES(119, 919, 'Alfred Borden');

SELECT * FROM MOVIE_CAST;

#   CREATING TABLE CALLED MOVIE_DIRECTION.
/* CREATE TABLE `movie_direction` (
  `dir_id` int(11) NOT NULL,
  `mov_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `movie_direction`
  ADD KEY `dir_id` (`dir_id`,`mov_id`);
  
  --
-- Constraints for table `movie_direction`
--
ALTER TABLE `movie_direction`
  ADD CONSTRAINT `movie_direction_ibfk_1` FOREIGN KEY (`mov_id`) REFERENCES `movie` (`mov_id`),
  ADD CONSTRAINT `movie_direction_ibfk_2` FOREIGN KEY (`dir_id`) REFERENCES `director` (`dir_id`);

*/
USE MOVIEDB;
CREATE TABLE MOVIE_DIRECTION
(DIR_ID INT(11) NOT NULL,
MOV_ID INT(11) NOT NULL,
primary key(DIR_ID,MOV_ID),
CONSTRAINT MOVIE_DIRECTION_ibfk_1 FOREIGN KEY (MOV_ID) REFERENCES MOVIES (MOV_ID),
CONSTRAINT MOVIE_DIRECTION_ibfk_2 FOREIGN KEY (DIR_ID) REFERENCES DIERCTOR (DIR_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO MOVIE_DIRECTION VALUES (201, 901);
INSERT INTO MOVIE_DIRECTION VALUES(202, 902);
INSERT INTO MOVIE_DIRECTION VALUES(203, 903);
INSERT INTO MOVIE_DIRECTION VALUES(204, 904);
INSERT INTO MOVIE_DIRECTION VALUES(205, 905);
INSERT INTO MOVIE_DIRECTION VALUES(206, 906);
INSERT INTO MOVIE_DIRECTION VALUES(207, 907);
INSERT INTO MOVIE_DIRECTION VALUES(208, 908);
INSERT INTO MOVIE_DIRECTION VALUES(209, 909);
INSERT INTO MOVIE_DIRECTION VALUES(210, 910);
INSERT INTO MOVIE_DIRECTION VALUES(211, 911);
INSERT INTO MOVIE_DIRECTION VALUES(212, 912);
INSERT INTO MOVIE_DIRECTION VALUES(213, 913);
INSERT INTO MOVIE_DIRECTION VALUES(214, 914);
INSERT INTO MOVIE_DIRECTION VALUES(215, 915);
INSERT INTO MOVIE_DIRECTION VALUES(215, 922);
INSERT INTO MOVIE_DIRECTION VALUES(216, 916);
INSERT INTO MOVIE_DIRECTION VALUES(217, 917);
INSERT INTO MOVIE_DIRECTION VALUES(218, 918);
INSERT INTO MOVIE_DIRECTION VALUES(218, 921);
INSERT INTO MOVIE_DIRECTION VALUES(219, 919);
INSERT INTO MOVIE_DIRECTION VALUES(220, 920);
INSERT INTO MOVIE_DIRECTION VALUES(221, 923);

SELECT * FROM MOVIE_DIRECTION;


# CREATING ANOTHER TABLE CALLED MOVIE_GENERS
/*CREATE TABLE `movie_genres` (
  `mov_id` int(11) NOT NULL,
  `gen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `movie_genres`
  ADD KEY `mov_id` (`mov_id`);

Constraints for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD CONSTRAINT `movie_genres_ibfk_1` FOREIGN KEY (`mov_id`) REFERENCES `movie` (`mov_id`);
COMMIT;
 */
 
 
USE MOVIEDB;
CREATE TABLE MOVIE_GENERS
(MOV_ID INT(11) NOT NULL PRIMARY KEY,
GEN_ID INT(11) NOT NULL,
CONSTRAINT MOVIE_GENERS_ibfk_1 FOREIGN KEY (MOV_ID) REFERENCES MOVIES(MOV_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO MOVIE_GENERS VALUES(901, 1010);
INSERT INTO MOVIE_GENERS VALUES(902, 1008);
INSERT INTO MOVIE_GENERS VALUES(903, 1002);
INSERT INTO MOVIE_GENERS VALUES(904, 1013);
INSERT INTO MOVIE_GENERS VALUES(906, 1012);
INSERT INTO MOVIE_GENERS VALUES(907, 1010);
INSERT INTO MOVIE_GENERS VALUES(908, 1006);
INSERT INTO MOVIE_GENERS VALUES(911, 1005);
INSERT INTO MOVIE_GENERS VALUES(912, 1003);
INSERT INTO MOVIE_GENERS VALUES(913, 1006);
INSERT INTO MOVIE_GENERS VALUES(914, 1011);
INSERT INTO MOVIE_GENERS VALUES(917, 1002);
INSERT INTO MOVIE_GENERS VALUES(918, 1007);
INSERT INTO MOVIE_GENERS VALUES(921, 1007);
INSERT INTO MOVIE_GENERS VALUES(922, 1001);
INSERT INTO MOVIE_GENERS VALUES(923, 1009);
INSERT INTO MOVIE_GENERS VALUES(926, 1007);
INSERT INTO MOVIE_GENERS VALUES(927, 1010);
INSERT INTO MOVIE_GENERS VALUES(928, 1007);

SELECT * FROM MOVIE_GENERS;

#CREATING TABLE CALLED RATING.
/* CREATE TABLE `rating` (
  `mov_id` int(20) NOT NULL,
  `rev_id` int(20) NOT NULL,
  `rev_stars` decimal(20,0) NOT NULL,
  `num_o_ratings` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `rating`
  ADD KEY `mov_id` (`mov_id`,`rev_id`);
*/
USE MOVIEDB;
CREATE TABLE RATING
(MOV_ID INT(20) NOT NULL,
REV_ID INT(20) NOT NULL,
REV_STARS DECIMAL(20,0) NOT NULL,
NUM_O_RATINGS INT(20) NOT NULL,
primary key(MOV_ID, REV_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO RATING VALUES(901, 9001, '8', 263575);
INSERT INTO RATING VALUES(902, 9002, '8', 20207);
INSERT INTO RATING VALUES(903, 9003, '8', 202778);
INSERT INTO RATING VALUES(906, 9005, '8', 484746);
INSERT INTO RATING VALUES(924, 9006, '7', 0);
INSERT INTO RATING VALUES(908, 9007, '9', 779489);
INSERT INTO RATING VALUES(909, 9008, '0', 227235);
INSERT INTO RATING VALUES(910, 9009, '3', 195961);
INSERT INTO RATING VALUES(911, 9010, '8', 203875);
INSERT INTO RATING VALUES(912, 9011, '8', 0);
INSERT INTO RATING VALUES(914, 9013, '7', 862618);
INSERT INTO RATING VALUES(915, 9001, '8', 830095);
INSERT INTO RATING VALUES(916, 9014, '4', 642132);
INSERT INTO RATING VALUES(925, 9015, '8', 81328);
INSERT INTO RATING VALUES(918, 9016, '0', 580301);
INSERT INTO RATING VALUES(920, 9017, '8', 609451);
INSERT INTO RATING VALUES(921, 9018, '8', 667758);
INSERT INTO RATING VALUES(922, 9019, '8', 511613);
INSERT INTO RATING VALUES(923, 9020, '7', 13091);

SELECT * FROM RATING;

# CREATING TABLE CALLED REVIEW
/*CREATE TABLE `reviewer` (
  `rev_id` int(20) NOT NULL,
  `rev_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 


ALTER TABLE `reviewer`
  ADD PRIMARY KEY (`rev_id`);
*/
USE MOVIEDB;
CREATE TABLE REVIEW
(REV_ID INT(20) NOT NULL primary key,
REV_NAME VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO REVIEW VALUES (9001, 'Righty Sock');
INSERT INTO REVIEW VALUES(9002, 'Jack Malvern');
INSERT INTO REVIEW VALUES(9003, 'Flagrant Baronessa');
INSERT INTO REVIEW VALUES(9004, 'Alec Shaw');
INSERT INTO REVIEW VALUES(9005, '');
INSERT INTO REVIEW VALUES(9006, 'Victor Woeltjen');
INSERT INTO REVIEW VALUES(9007, 'Simon Wright');
INSERT INTO REVIEW VALUES(9008, 'Neal Wruck');
INSERT INTO REVIEW VALUES(9009, 'Paul Monks');
INSERT INTO REVIEW VALUES(9010, 'Mike Salvati');
INSERT INTO REVIEW VALUES(9011, '');
INSERT INTO REVIEW VALUES(9012, 'Wesley S. Walker');
INSERT INTO REVIEW VALUES(9013, 'Sasha Goldshtein');
INSERT INTO REVIEW VALUES(9014, 'Josh Cates');
INSERT INTO REVIEW VALUES(9015, 'Krug Stillo');
INSERT INTO REVIEW VALUES(9016, 'Scott LeBrun');
INSERT INTO REVIEW VALUES(9017, 'Hannah Steele');
INSERT INTO REVIEW VALUES(9018, 'Vincent Cadena');
INSERT INTO REVIEW VALUES(9019, 'Brandt Sponseller');
INSERT INTO REVIEW VALUES(9020, 'Richard Adams');


#######################################     PROJECT ANSWERS   ##############################################


#1  Write a sql query to find the actors who were cast in the movie 'Annie Hall'. Return actor first_name, last_name and role.

use moviedb;
select * from actors;
select * from movie_cast;
select * from movies;

SELECT act_fname,act_lname,role
  FROM actors 
	  JOIN movie_cast ON actors.act_id=movie_cast.act_id
		JOIN movies ON movie_cast.mov_id=movies.mov_id 
		  AND movies.mov_title='Annie Hall'
		
#2  From the following tables , write a sql query to find the director who directed a movie that cast a role "Eyes wide shut'. 
#  Return director first_name , last_name, and movie titled. 
use  moviedb;
select * from director;
select * from movie_cast;
select * from movie_direction;
select * from movies;

SELECT dir_fname, dir_lname
FROM  director
WHERE dir_id in (
SELECT dir_id 
FROM movie_direction
WHERE mov_id in(
SELECT mov_id 
FROM movie_cast WHERE role = ANY (
SELECT role 
FROM movie_cast 
WHERE mov_id IN (
SELECT  mov_id 
FROM movies 
WHERE mov_title='Eyes Wide Shut'))));


#3  Write a sql query to find the who directed a movie that casted a role as 'Sian Moguire'.  Return director first_name , last_name, and movie titled. and realse_year .

use moviedb;
select * from director;
select * from movie_direction;
select * from movies;
select * from movie_cast;

SELECT dir_fname, dir_lname, mov_title
FROM  director, movie_direction, movies, movie_cast
WHERE director.dir_id=movie_direction.dir_id
AND movie_direction.mov_id=movies.mov_id
AND movies.mov_id=movie_cast.mov_id
AND movie_cast.role='Sean Maguire';


#4  Write a sql query to find the  who had not acted in any movie between 1990 and 2000 .Return fist, last, movietitle, releaseyear

use moviedb;
select * from actors;
select * from movies;
select * from movie_cast;
 
 

 SELECT a.act_fname, a.act_lname, c.mov_title, c.mov_year
FROM actors a, movie_cast b, movies c
WHERE a.act_id=b.act_id
AND b.mov_id=c.mov_id
AND c.mov_year NOT BETWEEN 1990 and 2000;

#5 write a sql query to find the directors with the no of genres of movie. Group the result set the director first_name,
 ##lastname, director of geres of movies.

use moviedb;
select *  from director;
select * from movie_direction;
select * from movie_geners;
select * from geners;

SELECT dir_fname,dir_lname, gen_title,count(gen_title)
FROM director
NATURAL JOIN movie_direction
NATURAL JOIN movie_genres
NATURAL JOIN genres
GROUP BY dir_fname, dir_lname,gen_title
ORDER BY dir_fname,dir_lname,gen_title;


