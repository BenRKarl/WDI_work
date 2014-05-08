CREATE DATABASE travel_log;

\c travel_log

CREATE TABLE places 
(
	id serial4 PRIMARY KEY, 
	place varchar(255)
);

CREATE TABLE journal 
(
	id serial4 PRIMARY KEY,
	entry varchar(1000),
	place_id integer
);
