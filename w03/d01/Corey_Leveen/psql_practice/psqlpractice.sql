CREATE DATABASE my_cool_database;
\c my_cool_database;
CREATE TABLE furniture (manufacturer varchar(75), type varchar(100));
ALTER TABLE furniture ADD COLUMN designer text;
ALTER TABLE furniture RENAME COLUMN designer TO tinkerers;

INSERT INTO furniture (tinkerers) VALUES ('Bod-a-bing');
UPDATE furniture SET tinkerers='Bodawad';
DELETE FROM furniture WHERE tinkerers='Bodawad';

SELECT * FROM furniture;
SELECT tinkerers FROM furniture WHERE type='Chairs';
\dt
