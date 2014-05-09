CREATE TABLE cuisines
(
  id serial4 PRIMARY KEY,
  cuisine_type varchar(255)
);

CREATE TABLE food_items
(
  id serial4 PRIMARY KEY,
  cuisine_id integer
);

