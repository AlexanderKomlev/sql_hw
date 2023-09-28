-- ЗАДАНИЕ 2
-- 1.

SELECT track_name, duration FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

-- 2.

SELECT track_name FROM tracks
WHERE duration >= 210;

-- 3.

SELECT collection_name FROM collections
WHERE year_of_issue BETWEEN 2018 AND 2020;

-- 4.

SELECT artist_name FROM artists
WHERE artist_name NOT LIKE '% %';

-- 5.

SELECT track_name FROM tracks
WHERE track_name LIKE '% my %';

-- ЗАДАНИЕ 3
-- 1.

SELECT genre_name, COUNT(ag.artist_id)  FROM genres AS g
JOIN artist_genre AS ag ON g.genre_id = ag.genre_id
GROUP BY genre_name;

-- 2.

SELECT COUNT(*) FROM tracks AS t 
JOIN albums AS a ON t.album_id  = a.album_id
WHERE a.year_of_issue BETWEEN 2019 AND 2020;

-- 3.

SELECT album_name, AVG(duration) FROM albums AS a 
JOIN tracks AS t ON t.album_id = a.album_id
GROUP BY album_name;

-- 4.

SELECT artist_name FROM artists AS a
JOIN artist_album AS aa ON aa.artist_id = a.artist_id 
JOIN albums AS a2 ON a2.album_id = aa.album_id 
WHERE a2.year_of_issue != 2020;

-- 5.

SELECT DISTINCT collection_name from collections AS c 
JOIN collection_track AS ct ON c.collection_id = ct.collection_id 
JOIN tracks AS t ON ct.track_id = t.track_id 
JOIN albums AS a ON t.album_id = a.album_id 
JOIN artist_album AS aa ON a.album_id = aa.album_id 
JOIN artists AS a2 ON aa.artist_id = a2.artist_id
WHERE a2.artist_name = 'Led Zeppelin';

-- ЗАДАНИЕ 4
-- 1.

SELECT album_name FROM albums AS a 
JOIN artist_album AS aa ON a.album_id = aa.album_id  
JOIN artists AS a2 ON aa.artist_id = a2.artist_id 
JOIN artist_genre AS ag ON a2.artist_id = ag.artist_id 
JOIN genres AS g ON ag.genre_id = g.genre_id 
GROUP BY album_name 
HAVING COUNT(g.genre_id) > 1;

-- 2.

SELECT track_name FROM tracks AS t 
LEFT JOIN collection_track AS ct ON t.track_id = ct.track_id 
WHERE ct.track_id IS NULL;

-- 3.

SELECT artist_name FROM artists AS a
JOIN artist_album AS aa ON a.artist_id = aa.artist_id 
JOIN albums AS a2 ON aa.album_id = a2.album_id 
JOIN tracks AS t ON a2.album_id = t.album_id 
WHERE t.duration = (SELECT MIN(duration) FROM tracks);



