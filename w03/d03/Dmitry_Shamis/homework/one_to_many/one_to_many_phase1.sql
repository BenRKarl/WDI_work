-- Notes for a favorite drinks app by user

CREATE DATABASE fav_drinks_app;

\c fav_drinks_app

CREATE TABLE users
(
  id serial4 PRIMARY KEY,
  username varchar(255)
);

CREATE TABLE drinks
(
  id serial4 PRIMARY KEY,
  drink varchar(255),
  user_id integer
);
