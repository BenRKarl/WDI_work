--- NOTES

CREATE DATABASE spider_app;

\c spider_app

CREATE TABLE spiders
(
  id serial4 PRIMARY KEY,
  character varchar(255),
);

CREATE TABLE legs
(
  id serial4) PRIMARY KEY,
  item varchar(255),
  which_leg varchar(255)
);
