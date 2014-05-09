--- Notes

CREATE DATABASE travel_log;

\c travel_log

CREATE TABLE entries
(
  id serial4 PRIMARY KEY,
  date varchar(255),
  country varchar(255),
  );
