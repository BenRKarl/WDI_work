CREATE DATABASE inventory;

\c inventory;

CREATE TABLE cuisines
(
  id serial4 PRIMARY KEY,
  cuisine_type varchar(255),
);

CREATE TABLE foods
(
  id serial4 PRIMARY KEY,
  food_name varchar(255),
  cuisine_id integer,
  alt_cuisine_id integer -- To account for a food potentially belonging to two different cuisine types....?
);
