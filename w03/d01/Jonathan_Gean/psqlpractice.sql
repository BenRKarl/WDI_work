CREATE DATABASE hw_db
\c hw_db
CREATE TABLE people (name varchar(200), age varchar(100));
ALTER TABLE people ADD COLUMN location varchar(50);
ALTER TABLE people RENAME COLUMN age TO hair_color;
INSERT INTO people (name, hair_color, location) VALUES ('Alan Smith', 'Grey', 'New York City');
UPDATE people set hair_color='lichard grey' where name='Alan Smith';
delete from people where hair_color='lichard grey';
SELECT * FROM people
SELECT * FROM people where name='Alan Smith';
SELECT name FROM people;
