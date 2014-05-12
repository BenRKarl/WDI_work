CREATE DATABASE songs

CREATE TABLE ditties
(
  id serial4,
  title varchar(1000),
  artist varchar(500)
  );

CREATE TABLE

ALTER TABLE ditties ADD producer varchar(200);

ALTER TABLE ditties RENAME producer TO collaborator;

INSERT INTO ditties (title, artist, collaborator) VALUES ('Dont_Get_Me_Down', 'ELO', 'Jeff Lynne');

UPDATE ditties SET title='Dont_Bring_Me_Down' WHERE title='Dont_Get_Me_Down';

DELETE FROM ditties WHERE artist='ELO';

INSERT INTO ditties (title, artist, collaborator) VALUES ('Here_Comes_The_Sun', 'The_Beatles', 'George_Harrison');
INSERT INTO ditties (title, artist, collaborator) VALUES ('Time_To_Pretend', 'MGMT', 'Benjamin_Goldwasser');
INSERT INTO ditties (title, artist, collaborator) VALUES ('Mr_Bluesky', 'ELO', 'Jeff Lynne');
INSERT INTO ditties (title, artist, collaborator) VALUES ('Dont_Get_Me_Down', 'ELO', 'Jeff Lynne');

SELECT * FROM ditties;

SELECT * FROM ditties WHERE title='Here_Comes_The_Sun';

SELECT title FROM ditties;
