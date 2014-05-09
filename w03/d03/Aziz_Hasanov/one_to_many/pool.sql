CREATE DATABASE swimming_pool;

CREATE TABLE pools
(
  id serial4 PRIMARY KEY,
  kind varchar(255)
);

CREATE TABLE swimmers
(
  id serial4 PRIMARY KEY,
  swimmer_name varchar(255),
  pool_id integer
);