-- Albums released after 1991
select * from albums where release_date > 1991
--     Albums with the genre 'disco'
select * from albums where genres = 'disco'
--     Albums by 'Whitney Houston' (...or maybe an artist of your choice)
select * from albums where artist = 'Whitney Houston'

-- Albums released after 1991
delete from albums where release_date > 1991
--     Albums with the genre 'disco'
delete from albums where genres = 'disco'
--     Albums by 'Whitney Houston' (...or maybe an artist of your choice)
delete from albums where artist = 'Whitney Houston'