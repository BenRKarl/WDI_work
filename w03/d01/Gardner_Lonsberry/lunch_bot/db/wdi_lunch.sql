CREATE DATABASE  wdi_lunch;

\c lunch_app

CREATE TABLE lunches
(
  id serial4,
  lunch_name varchar(140),
  picked_count integer DEFAULT 0);
);
