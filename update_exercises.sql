use wesley

-- All albums in your table.
-- Make all the albums 10 times more popular (sales * 10)
select album_name from albums;
update albums
set sales = sales * 10;
--     All albums released before 1980
-- Move all the albums before 1980 back to the 1800s.
select album_name from albums where release_date <= 1779
update albums
set release_date = release_date - 100
where release_date <= 1980;
--     All albums by Michael Jackson
-- Change 'Michael Jackson' to 'Peter Jackson'
select album_name from albums where artist = 'Michael Jackson'
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';