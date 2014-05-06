CREATE DATABASE movie_app;

CREATE TABLE movies (id serial4, title varchar(255), director varchar(255));

ALTER TABLE movies add column star varcar(255);

ALTER TABLE movies RENAME COLUMN star TO movie_star;

INSERT INTO movies (title, director, movie_star) VALUES ('Rambo', 'Spielberg', 'Stallone');

UPDATE movies SET director = 'Grisham' WHERE id = 1;

INSERT INTO movies (title, director, movie_star) VALUES ('Free Willy', 'Speilberg', 'Michael Jackson');

INSERT INTO movies (title, director, movie_star) VALUES ('The War of the Roses', 'Cameron', 'Rob Shneider');

DELETE FROM movies WHERE title = 'The War of the Roses';

SELECT * FROM movies;

SELECT * FROM movies WHERE movie_star = 'Michael Jackson';	

SELECT column_name FROM information_schema.columns WHERE table_name = 'movies';

