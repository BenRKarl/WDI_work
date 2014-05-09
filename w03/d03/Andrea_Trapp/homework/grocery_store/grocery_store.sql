-- this database follows the simple assumption that one food item belongs to
-- exactly one cuisine type while a cuisine type can have many food items:
-- food item - cuisine type is a one to many relationship;
-- in order to assign one food item to many cuisine types (many to many relationship)
-- a third table is needed to join/relate the primary keys of both tables, an SQL example:
-- SELECT F.name, C.type FROM fooditems as F
--  LEFT JOIN thirdtable as T on F.fooditem_id = T.fooditem_id
--  LEFT JOIN cuisinetypes as C on T.cuisinetype_id = C.cuisinetype_id



CREATE DATABASE grocery_store_db;

\c grocery_store_db



CREATE TABLE cuisinetypes
(
  id serial4 PRIMARY KEY,
  cuisine varchar(255)
);


CREATE TABLE fooditems
(
  id serial4 PRIMARY KEY,
  name varchar(255),
  cuisinetype_id integer
);

