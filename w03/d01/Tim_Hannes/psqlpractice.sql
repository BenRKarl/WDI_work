CREATE TABLE dogs (breed varchar(255), weight smallint);

ALTER TABLE dogs
ADD COLUMN sheds boolean;

ALTER TABLE dogs
RENAME COLUMN sheds to barks;

INSERT INTO dogs (breed, weight, barks)
VALUES ('Lab', 100, true);

UPDATE dogs SET breed='Yellow Lab' WHERE breed='Lab';

DELETE FROM dogs WHERE weight=100;

SELECT * FROM dogs;

SELECT breed FROM dogs WHERE weight=100;

SELECT breed FROM dogs
