-- Notes

CREATE DATABASE travel_log;

\c travel_log

CREATE TABLE users
(
  id serial4 PRIMARY KEY,
  username varchar(255)
);

CREATE TABLE grumbles
(
  id serial4 PRIMARY KEY,
  location varchar(255),
  entry varchar(1500),
  user_id integer
);
