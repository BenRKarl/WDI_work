Last login: Mon May  5 13:42:46 on ttys005
'/Applications/Postgres.app/Contents/Versions/9.3/bin'/psql -p5432
GA General Assembly  Web Development Immersive
------------------------------------------
git version 1.9.2
Homebrew 0.9.5
ruby 1.9.3p448 (2013-06-27 revision 41675) [x86_64-darwin13.1.0]
psql (PostgreSQL) 9.3.4
Rails 4.1.0
heroku-toolbelt/3.7.3 (x86_64-darwin13.1.0) ruby/1.9.3
------------------------------------------
type unwelcome to remove this message
krtonga ~
$ '/Applications/Postgres.app/Contents/Versions/9.3/bin'/psql -p5432
psql (9.3.4)
Type "help" for help.

krtonga=#






krtonga=# CREATE DATABASE hare krishna;
ERROR:  syntax error at or near "krishna"
LINE 1: CREATE DATABASE hare krishna;
                             ^
krtonga=# /c
krtonga-# CREATE TABLE impressions (keyword varchar(200), story varchar(2000));
ERROR:  syntax error at or near "/"
LINE 1: /c
        ^
krtonga=# \c
You are now connected to database "krtonga" as user "krtonga".
krtonga=# CREATE TABLE impressions (keyword varchar(200), story varchar(2000)); CREATE TABLE
krtonga=# ALTER TABLE impressions ADD COLUMN descriptions varchar(2000);
ALTER TABLE
krtonga=# d/
krtonga-# \d
           List of relations
 Schema |    Name     | Type  |  Owner
--------+-------------+-------+---------
 public | impressions | table | krtonga
(1 row)

krtonga-# \d impressions
             Table "public.impressions"
    Column    |          Type           | Modifiers
--------------+-------------------------+-----------
 keyword      | character varying(200)  |
 story        | character varying(2000) |
 descriptions | character varying(2000) |

krtonga-# ALTER TABLE impressions RENAME story TO interaction
krtonga-# ;
ERROR:  syntax error at or near "d"
LINE 1: d/
        ^
krtonga=# ALTER TABLE impressions RENAME story TO interaction                   ;
ALTER TABLE
krtonga=# \d impressions ;
             Table "public.impressions"
    Column    |          Type           | Modifiers
--------------+-------------------------+-----------
 keyword      | character varying(200)  |
 interaction  | character varying(2000) |
 descriptions | character varying(2000) |

\d: extra argument ";" ignored
krtonga=# INSERT INTO impressions (keyword, interaction, descriptions) VALUES ('UnionSquare','I sit on the fountain, doing hm, near the prayers','The krishna with a cut knot, or maybe he is new?, high prances about, in tune to music that is now soft. the man in the power suit still looks confounded, as he munches on a bit of something, flipped into his mouth from a folded peice of printed paper');
INSERT 0 1
krtonga=# INSERT INTO impressions (keyword, interaction, descriptions) VALUES ('SingAlongs','','');
INSERT 0 1
krtonga=# UPDATE impressions SET description='soft eyes and silver tinged gray hair, soft guitar, sweet chants in spanish, and we danced, the group of girls, and felt better when we left then when we arrived' WHERE keyword='SingAlongs';
ERROR:  column "description" of relation "impressions" does not exist
LINE 1: UPDATE impressions SET description='soft eyes and silver tin...
                               ^
krtonga=# UPDATE impressions SET descriptions='soft eyes and silver tinged gray hair, soft guitar, sweet chants in spanish, and we danced, the group of girls, and felt better when we left then when we arrived' WHERE keyword='SingAlongs';
UPDATE 1
krtonga=# INSERT INTO impressions (keyword, interaction, descriptions) VALUES ('Asheville','','');
INSERT 0 1
krtonga=# DELETE FROM impressions WHERE keyword='Asheville';
DELETE 1
krtonga=# SELECT * FROM impressions;
   keyword   |                    interaction                    |                                                                                                                        descriptions
-------------+---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 UnionSquare | I sit on the fountain, doing hm, near the prayers | The krishna with a cut knot, or maybe he is new?, high prances about, in tune to music that is now soft. the man in the power suit still looks confounded, as he munches on a bit of something, flipped into his mouth from a folded peice of printed paper
 SingAlongs  |                                                   | soft eyes and silver tinged gray hair, soft guitar, sweet chants in spanish, and we danced, the group of girls, and felt better when we left then when we arrived
(2 rows)

krtonga=# SELECT 'UnionSquare' FROM impressions ;
  ?column?
-------------
 UnionSquare
 UnionSquare
(2 rows)

krtonga=# SELECT keywords FROM impressions ;
ERROR:  column "keywords" does not exist
LINE 1: SELECT keywords FROM impressions ;
               ^
krtonga=# SELECT FROM impressions WHERE keyword
krtonga-# ;
ERROR:  syntax error at or near "FROM"
LINE 1: SELECT FROM impressions WHERE keyword
               ^
krtonga=# SELECT keyword FROM impressions;
   keyword
-------------
 UnionSquare
 SingAlongs
(2 rows)

krtonga=#
