use wesley

-- All albums in your table.
select album_name from albums
--     All albums released before 1980
select album_name from albums where release_date <= 1779
--     All albums by Michael Jackson
select album_name from albums where artist = 'Michael Jackson'