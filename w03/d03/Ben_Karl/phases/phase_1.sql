# buses have many passengers

CREATE DATABASE bus_app;

\c bus_app;

CREATE TABLE buses
(
  id serial4 PRIMARY KEY,
  route text[],
  seats integer
);

CREATE TABLE passengers
(
  id serial4 PRIMARY KEY,
  start varchar(255),
  destination varchar(255),
  bus_id integer
);
