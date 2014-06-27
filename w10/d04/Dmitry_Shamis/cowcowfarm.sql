CREATE DATABASE cowcow_farm;

CREATE TABLE farmers (
  id SERIAL PRIMARY KEY,
  name varchar(50),
  );

CREATE TABLE cows (
  id SERIAL PRIMARY KEY,
  name varchar(50),
  farmer_id integer references farmers(id)
  );
---
INSERT INTO farmers (name) VALUES ('Lichard DeGray');
INSERT INTO cows (name, farmer_id)
VALUES (
  'Mooona Lisa',
  SELECT id WHERE name = 'Lichard DeGray' LIMIT 1
  );
INSERT INTO cows (name, farmer_id)
VALUES (
  'Mooontgomery',
  SELECT id WHERE name = 'Lichard DeGray' LIMIT 1
  );

INSERT INTO farmers (name) VALUES ('Kathew Bod');
INSERT INTO cows (name, farmer_id)
VALUES (
  'Moark',
  SELECT id WHERE name = 'Kathew Bod' LIMIT 1
  );

INSERT INTO farmers (name) VALUES ('Huoooman IsaSwerses');
---
SELECT * FROM cows WHERE name LIKE '%ooo%';

SELECT f.name, c.name FROM farmers AS f
INNER JOIN cows AS c ON f.id = c.farmer_id;

-- SELECT f.name FROM farmers AS f
-- INNER JOIN cows AS c ON f.id = c.farmer_id
-- WHERE SELECT count(*) FROM cows WHERE farmer_id = farmers.id) > 1
-- GROUP BY f.name;

SELECT name FROM farmers
WHERE (SELECT count(*) FROM cows WHERE farmer_id = farmers.id) > 1;
