CREATE DATABASE wdi_lunch;

\c wdi_lunch

CREATE TABLE lunches
(
  id serial4,
  lunch_name varchar(100),
  restaurant varchar(100),
  picked_count int DEFAULT 0
 );
