-- How many books did the following author write? Name TOTALLY AT RANDOM: "Aldrich, Thomas Bailey"

SELECT COUNT(*) FROM books WHERE author_id = (SELECT id FROM authors WHERE name = 'Aldrich, Thomas Bailey');

SELECT COUNT(b.*) FROM books AS b
INNER JOIN authors AS a ON a.id = b.author_id
WHERE a.name LIKE 'Aldrich, Thomas Bailey';


-- Total number of words written in the following book? "Secret Societies And Subversive Movements"

SELECT COUNT(*) FROM word_counts WHERE book_id = (SELECT id FROM books WHERE title = 'Secret Societies And Subversive Movements');

SELECT SUM(w.count) FROM word_counts AS w
INNER JOIN books AS b ON w.book_id = b.id
WHERE b.title LIKE 'Secret Societies And Subversive Movements';


-- Show the books written by the following authors:
  -- Wells, H. G. (Herbert George)
  -- Rabelais, François
  -- Butler, Ellis Parker
  -- Ovid
  -- Hall, Tom

SELECT title FROM books WHERE author_id = (SELECT id FROM authors WHERE name = 'Wells, H. G. (Herbert George)');

SELECT a.name, b.title FROM books AS b
INNER JOIN authors AS a ON a.id = b.author_id
WHERE a.name IN ('Wells, H. G. (Herbert George)', 'Rabelais, François', 'Butler, Ellis Parker', 'Ovid', 'Hall, Tom')
ORDER BY a.name, b.title ASC;


-- Average amount of time the word "love" was used, among books where it was used

SELECT AVG(count) FROM word_counts WHERE word = 'love';

SELECT wc.word, b.title FROM word_counts AS wc
INNER JOIN books AS b ON b.id = wc.book_id
LIMIT 12;


-- show the first 30 words and the book title they came from (we do not care about distinct results) 
-- show the first 30 book title and authors who wrote them (we do not care about distinct results) 
-- show the first 30 authors and words they used (we do not care about distinct results)
-- top 15 books with 'love' in title
-- show book title and author name for books that use the word love more than 400 times

SELECT b.title, a.name FROM books AS b
INNER JOIN authors AS a ON a.id = b.author_id
INNER JOIN word_counts AS wc ON wc.book_id = b.id
WHERE wc.word LIKE 'love'
AND wc.count > 400;


-- top 20 counts of books grouped by author id in descending order

SELECT author_id, COUNT(*) FROM books
GROUP BY author_id
ORDER BY COUNT(*) DESC LIMIT 20;


-- top 20 counts of books grouped by author's name in descending order

SELECT authors.name, COUNT(books.*) FROM books
INNER JOIN authors ON authors.id = books.author_id
GROUP BY authors.name
ORDER BY COUNT(books.*) DESC LIMIT 20;



