--- Notes for how I set up my database and tables ----

CREATE DATABASE wdi_furry_app;

\c wdi_furry_app

CREATE TABLE users
(
id serial4 PRIMARY KEY,
username varchar(255)
);

CREATE TABLE furries 
(
id serial4 PRIMARY KEY,
message varchar(255),
user_id integer
);