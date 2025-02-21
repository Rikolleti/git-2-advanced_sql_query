INSERT INTO albums (album_name, release_year) VALUES ('ДруGOY', 2011);
INSERT INTO albums (album_name, release_year) VALUES ('Горгород', 2015);
INSERT INTO albums (album_name, release_year) VALUES ('Баста/Гуф', 2010);
INSERT INTO albums (album_name, release_year) VALUES ('Районы-кварталы', 2004);
INSERT INTO albums (album_name, release_year) VALUES ('Обратная сторона Земли', 2001);
INSERT INTO albums (album_name, release_year) VALUES ('Звери в городе', 2003);
INSERT INTO albums (album_name, release_year) VALUES ('Красота и Уродство', 2021);
INSERT INTO albums (album_name, release_year) VALUES ('Тихий омут', 2007);
INSERT INTO albums (album_name, release_year) VALUES ('Би-2', 2000);
INSERT INTO albums (album_name, release_year) VALUES ('Мяу кисс ми', 2001);
INSERT INTO albums (album_name, release_year) VALUES ('Горизонт событий', 2017);
INSERT INTO albums (album_name, release_year) VALUES ('Баста 3', 2019);

INSERT INTO artists (name) VALUES ('Звери');
INSERT INTO artists (name) VALUES ('Филипп Киркоров');
INSERT INTO artists (name) VALUES ('Oxxxymiron');
INSERT INTO artists (name) VALUES ('Баста');
INSERT INTO artists (name) VALUES ('Би-2');
INSERT INTO artists (name) VALUES ('Смысловые Галлюцинации');

INSERT INTO genres (genre_name) VALUES ('Поп');
INSERT INTO genres (genre_name) VALUES ('Рэп');
INSERT INTO genres (genre_name) VALUES ('Рок');

INSERT INTO artistsgenres (artist_id, genre_id) VALUES (1, 1); -- Группа "Звери" относится к жанрам "Поп" и "Рок"
INSERT INTO artistsgenres (artist_id, genre_id) VALUES (1, 3); -- Группа "Звери" относится к жанрам "Поп" и "Рок"
INSERT INTO artistsgenres (artist_id, genre_id) VALUES (2, 1); -- Филипп Киркоров относится к жанру "Поп"
INSERT INTO artistsgenres (artist_id, genre_id) VALUES (3, 2); -- Oxxxymiron относится к жанру "Рэп"
INSERT INTO artistsgenres (artist_id, genre_id) VALUES (4, 1); -- Баста относится к жанрам "Поп" и "Рэп"
INSERT INTO artistsgenres (artist_id, genre_id) VALUES (4, 2); -- Баста относится к жанрам "Поп" и "Рэп"
INSERT INTO artistsgenres (artist_id, genre_id) VALUES (5, 3); -- Группа "Би-2" относится к жанру "Рок"
INSERT INTO artistsgenres (artist_id, genre_id) VALUES (6, 3); -- Группа "Смысловые Галлюцинации" относится к жанру "Рок"

INSERT INTO artistsalbums (artist_id, album_id) VALUES (1, 4);  -- Звери - Районы-кварталы
INSERT INTO artistsalbums (artist_id, album_id) VALUES (1, 6);  -- Звери - Звери в городе
INSERT INTO artistsalbums (artist_id, album_id) VALUES (1, 8); -- Звери - Тихий омут
INSERT INTO artistsalbums (artist_id, album_id) VALUES (2, 1);  -- Филипп Киркоров - ДруGOY
INSERT INTO artistsalbums (artist_id, album_id) VALUES (3, 2);  -- Oxxxymiron - Горгород
INSERT INTO artistsalbums (artist_id, album_id) VALUES (3, 7);  -- Oxxxymiron - Красота и Уродство
INSERT INTO artistsalbums (artist_id, album_id) VALUES (4, 3);  -- Баста - Баста/Гуф
INSERT INTO artistsalbums (artist_id, album_id) VALUES (4, 12); -- Баста - Баста 3
INSERT INTO artistsalbums (artist_id, album_id) VALUES (5, 9); -- Би-2 - Би-2
INSERT INTO artistsalbums (artist_id, album_id) VALUES (5, 10); -- Би-2 - Мяу кисс ми
INSERT INTO artistsalbums (artist_id, album_id) VALUES (5, 11); -- Би-2 - Горизонт событий
INSERT INTO artistsalbums (artist_id, album_id) VALUES (6, 5);  -- Смысловые Галлюцинации - Обратная сторона Земли

