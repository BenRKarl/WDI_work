psqlpractice.sql

MIGRATION
  CREATE TABLE heroes (name varchar(200), alter_ego varchar(200), hometown varchar(200));
  ALTER TABLE heroes ADD COLUMN power varchar(200);
  ALTER TABLE heroes RENAME COLUMN power TO powers;

MUTATION
  INSERT INTO heroes (name, alter_ego, hometown, powers) VALUES ('Batman', 'Bruce Wayne', 'Gotham City', 'Billions of dollars');
  UPDATE heroes SET hometown = 'New York City, NY' WHERE hometown = 'Queens, NY';
  DELETE FROM heroes WHERE name = 'Spider-man'

SELECTION
  SELECT * FROM heroes
  SELECT * FROM heroes WHERE hero_name = 'Batman'
  SELECT hero_name FROM heroes
