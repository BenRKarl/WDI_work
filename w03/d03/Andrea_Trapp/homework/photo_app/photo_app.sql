-- one client can have many albums (events), but each album belongs to a 
-- specific client (e.g. family shooting, wedding shooting) and an album
-- can have many pictures while each picture belongs to a specific album
-- client - album is a one to many relationship
-- album - photo is a one to many relationship

CREATE DATABASE photo_app_db;

\c photo_app_db

CREATE TABLE clients
(
  id serial4 PRIMARY KEY,
  name varchar(255)  
);

CREATE TABLE albums
(
  id serial4 PRIMARY KEY,
  event varchar(255),   
  client_id integer
);

CREATE TABLE photos
(
  id serial4 PRIMARY KEY,
  title varchar(255),  
  album_id integer 
);

