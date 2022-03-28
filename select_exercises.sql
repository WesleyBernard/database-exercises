use wesley
-- The name of all albums by Pink Floyd.
select album_name from albums where artist = 'Pink Floyd'
--     The year Sgt. Pepper's Lonely Hearts Club Band was released
select release_date from albums where album_name = "Sgt. Pepper's Lonely Hearts Club Band"
--     The genre for Nevermind
select genres from albums where album_name = "nevermind"
--     Which albums were released in the 1990s
select album_name, release_date from albums where release_date between 1990 and 1999
--     Which albums had less than 20 million certified sales
select album_name, sales from albums where sales <= 20;
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
select album_name from albums where genres = "Rock"