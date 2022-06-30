USE codeup_test_db;

# The name of all albums by Pink Floyd
SELECT * FROM albums
        WHERE artist = 'Pink Floyd';

#The year Sgt Pepper's Lonely Heart Club Band was released
SELECT release_date
FROM albums
WHERE name = 'Sgt Peppers Lonely Heart Club Band';

#The genre for nevermind
SELECT genre
FROM albums
WHERE name = 'Nevermind';

# Which albums were released in the 1990s
SELECT name
FROM albums
WHERE release_date >= 1990;

# Albums that had less than 20mil certified sales
SELECT * FROM  albums
WHERE sales < 20;

#All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT * FROM albums
WHERE genre = 'Rock';