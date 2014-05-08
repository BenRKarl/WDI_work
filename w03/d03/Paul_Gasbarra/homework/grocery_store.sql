cuisine_type * <_____ junction_table _____> food_item


CREATE TABLE cuisine_type
(
  id serial4 PRIMARY KEY,
  cuisine_name varchar(255)
)

CREATE TABLE food_items
(
  id serial4 PRIMARY KEY,
  food_item varchar(255),
);

CREATE TABLE junction
 (
  cuisine_id integer,
  food_id integer,
)


