-- The travel log database consists of 3 tables: places, trips and records
-- with a 1 to many relationship between places and trips and also between
-- trips and records;
-- in the database pick a location and all the trips to that place will listed,
-- to each trip a list of records (log entries) will be shown


CREATE DATABASE travel_log_db;

\c travel_log_db

CREATE TABLE places
(
  id serial4 PRIMARY KEY,
  name varchar(255),
  countrycode varchar(2)
);

CREATE TABLE trips
(
  id serial4 PRIMARY KEY,
  title varchar(255),  
  year integer,
  place_id integer
);

CREATE TABLE records
(
  id serial4 PRIMARY KEY,
  title varchar(255),
  description varchar(1000), 
  entry_date varchar(10), 
  trip_id integer 
);
