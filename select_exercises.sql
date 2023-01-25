USE codeup_test_db;

# Select 'the name of all albums by pink floyd' as message
SELECT album_name AS 'Pink Floyd Albums' FROM albums WHERE artist='Pink Floyd';



# --select 'the year Sgt. Pepper's lonely hearts club band was released' as message
SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club Band release date' FROM albums WHERE album_name='Sgt. Pepper''s Lonely Hearts Club Band';


-- select 'the genre for supernatural' as message
SELECT genre AS 'Genre of Supernatural' FROM albums WHERE album_name ='Supernatural';

-- select which albums were released in the 1990s
SELECT album_name as 'Albums released in the 90s' FROM albums WHERE release_date BETWEEN 1900 AND 1999;

-- select which albums had less than 20 million certified sales
SELECT album_name as 'Less than 20MIl Sales' FROM albums WHERE sales < 20.0;

SELECT album_name as 'Albums with the genre of Rock' FROM albums WHERE genre = 'Rock';
