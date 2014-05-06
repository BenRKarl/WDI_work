CREATE DATABASE  wdi_lunch;

\c wdi_lunch

CREATE TABLE lunches
(
  lunch_name varchar(25) not null,
  picked_count integer default 0
);

