ONE TO MANY:

-- author => {id, name, hometown, age, countries_traveled_to, num_blog_posts,etc.}

-- entry => {id, title, author_id, message, place, tags}

CREATE DATABASE travel_log;
\c travel_log
CREATE TABLE author (name varchar(255), age smallint, hometown varchar(255), num_blog_posts integer);
ALTER TABLE author ADD COLUMN id serial4 PRIMARY KEY;

CREATE TABLE post (post_id serial4 PRIMARY KEY, title varchar(255), author_id integer, message varchar(1500), place varchar(255), tags(500));
ALTER TABLE post RENAME place TO location;

CREATE TABLE location (id serial4 PRIMARY KEY, country varchar(255));


-- HERE ARE THE OTHER TWO:
  -- PHOTO APP!!
  -- CREATE DATABASE photo_app;
  -- \c
  -- CREATE TABLE photographer (id serial4 PRIMARY KEY, name varchar(255), experience(500));
  -- CREATE TABLE client (id serial4 PRIMARY KEY, name varchar(255), notes varchar(500));
  -- CREATE TABLE event (id serial4 PRIMARY KEY, name varchar(255), description varchar(500));
  -- CREATE TABLE photos (id serial4 PRIMARY KEY, client_pick varchar(255));

  -- -- GROCERY STORE:
  -- CREATE DATABASE grocery;
  -- \c
  -- CREATE TABLE grocer (id serial4 PRIMARY KEY, name varchar(255), history varchar(500));
  -- CREATE TABLE store (id serial4 PRIMARY KEY, store_name varchar(255), location varchar(500));
  -- CREATE TABLE food_category (id serial4 PRIMARY KEY, name varchar(255), description varchar(255), examples varchar(255));
  -- CREATE TABLE product (id serial4 PRIMARY KEY, name varchar(255), brand (255), price integer, stock_info varchar (255), shelf_life (255), variations varchar(255));


