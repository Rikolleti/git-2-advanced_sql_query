SELECT track_name, track_duration
FROM songs
ORDER BY track_duration DESC
LIMIT 1;

SELECT track_name, track_duration
FROM songs
WHERE track_duration >= 210;

SELECT *
FROM collection
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM artists
WHERE name NOT LIKE '% %' and name NOT LIKE '%-%';

SELECT *
FROM songs
WHERE 'Мой' = ANY(regexp_split_to_array(track_name, '\s+')) 
    OR 'My' = ANY(regexp_split_to_array(track_name, '\s+'));


SELECT count(artists.name), genre_name
FROM artistsgenres
JOIN artists on artistsgenres.artist_id = artists.id
JOIN genres on artistsgenres.genre_id = genres.id
GROUP BY genres.genre_name;

SELECT COUNT(songs.id) 
FROM songs
JOIN albums ON songs.album_id = albums.id
WHERE albums.release_year BETWEEN 2019 AND 2020;

SELECT avg(track_duration), album_name
FROM songs
JOIN albums on songs.album_id = albums.id
GROUP BY albums.album_name;

SELECT artists.name
FROM artists
WHERE artists.name NOT IN (
    SELECT artists.name
    FROM artists
    JOIN artistsalbums ON artists.id = artistsalbums.artist_id
    JOIN albums ON artistsalbums.album_id = albums.id
    WHERE albums.release_year = 2020
);

SELECT collection.name
FROM collection
JOIN collectiontracks ON collection.id = collectiontracks.collection_id
JOIN songs ON songs.id = collectiontracks.track_id
JOIN albums ON albums.id = songs.album_id
JOIN artistsalbums ON artistsalbums.album_id = albums.id
JOIN artists ON artists.id = artistsalbums.artist_id
group by (collection.name, artists.name)
HAVING artists.name = 'Баста';


SELECT DISTINCT albums.album_name
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
    SELECT album_id, COUNT(*) AS track_count
    FROM songs
    GROUP BY album_id
) AS album_tracks ON albums.id = album_tracks.album_id
WHERE album_tracks.track_count = (
    SELECT COUNT(*) AS min_track_count
    FROM songs
    GROUP BY album_id
    ORDER BY min_track_count
    LIMIT 1
);