CREATE TABLE albums
(
  id serial4 PRIMARY KEY,
  client varchar(255),
  event varchar(255),
  day date
);

CREATE TABLE photos
(
id serial4 PRIMARY KEY,
name varchar(255),
image lo,
day timestamptz,
album_id integer
);
