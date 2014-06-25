SELECT id FROM authors WHERE name = 'Aldrich, Thomas Bailey';
  id=2830

SELECT COUNT(*) FROM books WHERE author_id = (SELECT id FROM authors WHERE name = 'Aldrich, Thomas Bailey');
  count = 17

select SUM(count) from word_counts where book_id = (select id from books where title='Secret Societies And Subversive Movements');
  sum=176,975

SELECT id FROM authors WHERE name = 'Wells, H. G. (Herbert George)';
  id=99

SELECT title FROM books WHERE author_id = 99;

SELECT title FROM books WHERE author_id = (SELECT id FROM authors WHERE name = 'Rabelais, François');

SELECT AVG(count) FROM word_counts WHERE word = 'love';
  avg=36.2024059799112357




  -------

SELECT COUNT(b.*) FROM books AS b
INNER JOIN authors AS a ON b.author_id = a.id
WHERE a.name like 'Aldrich, T%';

SELECT SUM(wc.count) FROM word_counts as wc
INNER JOIN books as b ON b.id = wc.book_id
WHERE b.title like 'Secret Societies And Subversive Movements';

SELECT a.name, b.title FROM books as b
INNER JOIN authors as a ON a.id = b.author_id
WHERE a.name IN ('Wells, H. G. (Herbert George)', 'Rabelais, François', 'Butler, Ellis Parker', 'Ovid', 'Hall, Tom')
ORDER BY a.name, b.title ASC;

SELECT wc.word, b.title FROM word_counts AS wc
INNER JOIN books as b ON b.id = wc.book_id
LIMIT 12;

SELECT a.name, b.title FROM authors AS a
INNER JOIN books as b ON b.author_id = a.id
INNER JOIN word_counts as wc ON wc.book_id = b.id
WHERE wc.word LIKE 'love'
AND wc.count > 400;

  --------

SELECT authors.name, count(books.*) FROM books
INNER JOIN authors ON authors.id = books.author_id
GROUP BY authors.name
ORDER BY count(books.*) DESC
LIMIT 20;
