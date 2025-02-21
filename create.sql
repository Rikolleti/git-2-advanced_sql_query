-- Таблица albums
CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    album_name VARCHAR(255) NOT NULL,
    release_year INT
);

-- Таблица artists
CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Таблица artistsalbums (связь многие-ко-многим между artists и albums)
CREATE TABLE artistsalbums (
    artist_id INT REFERENCES artists(id),
    album_id INT REFERENCES albums(id),
    PRIMARY KEY (artist_id, album_id)
);

-- Таблица genres
CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
);

-- Таблица artistsgenres (связь многие-ко-многим между artists и genres)
CREATE TABLE artistsgenres (
    artist_id INT REFERENCES artists(id),
    genre_id INT REFERENCES genres(id),
    PRIMARY KEY (artist_id, genre_id)
);

-- Таблица songs
CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    track_name VARCHAR(255) NOT NULL,
    track_duration INT,
    album_id INT REFERENCES albums(id)
);

-- Таблица collection
CREATE TABLE collection (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    release_year INT
);

-- Таблица collectiontracks (связь многие-ко-многим между collection и songs)
CREATE TABLE collectiontracks (
    collection_id INT REFERENCES collection(id),
    track_id INT REFERENCES songs(id),
    PRIMARY KEY (collection_id, track_id)
);