##Figure out the appropriate SQL commands to find out the following, and keep track of them in the file called sql_commands.txt

###All columns for all players from the New York Knicks (NYK)

SELECT id, name, age, team, games, points FROM players WHERE team LIKE 'NYK';

###All columns for all players from the Indiana Pacers (IND) who are under 26 years old

SELECT id, name, age, team, games, points FROM players WHERE team LIKE 'IND' AND age < 26;

###All columns for all players, ordered from least points scored to most points scored

SELECT * FROM players ORDER BY points ASC;

###Name and Points per game (points/games), for the players with the top 20 points per game

SELECT name, (points/games) FROM players ORDER BY (points/games) DESC LIMIT 20;

###The average age for all players

SELECT AVG(age) FROM players;

###The average age for all players on the Oklahoma City Thunder (OKC)

SELECT AVG(age) FROM players WHERE team LIKE 'OKC';

###The average age for all players who played more than 40 games

SELECT AVG(age) FROM players WHERE games > 40;

###The team and total points scored from all players on that team (team points), ordered from most team points to least

SELECT team, SUM(points) FROM players GROUP BY team ORDER BY sum DESC;

###Age and the average points per game for that age, ordered from youngest to oldest

SELECT age, AVG(points/games) FROM players GROUP BY age ORDER BY age ASC;

###Team and the the number of players who score above 12 points per game on that team, ordered from most to least

SELECT team, COUNT(name) FROM players WHERE (points/games) > 12 GROUP BY team ORDER BY count DESC;

###Top 20 group count of books by author_id, order by count descending

SELECT author_id, COUNT(title) FROM books GROUP BY author_id ORDER BY count DESC;

###Number of authors grouped by first letter of name 

SELECT SUBSTRING(name,1,1) AS substr, COUNT(*) FROM authors GROUP BY SUBSTRING(name,1,1) ORDER BY substr ASC;

###Top 20 authors grouped by book count in descending order

SELECT a.name, COUNT(b.title) FROM authors AS a INNER JOIN books AS b ON a.id = b.author_id GROUP BY a.name ORDER BY count DESC LIMIT 20;

###Top 15 books with 'love' in title, grouped by author

Not quite sure what you're asking here...

SELECT a.name, COUNT(b.title) FROM authors 
AS a INNER JOIN books AS b ON b.author_id = a.id 
WHERE LOWER(b.title) LIKE '% love %' OR 
LOWER(b.title) LIKE '% love' OR 
LOWER(b.title) LIKE 'love %' OR 
LOWER(b.title) LIKE 'love' 
GROUP BY a.name ORDER BY count DESC LIMIT 15;

Not a lot of repeat offenders here:

SELECT a.name, b.title FROM authors AS a INNER JOIN books AS b ON b.author_id = a.id WHERE LOWER(b.title) LIKE '% love %' OR LOWER(b.title) LIKE '% love' OR LOWER(b.title) LIKE 'love %' OR LOWER(b.title) LIKE 'love' ORDER BY a.name ASC;


###List of book titles containing the word "love", along with their author, grouped by total word count in ascending order
