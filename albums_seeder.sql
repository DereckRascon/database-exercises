USE codeup_test_db;
truncate albums;

    INSERT INTO albums(artist, album_name, release_date, sales, genre)VALUES
    ('Michael Jackson', 'Thriller', 1982, 51.2, 'Pop,Funk,Rock'),
    ('Eagles', 'Hotel California', 1976, 31.8, 'Soft Rock'),
    ('AC/DC', 'Back in Black', 1980, 30.1, 'Hard rock'),
    ('Eagles', 'Their Greatest Hits', 1976, 41.2, 'Country Rock'),
    ('Shania Twain', 'Come On Over', 1997, 30.4, 'Country, Pop'),
    ('Led Zeppelin', 'Led Zeppelin IV', 1971, 30.4, 'Hard Rock'),
    ('Whitney Houston', 'The Bodyguard', 1992, 28.7, 'R&b, Soul'),
    ('Pink Floyd', 'The Dark side of the Moon', 1973, 24.8, 'Progressive Rock'),
    ('Fleetwood Mac', 'Rumours', 1977, 29.3, 'Soft Rock'),
    ('Bee Gees', 'Saturday night fever', 1977, 22.1, 'Disco'),
    ('Michael Jackson', 'Bad', 1987, 21.1, 'Pop, Funk, Rock'),
    ('Meat Loaf', 'Bat out of Hell', 1977, 22, 'Hard Rock'),
    ('Alanis Morissette', 'Jagged Little Pill', 1995, 25.4, 'Alternative Rock'),
    ('Celine Dion', 'Falling into you', 1996, 21.1, 'Pop, Soft Rock'),
    ('Bob Marley & The Wailers', 'Legend', 1984, 22.9, 'Reggae'),
    ('Guns N'' Roses', 'Appetite for Destruction', 1987, 22.8, 'Hard Rock'),
    ('Bruce Springsteen', 'Born in the U.S.A', 1894, 22, 'Heartland Rock'),
    ('ABBA', 'Gold: Greatest Hits', 1992, 21.6, 'Pop, Disco'),
    ('Dire Straits', 'Brothers in Arms', 1985, 21.1, 'Roots Rock'),
    ('Santana', 'Supernatural', 1999, 20.8, 'Latin Rock'),
    ('Madonna', 'The Immaculate Collection', 1990, 19.8, 'Pop, Dance'),
    ('Pink Floyd', 'The Wall', 1979, 18.9, 'Progressive rock'),
    ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 18.3, 'Rock'),
    ('Michael Jackson', 'Dangerous', 1991, 17.0, 'R&B, Pop'),
    ('The Beatles', 'Abbey Road', 1969, 16.9, 'Rock');


    SELECT * FROM albums;
