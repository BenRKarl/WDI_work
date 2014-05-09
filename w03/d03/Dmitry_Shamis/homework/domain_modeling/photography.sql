-- Notes

CREATE DATABASE photography;

\c photography

CREATE TABLE albums
(
  id serial4 PRIMARY KEY,
  event_type varchar(255)
);

CREATE TABLE photographs
(
  id serial4 PRIMARY KEY,
  photograph image,
  event_id integer
);
