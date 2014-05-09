
CREATE TABLE farming;
\c farming

CREATE TABLE farmer
(
  id serial4 PRIMARY KEY,
  name varchar(25)
);

CREATE TABLE farms
(
  id serial4 PRIMARY KEY,
  farm_name varchar(25),
  farmer_id integer
);


