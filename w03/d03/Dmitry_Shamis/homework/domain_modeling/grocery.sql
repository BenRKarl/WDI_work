-- Notes

CREATE DATABASE grocery;

\c grocery

CREATE TABLE libations
(
  id serial4 PRIMARY KEY,
  libations_type varchar(255)
);

CREATE TABLE comestibles
(
  id serial4 PRIMARY KEY,
  comestibles_type varchar(255)
);

CREATE TABLE food_types
(
  id serial4 PRIMARY KEY,
  category varchar(255),
  food_type_id integer
);


Is a drink sold under comestibles? Is booze not a drink?

Is ice cream dairy or a snack?

