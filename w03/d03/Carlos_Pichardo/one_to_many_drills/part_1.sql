
CREATE DATABASE train_app;
\c train_app;


CREATE TABLE trains
(
  id serial4 PRIMARY KEY,
  route text[],
  seats integer
);


CREATE TABLE passengers
(
  id serial4 PRIMARY KEY,
  start varchar(255),
  destination varchar(255),
  train_id integer
);