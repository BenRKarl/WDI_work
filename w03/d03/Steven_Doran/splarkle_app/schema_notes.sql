-- Notes for setting up my database and tables

CREATE DATABASE wdi_splarkle_app;

\c wdi_splarkle_app

CREATE TABLE users
(
	id serial4 PRIMARY KEY,
	username varchar(255)
);

CREATE TABLE splarkles
(
   id serial4 PRIMARY KEY,
   message varchar(255),
   user_id integer   
);