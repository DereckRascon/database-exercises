USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    album_name VARCHAR(50),
    release_date INT,
    sales float UNSIGNED,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);