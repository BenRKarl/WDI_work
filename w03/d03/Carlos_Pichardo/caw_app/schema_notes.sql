schema_notes.sql

CREATE DATABASE wdi_caws_app;

\c wdi_caws_app

CREATE TABLE users
(
id serial4 PRIMARY KEY,
USERNAME VARCHAR(255)
);

CREATE TABLE caws 
(
id serial4 PRIMARY KEY,
message varchar(255),
user_id integer
);