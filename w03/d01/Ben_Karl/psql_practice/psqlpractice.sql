# Create Database called hw_db
CREATE DATABASE hw_db;

# Create Database 'planets' with column 'name' that accepts 20 or fewer characters per row.
CREATE TABLE planets (name varchar(20));

# Change name of 'name' column to 'planet_name'
ALTER TABLE planets RENAME COLUMN name TO planet_name;

# Insert new record (/row) into column with name => "Mars"
INSERT INTO planets (planet_name) VALUES ('Mars');

# Change name of "Mars" entry to "Jupiter" (NO DOUBLE-QUOTES!)
UPDATE planets SET planet_name='Jupiter' WHERE planet_name='Mars';

# Delete 'Jupiter' entry
DELETE FROM planets WHERE planet_name='Jupiter';

# Obtain all records
SELECT * FROM planets;

# Obtain a specific record
SELECT planet_name FROM planets;

# Obtain only the name column of all records
SELECT name FROM planets;
