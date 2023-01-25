USE codeup_test_db;

SELECT album_name, release_date FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE release_date > 1991;

SELECT album_name, genre FROM albums WHERE genre = 'Disco';

DELETE FROM albums WHERE genre = 'Disco';

SELECT album_name FROM album WHERE artist = 'Whitney Houston';

DELETE FROM album WHERE artist = 'Whitney Houston';