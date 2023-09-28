create table if not exists artists (
	artist_id SERIAL primary key,
	artist_name varchar(30) not null
);

create table genres (
	genre_id SERIAL primary key,
	genre_name varchar(30) UNIQUE not NULL
);

create table albums (
	album_id SERIAL primary key,
	album_name varchar(30) not null,
	year_of_issue integer not null
);

create table tracks (
	track_id SERIAL primary key,
	track_name varchar(30) not null,
	duration integer not null,
	album_id integer references albums(album_id)
);

create table collections (
	collection_id SERIAL primary key,
	collection_name varchar(30) not null,
	year_of_issue integer not null
);

create table artist_genre (
	artist_id integer not null references artists(artist_id),
	genre_id integer not null references genres(genre_id),
	constraint g_a primary key (artist_id, genre_id)
);

create table artist_album (
	artist_id integer not null references artists(artist_id),
	album_id integer not null references albums(album_id),
	constraint a_a primary key (artist_id, album_id)
);

create table collection_track (
	collection_id integer not null references collections(collection_id),
	track_id integer not null references tracks(track_id),
	constraint c_t primary key (collection_id, track_id)
);
