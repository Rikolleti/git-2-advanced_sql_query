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