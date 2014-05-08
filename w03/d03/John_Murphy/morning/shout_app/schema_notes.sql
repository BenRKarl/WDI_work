

CREATE DATABASE shout_app;

\c

CREATE TABLE users
(
  id serial4 PRIMARY KEY,
  username varchar(255)
  );

CREATE TABLE shouts
(
  id serial4 PRIMARY KEY,
  message varchar(255),
  user_id integer
);
