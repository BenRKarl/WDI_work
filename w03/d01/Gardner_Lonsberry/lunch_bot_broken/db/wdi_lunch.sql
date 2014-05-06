CREATE DATABASE  wdi_lunch;

\c wdi_lunch

CREATE TABLE lunches
(
  id serial4,
  lunch_name varchar(140),
  picked_count integer DEFAULT 0)
  restaurtant varchar(255);
);


INSERT INTO wdi_lunch (lunch_name, picked_count, restaurant)
VALUES (Tacos, 1, Chipotle)

