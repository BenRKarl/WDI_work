places 1 ----> * entries

CREATE TABLE places (
  id serial4 PRIMARY KEY,
  place_name varchar(255)
)

CREATE TABLE entries
(
  id serial4 PRIMARY KEY,
  entry varchar(255),
  place_id integer
);
