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


INSERT INTO albums (album) VALUES ('Jenna & Mark''s wedding');
INSERT INTO albums (album) VALUES ('The Tenenbaums'' spring reunion');
INSERT INTO albums (album) VALUES ('Bill & Melissa''s new crib');
INSERT INTO albums (album) VALUES ('Terry & Jake''s engagement party');


INSERT INTO photos (url) VALUES ('/');
INSERT INTO albums (album) VALUES ('The Tenenbaums'' spring reunion');
INSERT INTO albums (album) VALUES ('Bill & Melissa''s new crib');
INSERT INTO albums (album) VALUES ('Terry & Jake''s engagement party');
