CREATE DATABASE car_app_db;

\c car_app_db


CREATE TABLE cars (
  id serial4 PRIMARY KEY,
  make varchar(255),
  speed integer
);
