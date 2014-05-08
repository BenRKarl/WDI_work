-- Notes for how to set up the database

CREATE DATABASE wdi_meows_app;

\c wdi_meows_app;

CREATE TABLE users
(
  id serial4 PRIMARY KEY,
  username varchar(255)
);

CREATE TABLE meows
(
  id serial4 PRIMARY KEY,
  message varchar(255),
  user_id integer
);
