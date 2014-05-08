CREATE TABLE cuisines
(
id serial4 PRIMARY KEY,
name varchar(255)
);

CREATE TABLE foods
(
id serial4 PRIMARY KEY,
name varchar(255),
cuisine_id integer
)


