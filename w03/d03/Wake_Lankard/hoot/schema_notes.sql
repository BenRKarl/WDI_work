CREATE DATABASE wdi_hoots_app;
\c wdi_hoots_app

CREATE TABLE users
(
  id serial4  PRIMARY KEY,
  username varchar(255)
);

CREATE TABLE hoots
(
  id serial4 PRIMARY KEY,
  message varchar(255)),
  user_id integer
  );