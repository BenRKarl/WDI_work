-- Notes

CREATE DATABASE wdi_grumblr_app;

\c wdi_grumblr_app

CREATE TABLE users
(
  id serial4 PRIMARY KEY,
  username varchar(255)
);

CREATE TABLE grumbles
(
  id serial4 PRIMARY KEY,
  message varchar(255),
  user_id integer
);
