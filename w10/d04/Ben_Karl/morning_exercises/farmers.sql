cowcow_farm=# CREATE TABLE farmers(
cowcow_farm(# name varchar(100),
cowcow_farm(# id SERIAL PRIMARY KEY);
CREATE TABLE
cowcow_farm=# CREATE TABLE cows(
cowcow_farm(# name varchar(100),
cowcow_farm(# id SERIAL PRIMARY KEY,
cowcow_farm(# farmer_id integer references farmers(id));
CREATE TABLE
cowcow_farm=# \d
               List of relations
 Schema |      Name      |   Type   |  Owner
--------+----------------+----------+----------
 public | cows           | table    | benrkarl
 public | cows_id_seq    | sequence | benrkarl
 public | farmers        | table    | benrkarl
 public | farmers_id_seq | sequence | benrkarl
(4 rows)

cowcow_farm=# INSERT INTO farmers VALUES ('Lichard DeGray')
cowcow_farm-# ;
INSERT 0 1
cowcow_farm=# \d farmers
                                 Table "public.farmers"
 Column |          Type          |                      Modifiers
--------+------------------------+------------------------------------------------------
 name   | character varying(100) |
 id     | integer                | not null default nextval('farmers_id_seq'::regclass)
Indexes:
    "farmers_pkey" PRIMARY KEY, btree (id)
Referenced by:
    TABLE "cows" CONSTRAINT "cows_farmer_id_fkey" FOREIGN KEY (farmer_id) REFERENCES farmers(id)

cowcow_farm=# SELECT * FROM farmers
cowcow_farm-# ;
      name      | id
----------------+----
 Lichard DeGray |  1
(1 row)

cowcow_farm=# INSERT INTO farmers VALUES ('Kathew Bod');
INSERT 0 1
cowcow_farm=# INSERT INTO farmers VALUES ('Huoooman IsaSwerses');
INSERT 0 1
cowcow_farm=# \d farmers
                                 Table "public.farmers"
 Column |          Type          |                      Modifiers
--------+------------------------+------------------------------------------------------
 name   | character varying(100) |
 id     | integer                | not null default nextval('farmers_id_seq'::regclass)
Indexes:
    "farmers_pkey" PRIMARY KEY, btree (id)
Referenced by:
    TABLE "cows" CONSTRAINT "cows_farmer_id_fkey" FOREIGN KEY (farmer_id) REFERENCES farmers(id)

cowcow_farm=# SELECT * FROM farmers
cowcow_farm-# ;
        name         | id
---------------------+----
 Lichard DeGray      |  1
 Kathew Bod          |  2
 Huoooman IsaSwerses |  3
(3 rows)

cowcow_farm=# INSERT INTO cows VALUES ('Mooona Lisa', 1)
cowcow_farm-# ;
INSERT 0 1
cowcow_farm=# INSERT INTO cows VALUES ('Mooontgomery', 1)
;
ERROR:  duplicate key value violates unique constraint "cows_pkey"
DETAIL:  Key (id)=(1) already exists.
cowcow_farm=# INSERT INTO cows VALUES ('Mooona Lisa', 2, 1)
;
INSERT 0 1
cowcow_farm=# SELECT * FROM cows
cowcow_farm-# ;
    name     | id | farmer_id
-------------+----+-----------
 Mooona Lisa |  1 |
 Mooona Lisa |  2 |         1
(2 rows)

cowcow_farm=# DELETE FROM cows WHERE id=1;
DELETE 1
cowcow_farm=# SELECT * FROM cows
cowcow_farm-# ;
    name     | id | farmer_id
-------------+----+-----------
 Mooona Lisa |  2 |         1
(1 row)

cowcow_farm=# INSERT INTO cows VALUES ('Mooontgomery', 3, 1);
INSERT 0 1
cowcow_farm=# SELECT * FROM cows;
     name     | id | farmer_id
--------------+----+-----------
 Mooona Lisa  |  2 |         1
 Mooontgomery |  3 |         1
(2 rows)

cowcow_farm=# \d farmers
                                 Table "public.farmers"
 Column |          Type          |                      Modifiers
--------+------------------------+------------------------------------------------------
 name   | character varying(100) |
 id     | integer                | not null default nextval('farmers_id_seq'::regclass)
Indexes:
    "farmers_pkey" PRIMARY KEY, btree (id)
Referenced by:
    TABLE "cows" CONSTRAINT "cows_farmer_id_fkey" FOREIGN KEY (farmer_id) REFERENCES farmers(id)

cowcow_farm=# SELECT * FROM farmers
cowcow_farm-# ;
        name         | id
---------------------+----
 Lichard DeGray      |  1
 Kathew Bod          |  2
 Huoooman IsaSwerses |  3
(3 rows)

cowcow_farm=# INSERT INTO cows VALUES ('Moark', 4, 2);
INSERT 0 1
cowcow_farm=# SELECT * FROM cows
cowcow_farm-# ;
     name     | id | farmer_id
--------------+----+-----------
 Mooona Lisa  |  2 |         1
 Mooontgomery |  3 |         1
 Moark        |  4 |         2
(3 rows)

cowcow_farm=# SELECT * FROM farmers
cowcow_farm-# ;
        name         | id
---------------------+----
 Lichard DeGray      |  1
 Kathew Bod          |  2
 Huoooman IsaSwerses |  3
(3 rows)

cowcow_farm=# SELECT * FROM cows WHERE name LIKE '% ooo %';
 name | id | farmer_id
------+----+-----------
(0 rows)

cowcow_farm=# SELECT * FROM cows WHERE name LIKE '% ooo %' OR '%ooo%' OR '% ooo%' OR '%ooo %';
ERROR:  invalid input syntax for type boolean: "%ooo%"
LINE 1: SELECT * FROM cows WHERE name LIKE '% ooo %' OR '%ooo%' OR '...
                                                        ^
cowcow_farm=# SELECT * FROM cows WHERE name LIKE '% ooo %', OR '%ooo%' OR '% ooo%' OR '%ooo %';
ERROR:  syntax error at or near ","
LINE 1: SELECT * FROM cows WHERE name LIKE '% ooo %', OR '%ooo%' OR ...
                                                    ^
cowcow_farm=# SELECT * FROM cows WHERE name LIKE '% ooo %', '%ooo%' OR '% ooo%' OR '%ooo %';
ERROR:  syntax error at or near ","
LINE 1: SELECT * FROM cows WHERE name LIKE '% ooo %', '%ooo%' OR '% ...
                                                    ^
cowcow_farm=# SELECT * FROM cows WHERE name LIKE '%ooo%';
     name     | id | farmer_id
--------------+----+-----------
 Mooona Lisa  |  2 |         1
 Mooontgomery |  3 |         1
(2 rows)
