CREATE DATABASE grocery_db

/c grocery_db

CREATE TABLE item
(
  id serial4 PRIMARY KEY,
  item_name VARCHAR(255),
);

CREATE TABLE category
(
  id serial4 PRIMARY KEY,
 category_name VARCHAR(255)

);

CREATE TABLE lookup
(
  id serial4 PRIMARY KEY,
  item_id integer,
  category_id integer
);