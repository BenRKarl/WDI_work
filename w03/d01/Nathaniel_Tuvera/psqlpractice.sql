psql

CREATE DATABASE practice_database

\c practice_database

CREATE TABE deck (hearts varchar(13), diamonds varchar(13), clubs varchar(13));

\d deck

ALTER TABLE deck and ADD shovels varchar(13)

ALTER TABLE deck RENAME COLLUMN shovels TO spades;

INSERT INTO deck (hearts) VALUES ('A-Q');

INSERT INTO deck (diamonds) VALUES ('K-K');

INSERT INTO deck (clubs) VALUES ('A-Q');

INSERT INTO deck (spades) VALUES ('A-A');


UPDATE deck SET heart= ('Q-Q') WHERE hearts = ('A-Q')



DELETE FROM deck WHERE spades = ('A-A')

SELECT * FROM deck;

SELECT * FROM deck WHERE clubs = ('A-Q');

SELECT hearts FROM deck;


