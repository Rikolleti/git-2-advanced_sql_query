SELECT track_name, track_duration
FROM songs
ORDER BY track_duration DESC
LIMIT 1;

SELECT track_name, track_duration
FROM songs
WHERE track_duration > 210;

SELECT *
FROM collection
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM artists
WHERE name NOT LIKE '% %';

SELECT *
FROM songs
WHERE track_name ILIKE '%мой%' OR track_name ILIKE '%my%';


SELECT count(artists.name), genre_name FROM artistsgenres
JOIN artists on artistsgenres.artist_id = artists.id
JOIN genres on artistsgenres.genre_id = genres.id
GROUP BY genres.genre_name;

SELECT count(track_name), release_year from songs
JOIN albums on songs.album_id = albums.id
GROUP BY albums.release_year
HAVING albums.release_year BETWEEN 2019 AND 2020;

SELECT avg(track_duration), album_name FROM songs
JOIN albums on songs.album_id = albums.id
GROUP BY albums.album_name;

SELECT artists.name FROM artists
LEFT JOIN artistsalbums ON artists.id = artistsalbums.artist_id
LEFT JOIN albums ON artistsalbums.album_id = albums.id
AND albums.release_year = 2020
group by (artists.name);

SELECT collection.name FROM collection
JOIN collectiontracks ON collection.id = collectiontracks.collection_id
JOIN songs ON songs.id = collectiontracks.track_id
JOIN albums ON albums.id = songs.album_id
JOIN artistsalbums ON artistsalbums.album_id = albums.id
JOIN artists ON artists.id = artistsalbums.artist_id
group by (collection.name, artists.name)
having artists.name = 'Баста';


SELECT distinct albums.album_name
FROM albums
JOIN artistsalbums ON artistsalbums.album_id = albums.id
JOIN artists ON artists.id = artistsalbums.artist_id
JOIN (
    SELECT artist_id
    FROM artistsgenres
    GROUP BY artist_id
    HAVING COUNT(DISTINCT genre_id) > 1
) AS multi_genre_artists ON multi_genre_artists.artist_id = artists.id;


SELECT distinct songs.track_name
FROM songs
LEFT JOIN collectiontracks ON collectiontracks.track_id = songs.id
WHERE collectiontracks.track_id is null;

SELECT DISTINCT artists.name, songs.track_duration 
FROM artists
JOIN artistsalbums ON artistsalbums.artist_id = artists.id
JOIN albums ON albums.id = artistsalbums.album_id
JOIN songs ON songs.album_id = albums.id
WHERE songs.track_duration = (
    SELECT MIN(track_duration)
    FROM songs
);

SELECT albums.album_name
FROM albums
JOIN (
    SELECT album_id, COUNT(*) as total_count
    FROM songs
    GROUP BY album_id
) AS min_tracks ON min_tracks.album_id = albums.id
ORDER BY min_tracks.total_count desc -- Тут сделал название альбома, содержащих наибольшее количество треков.
LIMIT 1;