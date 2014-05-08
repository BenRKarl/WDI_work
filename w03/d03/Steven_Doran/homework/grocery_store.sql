CREATE DATABASE grocery_store;

CREATE TABLE cuisine (id serial4 PRIMARY KEY, cuisine_type varchar(255));

CREATE TABLE food (id serial4 PRIMARY KEY, food_name varchar(255), cuisine_id integer);