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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: albums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.albums (
    id integer NOT NULL,
    album_name character varying(60) NOT NULL,
    release_year integer NOT NULL
);


ALTER TABLE public.albums OWNER TO postgres;

--
-- Name: albums_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.albums_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.albums_id_seq OWNER TO postgres;

--
-- Name: albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;


--
-- Name: artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artists (
    id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.artists OWNER TO postgres;

--
-- Name: artists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artists_id_seq OWNER TO postgres;

--
-- Name: artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.artists_id_seq OWNED BY public.artists.id;


--
-- Name: artistsalbums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artistsalbums (
    artist_id integer NOT NULL,
    album_id integer NOT NULL
);


ALTER TABLE public.artistsalbums OWNER TO postgres;

--
-- Name: artistsgenres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artistsgenres (
    artist_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.artistsgenres OWNER TO postgres;

--
-- Name: collection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.collection (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    release_year integer NOT NULL
);


ALTER TABLE public.collection OWNER TO postgres;

--
-- Name: collection_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collection_id_seq OWNER TO postgres;

--
-- Name: collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.collection_id_seq OWNED BY public.collection.id;


--
-- Name: collectiontracks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.collectiontracks (
    collection_id integer NOT NULL,
    track_id integer NOT NULL
);


ALTER TABLE public.collectiontracks OWNER TO postgres;

--
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    id integer NOT NULL,
    genre_name character varying(60) NOT NULL
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_id_seq OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;


--
-- Name: songs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.songs (
    id integer NOT NULL,
    track_name character varying(60) NOT NULL,
    track_duration integer NOT NULL,
    album_id integer
);


ALTER TABLE public.songs OWNER TO postgres;

--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.songs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.songs_id_seq OWNER TO postgres;

--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;


--
-- Name: albums id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);


--
-- Name: artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists ALTER COLUMN id SET DEFAULT nextval('public.artists_id_seq'::regclass);


--
-- Name: collection id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collection ALTER COLUMN id SET DEFAULT nextval('public.collection_id_seq'::regclass);


--
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);


--
-- Name: songs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);


--
-- Name: collection collection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collection
    ADD CONSTRAINT collection_pkey PRIMARY KEY (id);


--
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


--
-- Name: artistsalbums pk_artistsalbums; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artistsalbums
    ADD CONSTRAINT pk_artistsalbums PRIMARY KEY (artist_id, album_id);


--
-- Name: artistsgenres pk_artistsgenres; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artistsgenres
    ADD CONSTRAINT pk_artistsgenres PRIMARY KEY (artist_id, genre_id);


--
-- Name: collectiontracks pk_collectiontracks; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collectiontracks
    ADD CONSTRAINT pk_collectiontracks PRIMARY KEY (collection_id, track_id);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);


--
-- Name: artistsalbums artistsalbums_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artistsalbums
    ADD CONSTRAINT artistsalbums_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.albums(id);


--
-- Name: artistsalbums artistsalbums_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artistsalbums
    ADD CONSTRAINT artistsalbums_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artists(id);


--
-- Name: artistsgenres artistsgenres_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artistsgenres
    ADD CONSTRAINT artistsgenres_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artists(id);


--
-- Name: artistsgenres artistsgenres_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artistsgenres
    ADD CONSTRAINT artistsgenres_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genres(id);


--
-- Name: collectiontracks collectiontracks_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collectiontracks
    ADD CONSTRAINT collectiontracks_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.collection(id);


--
-- Name: collectiontracks collectiontracks_track_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collectiontracks
    ADD CONSTRAINT collectiontracks_track_id_fkey FOREIGN KEY (track_id) REFERENCES public.songs(id);


--
-- Name: songs fk_songs_albums; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT fk_songs_albums FOREIGN KEY (album_id) REFERENCES public.albums(id);


--
-- PostgreSQL database dump complete
--

