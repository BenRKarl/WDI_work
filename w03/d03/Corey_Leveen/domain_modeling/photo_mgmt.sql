CREATE TABLE clients
(
  id serial4 PRIMARY KEY,
  username varchar(255)
);

CREATE TABLE albums
(
  id serial4 PRIMARY KEY,
  client_id integer
);

CREATE TABLE photos
(
  id serial4 PRIMARY KEY,
  album_id integer
  value bytea
)
