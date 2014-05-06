
                        ^
CREATE DATABASE "practice_db";

You are now connected to database "ph1am" as user "ph1am".
\c practice_db 
You are now connected to database "practice_db" as user "ph1am".
CREATE TABLE stuff
(
id serial4,
name varchar(200),
location varchar(300)
)
;

INSERT INTO stuff (name, location) VALUES ('bike', 'garage');
INSERT 0 1

ALTER TABLE stuff ADD COLUMN age varchar(100);

UPDATE stuff SET age='5 yrs' WHERE name='bike';

INSERT INTO stuff (name, location, age) VALUES ('cat', 'couch', '12');

DELETE from stuff WHERE name='cat';

SELECT * FROM stuff;

SELECT location from stuff WHERE name='bike';
SELECT * FROM stuff where name='bike';

SELECT name FROM stuff;