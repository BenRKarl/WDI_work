Top 20 group count of books by author_id, order by count descending
SELECT a.id, COUNT(b.title) FROM authors AS a
INNER JOIN books AS b on a.id = b.author_id
GROUP BY a.id
ORDER BY count DESC;

Number of authors grouped by first letter of name
SELECT left(name, 1), COUNT(name) FROM authors
GROUP BY left(name, 1)
ORDER BY left(name, 1) ASC;

Top 20 authors grouped by book count in descending order
SELECT a.name, COUNT(b.*) FROM books as b
INNER JOIN authors AS a ON a.id = b.author_id
GROUP BY a.name
ORDER BY COUNT(b.*) DESC;

***BONUS***
Top 15 books with 'love' in title, grouped by author
SELECT a.name, b.title FROM books as b
INNER JOIN authors as a ON a.id = b.author_id
WHERE b.title like '%love%'
LIMIT 15;

List of book titles containing the word "love", along with their author, grouped by total word count in ascending order
