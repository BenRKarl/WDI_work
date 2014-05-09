---NOTES

CREATE DATABASE groceries;

\c groceries

CREATE TABLE foods
(
  id serial4 PRIMARY KEY,
  name varchar(255),
);

CREATE TABLE comestibles
(
  id serial4 PRIMARY KEY,
  name varchar(255),
);

CREATE TABLE libations
(
  id serial4 PRIMARY KEY,
  name varchar(255),
);

CREATE TABLE cuisines
(
  id serial 4 PRIMARY KEY,
  name varchar(255),
  ingredients varchar(255)
);
