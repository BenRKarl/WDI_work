CREATE DATABASE photo_app;

CREATE TABLE clients (id serial4 PRIMARY KEY, client_name varchar(255), client_type varchar(255));

CREATE TABLE photos (id serial4 PRIMARY KEY, client_id integer, photo_url varchar(255), album_id integer);

CREATE TABLE albums (id serial4 PRIMARY KEY, client_id integer, album_name varchar(255));