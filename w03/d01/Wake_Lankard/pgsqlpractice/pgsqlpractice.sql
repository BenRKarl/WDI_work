wake=# CREATE TABLE sharks (id serial4, shark_name varchar(255), num_teeth int);
CREATE TABLE
                  
wake=# ALTER TABLE sharks
RENAME COLUMN shark_type to shark_species;
ALTER TABLE
   
wake=# INSERT INTO sharks (shark_name,num_teeth,shark_species) 
VALUES ('Big Smiley', 200, 'Great White');
wake=# INSERT INTO sharks (shark_name,num_teeth,shark_species) 
VALUES ('Slow Moe', 7, 'Whale');
INSERT 0 1
wake=# INSERT INTO sharks (shark_name,num_teeth,shark_species) 
VALUES ('Speedy Boy', 345, 'Mako');
INSERT 0 1

wake=# UPDATE sharks
wake-# SET num_teeth=400
wake-# WHERE shark_name='Speedy Boy';
UPDATE 1

wake=# DELETE FROM sharks
wake-# WHERE id=2;
DELETE 1

wake=# SELECT * FROM sharks
wake-# ;
 id | shark_name | num_teeth | shark_species 
----+------------+-----------+---------------
  1 | Big Smiley |       200 | Great White
  3 | Speedy Boy |       400 | Mako
(2 rows)

wake=# SELECT * FROM sharks
wake-# WHERE id=1;
 id | shark_name | num_teeth | shark_species 
----+------------+-----------+---------------
  1 | Big Smiley |       200 | Great White
(1 row)

wake=# SELECT shark_name FROM sharks;
 shark_name 
------------
 Big Smiley
 Speedy Boy
(2 rows)
#