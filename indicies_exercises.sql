use wesley;

# CREATE INDEX [index name]
#     ON [Table name]([column1, column2, column3,...]);

create index album_name_artist
on albums (album_name, artist);

describe albums;