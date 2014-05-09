CREATE DATABASE photo_app

\c photo_app

CREATE TABLE user
( 
id serial4 PRIMARY KEY,
user_id integer,
name varchar(255),
email varchar(100),
password varchar(100)
recoveryemail varchar(100)
creditcardname varchar(100)
creditcardnumber integer,
address1 varchar(100),
address2 varchar(100),
address3 varchar(100)
);

CREATE TABLE event
(
id serial4 PRIMARY KEY,
eventname varchar(500),
event-id integer,
startdate varchar(75),
duedate varchar(75),
description varchar(1000),
photos integer
user_id integer
);


CREATE TABLE photographer
( 
id serial4 PRIMARY KEY,
id integer,
name varchar(300),
tagline varchar (400)
address1 varchar(100),
address2 varchar(100),
address3 varchar(100)
);

CREATE TABLE albums
(
id serial4 PRIMARY KEY,
id integer(50),
photos integer
photocountid  integer
);