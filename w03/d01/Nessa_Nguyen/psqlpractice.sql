CREATE TABLE artists (name varchar(100), song varchar(200));

INSERT INTO artists (name, song) VALUES ('Christina Aguilera', 'Genie in the bottle');
INSERT INTO artists (name, song) VALUES ('Britney Spears', 'Baby one more time');
INSERT 0 1
INSERT INTO artists (name, song) VALUES ('Mandy Moore', 'I wanna be with you');
INSERT INTO artists (name, song) VALUES ('Jessica Simpson', 'I think I''m in love');


ALTER TABLE artists
ADD country text;
ALTER TABLE artists
ADD date_of_birth date;
ALTER TABLE artists
DROP date_of_birth;
ALTER TABLE artists
ALTER COLUMN genre TYPE varchar(100);


ALTER TABLE artists
RENAME COLUMN country to genre;
UPDATE artists SET song='Complicated' WHERE song='I think Im in love';
UPDATE artists SET name='Avril Lavigne' WHERE song='Complicated';


DELETE FROM artists WHERE song='I think I"m in love';
ALTER TABLE artists ALTER COLUMN genre SET DEFAULT 'pop';
INSERT INTO artists WHERE name='Jessica Simpson' SET genre='pop';


SELECT * FROM artists;
SELECT song FROM artists WHERE name='Christina Aguilera';
SELECT song FROM artists;









