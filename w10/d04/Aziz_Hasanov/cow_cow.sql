CREATE DATABASE cowcow_farm;

CREATE TABLE farmers (
  name varchar(100),
  id SERIAL PRIMARY KEY
);

CREATE TABLE cows (
  name varchar(100),
  id SERIAL PRIMARY KEY,
  farmer_id integer references farmers(id)
);

INSERT INTO farmers VALUES ('Lichard DeGray');
INSERT INTO farmers VALUES ('Kathew Bod');
INSERT INTO farmers VALUES ('Huoooman IsaSwerses');

INSERT INTO cows (name, farmer_id) VALUES ('Mooona Lisa', SELECT id FROM farmers WHERE name = 'Lichard DeGray' LIMIT 1);
INSERT INTO cows (name, farmer_id) VALUES ('Mooontgomery', (SELECT id FROM farmers WHERE name = 'Lichard DeGray' LIMIT 1));
INSERT INTO cows (name, farmer_id) VALUES ('Moark', (SELECT id FROM farmers WHERE name = 'Kathew Bod' LIMIT 1));

SELECT * FROM cows WHERE name LIKE '%ooo%';

SELECT * FROM cows INNER JOIN farmers ON farmers.id = cows.farmer_id;
-- another way
SELECT * FROM farmers, cows WHERE farmers.id = farmer_id;

SELECT name FROM farmers WHERE (SELECT count(*) FROM cows WHERE farmer_id = farmers.id) > 1;