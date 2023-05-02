USE codeup_test_db;

SELECT name AS 'Names of all albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date AS 'Year of release of Sgt.Pepper' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre AS 'Genre of Nevermind' FROM albums WHERE name = 'Nevermind';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT * FROM albums WHERE sales < 20.0;
SELECT * FROM albums WHERE genre = 'Rock';