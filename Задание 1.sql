-- ЗАДАНИЕ 1

INSERT INTO artists(artist_name)
VALUES ('AC/DC'), ('Eminem'), ('Louis Armstrgong'), ('Led Zeppelin'), ('Imagine Dragons');

INSERT INTO genres(genre_name)
VALUES ('Rock'), ('Jazz'), ('Hip-hop'), ('Alternative rock');

INSERT INTO albums(album_name, year_of_issue)
VALUES ('Led Zeppelin II', 1969), ('The Eminem Show', 2002), ('Louis Under the Stars', 1958), ('Mercury — Act 1', 2020);

INSERT INTO tracks(track_name, duration, album_id)
VALUES ('Highway to Hell', 208, NULL),
	('Ramble On', 264, 1),
	('Whole Lotta Love', 274, 1),
	('Stormy Weather', 257, 3),
	('Body and Soul', 284, 3),
	('Superman', 350, 2),
	('Say Goodbye Hollywood', 273, 2),
	('In my time of dying', 192, 1),
	('Lonely', 160, 4),
	('Monday', 188, 4),
	('myself', 110, NULL),
	('by myself', 110, NULL),
	('bemy self', 110, NULL),
	('myself by', 110, NULL),
	('by myself by', 110, NULL),
	('beemy', 110, NULL),
	('premyne', 110, NULL),
	('my own', 110, NULL),
	('own my', 110, NULL),
	('oh my god', 110, NULL),
	('my', 110, NULL);
	
INSERT INTO collections(collection_name, year_of_issue)
VALUES	('collection_1', 2020),
	('collection_2', 2019),
	('collection_3', 2010);

INSERT INTO artist_genre
VALUES (1, 1),
	(2, 3),
	(3, 2),
	(4, 1),
	(5, 1),
	(5, 4);
	
INSERT INTO artist_album
VALUES (2, 2),
	(3, 3),
	(4, 1),
	(5, 4);

INSERT INTO collection_track
VALUES (1, 1),
	(1, 2),
	(1, 7),
	(2, 2),
	(2, 3),
	(3, 5),
	(3, 6),
	(3, 7);
