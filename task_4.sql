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