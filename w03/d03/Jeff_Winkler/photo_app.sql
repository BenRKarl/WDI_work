
Photo App.  Each "client" can have multiple "events" which in turn can each
have multiple photos.  So events map to phots one to many and clients map to
events one to many.

CREATE DATABASE photo_app;

CREATE TABLE clients
(
  id serial4 PRIMARY KEY,
  client_name varchar(255)
);

CREATE TABLE events
(
  id serial4 PRIMARY KEY,
  event_type varchar(255),
  client_id integer
);


client_id in photos table below is probaby unnecessary but perhaps useful.

CREATE TABLE photos
(
  id serial PRIMARY KEY,
  photo_name varchar(255),
  event_id integer,
  client_id integer
);



