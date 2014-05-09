CREATE TABLE locations
(
id serial4 PRIMARY KEY,
location varchar(255)
);

CREATE TABLE records
(
id serial4 PRIMARY KEY,
journalentry varchar(1000),
day timestamptz,
location_id integer
);