-- Альбом: "Баста/Гуф" (2010), Исполнитель: Баста
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Другая волна', 304, 3);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Ходим по краю', 220, 3);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Зеркало', 324, 3);
-- Альбом: "Красота и Уродство" (2021), Исполнитель: Oxxxymiron
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Хоп-механика', 240, 7);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Агент', 180, 7);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Непрожитая жизнь', 210, 7);
-- Альбом: "Горгород" (2015), Исполнитель: Oxxxymiron
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Где нас нет', 200, 2);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Всего лишь писатель', 240, 2);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Кем ты стал', 180, 2);
-- Альбом: "Районы-кварталы" (2004), Исполнитель: Звери
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Районы-кварталы', 260, 4);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Прогулки', 240, 4);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Для тебя', 220, 4);
-- Альбом: "Тихий омут" (2007), Исполнитель: Смысловые Галлюцинации
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Тихий омут', 250, 8);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Мой друг', 230, 8);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Сны', 210, 8);
-- Альбом: "Мяу кисс ми" (2001), Исполнитель: Би-2
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Мяу кисс ми', 200, 10);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Сердце', 220, 10);
-- Альбом: "Горизонт событий" (2017), Исполнитель: Би-2
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Горизонт событий', 240, 11);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Лайки', 210, 11);
-- Альбом: "Баста 3" (2019), Исполнитель: Баста
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Урбан', 250, 12);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Моя игра', 230, 12);
-- Альбом: "ДруGOY" (2011), Исполнитель: Филипп Киркоров
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Просто Подари', 240, 1);
-- Альбом: "Обратная сторона Земли" (2001), Исполнитель: Смысловые Галлюцинации
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Звездопад', 260, 5);
INSERT INTO songs (track_name, track_duration, album_id) VALUES ('Утром', 260, 5);

INSERT INTO collection (name, release_year) VALUES ('Золотая коллекция', 2005);
INSERT INTO collection (name, release_year) VALUES ('The Best of Oxxxymiron', 2020);
INSERT INTO collection (name, release_year) VALUES ('Баста: Хиты', 2018);
INSERT INTO collection (name, release_year) VALUES ('Легенды русского хип-хопа', 2015);
INSERT INTO collection (name, release_year) VALUES ('Би-2: Хиты', 2020);
INSERT INTO collection (name, release_year) VALUES ('Звериминус', 2015);
INSERT INTO collection (name, release_year) VALUES ('Смысловые Галлюцинации: Хиты', 2015);


-- Песни из альбома "Районы-кварталы" группы Звери в сборник "Золотая коллекция"
INSERT INTO collectiontracks (collection_id, track_id) VALUES (1, 10);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (1, 11);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (1, 12);

-- Песни из альбома "Красота и Уродство" и "Горгород" Oxxxymiron в сборник "The Best of Oxxxymiron"
INSERT INTO collectiontracks (collection_id, track_id) VALUES (2, 6);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (2, 7);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (2, 8);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (2, 9);

-- Песни из альбомов "Баста/Гуф" и "Баста 3" в сборник "Баста: Хиты"
INSERT INTO collectiontracks (collection_id, track_id) VALUES (3, 20);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (3, 21);

-- Песни из "Баста/Гуф" и "Горгород" в сборник "Легенды русского хип-хопа"
INSERT INTO collectiontracks (collection_id, track_id) VALUES (4, 20);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (4, 21);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (4, 6);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (4, 7);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (4, 8);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (4, 9);

-- Песни из альбомов "Мяу кисс ми" и "Горизонт событий" группы Би-2 в сборник "Би-2: Хиты"
INSERT INTO collectiontracks (collection_id, track_id) VALUES (5, 16);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (5, 17);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (5, 18);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (5, 19);

-- Песни из альбома "Районы-кварталы" группы Звери в сборник "Звериминус"
INSERT INTO collectiontracks (collection_id, track_id) VALUES (6, 10);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (6, 11);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (6, 12);

-- Песни из альбомов "Тихий омут" и "Обратная сторона Земли" группы Смысловые Галлюцинации в сборник "Смысловые Галлюцинации: Хиты"
INSERT INTO collectiontracks (collection_id, track_id) VALUES (7, 13);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (7, 14);
INSERT INTO collectiontracks (collection_id, track_id) VALUES (7, 15);