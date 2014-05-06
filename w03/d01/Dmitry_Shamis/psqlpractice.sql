CREATE DATABASE psql_practice;

\c psql_practice

CREATE TABLE lunch (restaurant varchar(100), specialty varchar(100));

ALTER TABLE lunch
ADD COLUMN price varchar(10)

ALTER TABLE lunch
RENAME COLUMN specialty TO lunch_special

INSERT INTO lunch (restaurant, lunch_special, price) VALUES ('McDonalds', 'Big Mac', '$5.00');

UPDATE lunch SET lunch_special='Chicken McNuggets' WHERE restaurant='McDonalds';

DELETE FROM lunch WHERE restaurant='McDonalds';

INSERT INTO lunch (restaurant, lunch_special, price) VALUES ('McDonalds', 'Big Mac', '$5.00');
INSERT INTO lunch (restaurant, lunch_special, price) VALUES ('Chipotle', 'Burrito', '$10.00');
INSERT INTO lunch (restaurant, lunch_special, price) VALUES ('Potbellys', 'Sandwich', '$9.00');

SELECT lunch_special FROM lunch
SELECT * FROM lunch WHERE restaurant='McDonalds'
