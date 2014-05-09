CREATE DATABASE travel_journal;

\c travel_journal;

CREATE TABLE locations
(
  id serial4 PRIMARY KEY,
  country varchar(255),
  city varchar(255)
);

CREATE TABLE entries
(
  id serial4 PRIMARY KEY,
  message varchar(1000),
  entry_date varchar(255),
  location_id integer
);
