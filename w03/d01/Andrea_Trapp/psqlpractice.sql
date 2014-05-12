# MIGRATION
CREATE DATABASE test_app;
\c test_app
CREATE TABLE songs (artist varchar(200), title varchar(200));
ALTER TABLE songs ADD COLUMN start int;
ALTER TABLE songs RENAME COLUMN start to year;
# MUTATION
INSERT INTO songs (artist, title, year) VALUES ('Ana Tijoux', 'Mi verdad', 2013);
UPDATE songs SET year=2014 WHERE artist='Ana Tijoux' AND title='Mi verdad';
DELETE FROM songs WHERE artist='Ana Tijoux' AND title='Mi verdad';
# SELECTION
INSERT INTO songs (artist, title, year) VALUES ('Ana Tijoux', 'Mi verdad', 2014);
INSERT INTO songs (artist, title, year) VALUES ('Gregory Porter', 'Liquid Spirit', 2013);
INSERT INTO songs (artist, title, year) VALUES ('Spoon', 'Keep Runnin', 2010);
INSERT INTO songs (artist, title, year) VALUES ('Spoon', 'Good Old Time', 2010);
SELECT * FROM songs;
SELECT * FROM songs WHERE artist='Spoon' AND title='Keep Runnin';
SELECT artist FROM songs;
DROP DATABASE test_app;