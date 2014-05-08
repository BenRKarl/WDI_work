CREATE DATABASE

CREATE TABLE places
(
id serial4 PRIMARY KEY,
city varchar(255)
);

CREATE TABLE logs
(
id serial4 PRIMARY KEY,
entry varchar(1000),
city_id integer
);