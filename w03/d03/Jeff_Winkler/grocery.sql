
Grocery store.  Here one food can map to multiple food types and a food type
will have multiple foods.  So many to many.  To have a table at some unique level
maybe have a table combine the food_id and the type_id to form a unique key?

CREATE DATABASE grocery;

CREATE TABLE foods
(
  id serial4 PRIMARY KEY,
  food_name varchar(255)
);

CREATE TABLE types
(
  id serial4 PRIMARY KEY,
  type_name varchar(255)
);

CREATE TABLE links
(
  food_id_type_id PRIMARY KEY,
  food_id integer,
  type_id integer
);

When you create a new food you can assign it multiple types as opposed to having
just one type to map to.







