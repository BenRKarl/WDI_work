CREATE DATABASE lunches;

\c wdi_lunch

CREATE TABLE books
(
  lunch_name varchar(100),
  restaurant varchar(100),
  picked_count integer DEFAULT 0
);

