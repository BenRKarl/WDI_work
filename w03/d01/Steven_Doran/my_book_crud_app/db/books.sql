CREATE DATABASE book_app;

\c book_app

CREATE TABLE books
(
  id serial4,
  title varchar(1000),
  author varchar(500)
);

INSERT INTO books (title, author) VALUES ('The Great WDIsby', 'Lichard Grey');

INSERT INTO books (title, author) VALUES ('Huckleberry Shark', 'Katthew Bod');  
  
  
