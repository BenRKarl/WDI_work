-- - MIGRATION
--   - create a table
jdwmurph=# \c junk_app
junk_app=# CREATE TABLE roster (first varchar(40), last varchar(40))


  -- - alter a table's schema by adding a new column
junk_app=# ALTER TABLE roster ADD id serial4

--   - alter a table's schema by changing the title of a column
junk_app=# ALTER TABLE roster RENAME COLUMN first TO first_name
-- - MUTATION
--   - insert a new record into a tabel
junk_app=# INSERT INTO roster (first_name, last_name) VALUES ('John', 'Murphy');
--   - update information of a row
junk_app=# UPDATE roster SET first_name='Andre' WHERE last_name='Lichard';
--   - delete a specific row
junk_app=# DELETE FROM roster WHERE id = '3';
-- - SELECTION
--   - obtain all records
junk_app=# SELECT * FROM roster;
--   - obtain a spicific record
junk_app=# SELECT first_name FROM roster WHERE id='1';
--   - obtain only the name column of all records
junk_app=# SELECT first_name FROM roster;
