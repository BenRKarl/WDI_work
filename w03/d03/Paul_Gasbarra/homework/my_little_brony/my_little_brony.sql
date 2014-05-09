CREATE TABLE bronies
(
  id serial4 PRIMARY KEY,
  brony_name varchar(255),
  favorite_pony_id integer
);

CREATE TABLE ponies
(
  id serial4 PRIMARY KEY,
  pony_name varchar(255),
  pony_ability varchar(255)
);
