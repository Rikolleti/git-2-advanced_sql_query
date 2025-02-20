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