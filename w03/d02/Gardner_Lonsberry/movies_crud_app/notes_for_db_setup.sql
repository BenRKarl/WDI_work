CREATE DATABASE movie_app;

\c movie_app

CREATE TABLE movies
(
  id serial4 PRIMARY KEY,
  title varchar(255),
  director varchar(255),
  screenwriter varchar(255)
);

SELECT * FROM movies;




INSERT INTO movies (title, director, screenwriter) VALUES ('The Ehh WDisby', 'Lichard Drew', 'Bod Hanson');
