CREATE DATABASE dress_shop;

\c dress_shop

 CREATE TABLE occasions 
 (
 	id serial4 PRIMARY KEY,
 	occasion varchar(255)
 );

 CREATE TABLE dresses 
 (
 	id serial4 PRIMARY KEY,
 	description varchar(255),
 	img_url varchar(255),
 	occasion_id integer
 );

/* occasions */

 id |  occasion  
----+------------
  1 | Date night
  2 | Clubbing
  3 | Wedding
  4 | Business
  5 | Daytime


/* dresses */

id |             description              |       img_url       | occasion_id 
----+--------------------------------------+---------------------+-------------
  1 | Black lace cocktail dress            | /black_lace.jpg     |           1
  2 | Sequin baroque mini dress            | /sequin_baroque.jpg |           2
  3 | White lace column gown               | /white_lace.jpg     |           3
  4 | Charcoal skirt suit                  | /skirt_suit.jpg     |           4
  6 | Sheer sleeve dress with gold cuffs   | /sheer_sleeves.jpg  |           2
  7 | Nude lace dress                      | /nude_tone.jpg      |           5
  8 | One shoulder jersey dress            | /one_shoulder.jpg   |           5
  9 | Aztec print sweater dress            | /sweater_dress.jpg  |           5
 10 | Rose print dress                     | /roses.jpg          |           1
 11 | Colorblock hi-low dress              | /colorblock.jpg     |           4
 12 | Embellished crimson dress            | /crimson.jpg        |           3
 13 | Royal blue strapless gown            | /blue_gown.jpg      |      :
