WEEK 10 DAY 04
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w10_d04_submission`
---
- CowCow Farm

- You manage a co-op cow farm called CowCow Farm
  - A farmer owns a cow
  - A cow belongs to a farmer

```sql
CREATE DATABASE cowcow_farm;
\c cowcow_farm;
CREATE TABLE farmers (name varchar(100), id SERIAL PRIMARY KEY);
CREATE TABLE cows (
  name varchar(100),
  id SERIAL PRIMARY KEY,
  farmer_id integer references farmers(id));
```

- Farmer Lichard DeGray has two cows... Mooona Lisa and Mooontgomery

```sql
INSERT INTO farmers (name) VALUES ('Lichard DeGray');
INSERT INTO cows
  (name, farmer_id)
  VALUES ('Mooona Lisa', (SELECT id FROM farmers WHERE name='Lichard DeGray' LIMIT 1));
INSERT INTO cows
  (name, farmer_id)
  VALUES ('Mooontgomery', (SELECT id FROM farmers WHERE name='Lichard DeGray' LIMIT 1));
```


- Farmer Kathew Bod has one cow... Moark

```sql
INSERT INTO farmers (name) VALUES ('Kathew Bod');
INSERT INTO cows
  (name, farmer_id)
  VALUES ('Moark', (SELECT id FROM farmers WHERE name='Kathew Bod' LIMIT 1));
```

- Farmer Huoooman IsaSwerses has... no cows... (hmmmm?)

```sql
INSERT INTO farmers (name) VALUES ('Huoooman Isa Swerses');
```

- I need a list of ALL the cows with "ooo" in their name!

```sql
SELECT * FROM cows WHERE name LIKE '%ooo%';
```

- I need a list of ALL the farmers and their cows

```sql
SELECT * FROM cows INNER JOIN farmers ON farmers.id = cows.farmer_id;
```

- I need a list of ALL the farmers names that have more than 1 cow

```sql
  SELECT name FROM farmers
  WHERE (SELECT count(*) from cows where farmer_id=farmers.id) > 1;
```
