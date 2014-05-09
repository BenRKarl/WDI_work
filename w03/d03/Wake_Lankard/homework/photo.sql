CREATE DATABASE photo_db

/c photo_db

CREATE TABLE clients
(
  id serial4 PRIMARY KEY,
  client_name VARCHAR(255),
);

CREATE TABLE events
(
  id serial4 PRIMARY KEY,
  event_name VARCHAR(255),
  client_id integer
);

CREATE TABLE phots
(
  id serial4 PRIMARY KEY,
  image IMAGE?,
  event_id integer
);
