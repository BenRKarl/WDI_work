In terminal type psql #to enter psql

CREATE DATABASE movies_app; #to make db

\c movies_app #to connect to db

CREATE TABLE movies
(
  id serial4 PRIMARY KEY, #stores our id as primary key
  title varchar(255), #serial makes postgres give each new item a new 4 digit id
  director varchar(255),
  screenwriter varchar(255)
);

\d #shows the list of relations

SELECT * FROM movies; #shows all from table movies

