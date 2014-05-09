CREATE DATABASE croak_app;
\c croak_app

CREATE TABLE users
(
  id serial4 PRIMARY KEY,
  username varchar(255)
);

CREATE TABLE croaks
(
  id serial4 PRIMARY KEY,
  message varchar(255),
  user_id integer
);

