

CREATE DATABASE book_app;
# Creates a database

\c book_app
# Connects to database

CREATE TABLE books
(
  id serial4,
  title varchar(1000),
  author varchar(500)
);
# Creates a table with parameters

INSERT INTO books (title, author) VALUES ('The Great WDIspy', 'Lichard Grey');
# Adds a title and author to the books table

SELECT * FROM books;
# Displays everything (*) in books

INSERT INTO Books (title, author) VALUES ('Hucleberry Shark', 'Kathew Bod');

UPDATE books SET title='Huckleberry Shark' WHERE author='Kathew Bod';
# Updates title where the author matches
