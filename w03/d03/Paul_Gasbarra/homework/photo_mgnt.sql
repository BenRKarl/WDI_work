clients 1 _____> * events 1 _____> * photos


CREATE TABLE clients
(
  id serial4 PRIMARY KEY,
  client_name varchar(255)
)

CREATE TABLE events
(
  id serial4 PRIMARY KEY,
  event_name varchar(255),
  client_id integer

);

CREATE TABLE photos
(
  id serial4 PRIMARY KEY,
  event_id integer
);
