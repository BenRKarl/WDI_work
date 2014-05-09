CREATE DATABASE zoo_db;

\c zoo_db



CREATE TABLE zoos
(
  id serial4 PRIMARY KEY,
  zooname varchar(255)
);


CREATE TABLE animals
(
  id serial4 PRIMARY KEY,
  zoo_id integer,
  zoo_animals varchar(255)
);

INSERT INTO animals (zoo_id, zoo_animals)
VALUES (1, 'lions, bears, monkeys');
