CREATE DATABASE photo_app;

CREATE TABLE albums
(
  id serial4 PRIMARY KEY,
  album_name varchar(255)
);

CREATE TABLE events
(
  id serial4 PRIMARY KEY,
  event_name varchar(255),
  album_id integer
);

CREATE TABLE photos
(
id serial4 PRIMARY KEY,
  photo varchar(255),
  event_id integer
);

-- CREATE TABLE family
-- (
--   id serial4 PRIMARY KEY,
--   message varchar(255),
--   blog_id integer
-- );

-- CREATE TABLE couples
-- (
--   id serial4 PRIMARY KEY,
--   message varchar(255),
--   blog_id integer
-- );