CREATE DATABASE event_photos;

\c event_photos;

CREATE TABLE events
(
  id serial4 PRIMARY KEY,
  client varchar(255),
  occassion varchar(255)
);

CREATE TABLE photos
(
  id serial4 PRIMARY KEY,
  image bytea, --This is my best guess as to what the data type should be for an image.
  event_id integer
);
