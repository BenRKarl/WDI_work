CREATE DATABASE travel_db

/c travel_db

CREATE TABLE places
(
  id serial4 PRIMARY KEY,
  place_name VARCHAR(255),
);

CREATE TABLE entries
(
  id serial4 PRIMARY KEY,
  entry VARCHAR(5000),
  place_id integer
);


