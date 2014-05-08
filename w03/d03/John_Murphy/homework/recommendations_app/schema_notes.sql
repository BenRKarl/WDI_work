CREATE DATABASE recommendation_app;

CREATE TABLE users
(
id serial4 PRIMARY KEY,
name varchar(255),
email varchar(255)
);

CREATE TABLE recommendations
(
id serial4 PRIMARY KEY,
title varchar(255),
description varchar(255),
address varchar(255),
latitude varchar(255),
longitude varchar(255),
reason varchar(255),
user_id integer
);
