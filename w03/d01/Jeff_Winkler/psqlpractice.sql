
CREATE DATABASE w03d01hw;

\c w03d01hw

CREATE TABLE songs
(
  id serial4,
  title varchar(1000),
  artist varchar(500)
);

ALTER TABLE songs ADD year varchar(10);

ALTER TABLE songs RENAME title TO songname;

INSERT INTO songs (songname, artist, year) VALUES ('1999', 'Prince', '1980');

UPDATE songs SET year='1979' WHERE year='1980';

DELETE FROM songs WHERE artist='Prince';

INSERT INTO songs (songname, artist, year) VALUES ('1999', 'Prince', '1980');
INSERT INTO songs (songname, artist, year) VALUES ('When Doves Cry', 'Prince', '1984');
INSERT INTO songs (songname, artist, year) VALUES ('Dead Leaves', 'The White Stripes', '2000');
INSERT INTO songs (songname, artist, year) VALUES ('Sloop John B', 'Beach Boys', '1968');

SELECT * FROM songs;
SELECT * FROM songs WHERE id=5;
SELECT songname FROM songs;






