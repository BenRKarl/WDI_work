
Travel Log.  Each "place" can have many "entries":

CREATE DATABASE travel_log;

CREATE TABLE places
(
  id serial4 PRIMARY KEY,
  place varchar(255)
);

CREATE TABLE entries
(
  id serial4 PRIMARY KEY,
  entry varchar(255),
  place_id integer
);



