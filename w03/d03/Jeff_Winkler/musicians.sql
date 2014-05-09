
songs to musicians

CREATE DATABASE music;

\c music

CREATE TABLE musicians
(
  id serial4 PRIMARY KEY,
  name varchar(255)
);

CREATE TABLE songs
(
  id serial4 PRIMARY KEY,
  name varchar(255),
  musician_id integer
);

