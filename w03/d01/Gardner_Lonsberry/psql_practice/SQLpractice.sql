SQL practice



CREATE TABLE birds (id serial4, bird_name varchar(255), num_feathers integer, bird_type);
CREATE TABLE
                  
g=# ALTER TABLE birds
RENAME COLUMN bird_type to bird_species;
ALTER TABLE
    
g=# INSERT INTO birds (bird_name,num_feathers,bird_species) 
VALUES ('Greeney', 2000, 'Mallard');
g=# INSERT INTO birds (bird_name,num_feathers,bird_species) 
VALUES ('Flappy', 3207, 'Cardinal');
INSERT 0 1
g=# INSERT INTO birds (bird_name,num_feathers,bird_species) 
VALUES ('Unflappy', 5020, 'Finch');
INSERT 0 1

g=# UPDATE birds
g-# SET num_feathers=8000
g-# WHERE bird_name='Flappy';
UPDATE 1

g=# DELETE FROM birds
g-# WHERE id=2;
DELETE 1

g=# SELECT * FROM birds
g-# ;
 id | bird_name | num_feathers | bird_species 
 +--+-----------+--------------+---------------
  1 | Greeney   |         2000 | Mallard
  3 | Unflappy  |         5020 | Finch
 (2 rows)

 g=# SELECT * FROM birdss
 g-# WHERE id=1;
  id | bird_name  | num_feathers | bird_species 
 +---+------------+--------------+---------------
   1 | Greeney    |         2000 | Mallard
  (1 row)
 
 g=# SELECT bird_name FROM birds;
  bird_name 
 +------------
  Greeney
  Unflappy
 (2 rows)
 