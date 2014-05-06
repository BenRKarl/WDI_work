

CREATE DATABASE wdi_lunch;


\c wdi_lunch;

CREATE TABLE lunches
(
  id serial4,
  lunch_name varchar(100),
  picked_count integer DEFAULT 0
);
