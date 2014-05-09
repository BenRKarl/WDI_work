CREATE DATABASE photo_mgmt;

\c photo_mgmt

CREATE TABLE albums 
(
	id serial4 PRIMARY KEY, 
	album varchar(255)
);

CREATE TABLE photos
(
	id serial4 PRIMARY KEY,
	url varchar(255),
	album_id integer
);
