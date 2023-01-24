USE codeup_test_db;


    INSERT INTO albums(artist, album_name, release_date, sales, genre)VALUES
    ('Michael Jackson', 'Thriller', 1982, 51.2, 'pop,funk,rock'),
    ('Eagles', 'Hotel California', 1976, 31.8, 'soft rock'),
    ('AC/DC', 'Back in Black', 1980, 30.1, 'Hard rock'),
    ('Eagles', 'Their Greatest Hits', 1976, 41.2, 'Country rock'),
    ('Shania Twain', 'Come On Over', 1997, 30.4, 'Country, Pop'),
    ('Led Zeppelin', 'Led Zeppelin IV', 1971, 30.4, 'Hard Rock');


    SELECT * FROM albums;
