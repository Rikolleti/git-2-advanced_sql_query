--
-- PostgreSQL database dump
--

-- Dumped from database version 14.15 (Homebrew)
-- Dumped by pg_dump version 14.15 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.albums (id, album_name, release_year) VALUES (1, 'Ты, ты, ты', 1991);
INSERT INTO public.albums (id, album_name, release_year) VALUES (2, 'Незнакомка', 2003);
INSERT INTO public.albums (id, album_name, release_year) VALUES (3, 'Горгород', 2015);
INSERT INTO public.albums (id, album_name, release_year) VALUES (5, 'Баста 3', 2010);
INSERT INTO public.albums (id, album_name, release_year) VALUES (6, 'Баста/Гуф', 2010);
INSERT INTO public.albums (id, album_name, release_year) VALUES (7, 'Мяу кисс ми', 2001);
INSERT INTO public.albums (id, album_name, release_year) VALUES (8, 'Лунапарк', 2009);
INSERT INTO public.albums (id, album_name, release_year) VALUES (9, 'Районы-кварталы', 2004);
INSERT INTO public.albums (id, album_name, release_year) VALUES (10, 'Дальше', 2011);
INSERT INTO public.albums (id, album_name, release_year) VALUES (11, '3000', 1995);
INSERT INTO public.albums (id, album_name, release_year) VALUES (12, 'Обратная сторона Земли', 2001);
INSERT INTO public.albums (id, album_name, release_year) VALUES (4, 'Красота и Уродство', 2020);


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.artists (id, name) VALUES (1, 'Звери');
INSERT INTO public.artists (id, name) VALUES (2, 'Филипп Киркоров');
INSERT INTO public.artists (id, name) VALUES (3, 'Oxxxymiron');
INSERT INTO public.artists (id, name) VALUES (4, 'Баста');
INSERT INTO public.artists (id, name) VALUES (5, 'Би-2');
INSERT INTO public.artists (id, name) VALUES (6, 'Смысловые Галлюцинации');


--
-- Data for Name: artistsalbums; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (1, 9);
INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (1, 10);
INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (2, 1);
INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (2, 2);
INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (3, 3);
INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (3, 4);
INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (4, 5);
INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (4, 6);
INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (5, 7);
INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (5, 8);
INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (6, 11);
INSERT INTO public.artistsalbums (artist_id, album_id) VALUES (6, 12);


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.genres (id, genre_name) VALUES (1, 'Поп');
INSERT INTO public.genres (id, genre_name) VALUES (2, 'Рэп');
INSERT INTO public.genres (id, genre_name) VALUES (3, 'Рок');


--
-- Data for Name: artistsgenres; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.artistsgenres (artist_id, genre_id) VALUES (1, 3);
INSERT INTO public.artistsgenres (artist_id, genre_id) VALUES (2, 1);
INSERT INTO public.artistsgenres (artist_id, genre_id) VALUES (3, 2);
INSERT INTO public.artistsgenres (artist_id, genre_id) VALUES (4, 2);
INSERT INTO public.artistsgenres (artist_id, genre_id) VALUES (5, 3);
INSERT INTO public.artistsgenres (artist_id, genre_id) VALUES (6, 3);
INSERT INTO public.artistsgenres (artist_id, genre_id) VALUES (4, 1);
INSERT INTO public.artistsgenres (artist_id, genre_id) VALUES (1, 1);


--
-- Data for Name: collection; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.collection (id, name, release_year) VALUES (1, 'Золотая коллекция', 2005);
INSERT INTO public.collection (id, name, release_year) VALUES (2, '55 Голд', 2022);
INSERT INTO public.collection (id, name, release_year) VALUES (3, 'The Best of Oxxxymiron', 2020);
INSERT INTO public.collection (id, name, release_year) VALUES (4, 'Баста: Хиты', 2018);
INSERT INTO public.collection (id, name, release_year) VALUES (5, 'Легенды русского хип-хопа', 2015);
INSERT INTO public.collection (id, name, release_year) VALUES (6, 'Без слов II', 2006);
INSERT INTO public.collection (id, name, release_year) VALUES (7, 'Би-2: Хиты', 2020);
INSERT INTO public.collection (id, name, release_year) VALUES (8, 'Звериминус', 2015);
INSERT INTO public.collection (id, name, release_year) VALUES (9, 'Смысловые Галлюцинации: Хиты', 2015);


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (1, 'Жестокая любовь', 227, 1);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (2, 'Снег', 300, 2);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (3, 'Где нас нет', 266, 3);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (4, 'Тень', 240, 4);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (5, 'Выпускной (Медлячок)', 344, 5);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (6, 'Моя игра', 316, 6);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (7, 'Мой рок-н-ролл', 275, 7);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (8, 'Феллини', 276, 8);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (9, 'Районы-кварталы', 205, 9);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (10, 'До скорой встречи', 309, 10);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (11, 'Вечно молодой', 191, 11);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (12, 'Чужое небо', 250, 12);
INSERT INTO public.songs (id, track_name, track_duration, album_id) VALUES (13, 'Личное дело', 230, 6);


--
-- Data for Name: collectiontracks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (1, 1); -- Золотая коллекция - Жестокая любовь
INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (2, 2); -- 55 Голд - Снег
INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (3, 3); -- The Best of Oxxxymiron - Где нас нет
INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (3, 4); -- The Best of Oxxxymiron - Тень
INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (4, 5); -- Баста: Хиты - Выпускной (Медлячок)
INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (5, 6); -- Легенды русского хип-хопа - Моя игра
INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (6, 7); -- Без слов II - Мой рок-н-ролл
INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (7, 8); -- Би-2: Хиты - Феллини
INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (8, 9); -- Звериминус - Районы-кварталы
INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (8, 10); -- Звериминус - До скорой встречи
INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (9, 11); -- Смысловые Галлюцинации: Хиты - Вечно молодой
INSERT INTO public.collectiontracks (collection_id, track_id) VALUES (9, 12); -- Смысловые Галлюцинации: Хиты - Чужое небо


--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.albums_id_seq', 1, false);


--
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artists_id_seq', 6, true);


--
-- Name: collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.collection_id_seq', 10, true);


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_id_seq', 3, true);


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.songs_id_seq', 13, true);


--
-- PostgreSQL database dump complete
--

