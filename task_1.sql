PGDMP     "    :                }            postgres    14.15 (Homebrew)    14.15 (Homebrew) :    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    14106    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
             	   azmamedov    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                	   azmamedov    false    3733                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             	   azmamedov    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                	   azmamedov    false    3            �            1259    16458    albums    TABLE     �   CREATE TABLE public.albums (
    id integer NOT NULL,
    album_name character varying(60) NOT NULL,
    release_year integer NOT NULL
);
    DROP TABLE public.albums;
       public         heap    postgres    false    3            �            1259    16457    albums_id_seq    SEQUENCE     �   CREATE SEQUENCE public.albums_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.albums_id_seq;
       public          postgres    false    3    212            �           0    0    albums_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;
          public          postgres    false    211            �            1259    16451    artists    TABLE     b   CREATE TABLE public.artists (
    id integer NOT NULL,
    name character varying(60) NOT NULL
);
    DROP TABLE public.artists;
       public         heap    postgres    false    3            �            1259    16450    artists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.artists_id_seq;
       public          postgres    false    210    3            �           0    0    artists_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.artists_id_seq OWNED BY public.artists.id;
          public          postgres    false    209            �            1259    16515    artistsalbums    TABLE     e   CREATE TABLE public.artistsalbums (
    artist_id integer NOT NULL,
    album_id integer NOT NULL
);
 !   DROP TABLE public.artistsalbums;
       public         heap    postgres    false    3            �            1259    16485    artistsgenres    TABLE     e   CREATE TABLE public.artistsgenres (
    artist_id integer NOT NULL,
    genre_id integer NOT NULL
);
 !   DROP TABLE public.artistsgenres;
       public         heap    postgres    false    3            �            1259    16479 
   collection    TABLE     �   CREATE TABLE public.collection (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    release_year integer NOT NULL
);
    DROP TABLE public.collection;
       public         heap    postgres    false    3            �            1259    16478    collection_id_seq    SEQUENCE     �   CREATE SEQUENCE public.collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.collection_id_seq;
       public          postgres    false    218    3            �           0    0    collection_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.collection_id_seq OWNED BY public.collection.id;
          public          postgres    false    217            �            1259    16530    collectiontracks    TABLE     l   CREATE TABLE public.collectiontracks (
    collection_id integer NOT NULL,
    track_id integer NOT NULL
);
 $   DROP TABLE public.collectiontracks;
       public         heap    postgres    false    3            �            1259    16465    genres    TABLE     g   CREATE TABLE public.genres (
    id integer NOT NULL,
    genre_name character varying(60) NOT NULL
);
    DROP TABLE public.genres;
       public         heap    postgres    false    3            �            1259    16464    genres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public          postgres    false    214    3            �           0    0    genres_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;
          public          postgres    false    213            �            1259    16472    songs    TABLE     �   CREATE TABLE public.songs (
    id integer NOT NULL,
    track_name character varying(60) NOT NULL,
    track_duration integer NOT NULL,
    album_id integer
);
    DROP TABLE public.songs;
       public         heap    postgres    false    3            �            1259    16471    songs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.songs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.songs_id_seq;
       public          postgres    false    3    216            �           0    0    songs_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;
          public          postgres    false    215            �           2604    16461 	   albums id    DEFAULT     f   ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);
 8   ALTER TABLE public.albums ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    16454 
   artists id    DEFAULT     h   ALTER TABLE ONLY public.artists ALTER COLUMN id SET DEFAULT nextval('public.artists_id_seq'::regclass);
 9   ALTER TABLE public.artists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    16482    collection id    DEFAULT     n   ALTER TABLE ONLY public.collection ALTER COLUMN id SET DEFAULT nextval('public.collection_id_seq'::regclass);
 <   ALTER TABLE public.collection ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16468 	   genres id    DEFAULT     f   ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);
 8   ALTER TABLE public.genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    16475    songs id    DEFAULT     d   ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);
 7   ALTER TABLE public.songs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    16458    albums 
   TABLE DATA           >   COPY public.albums (id, album_name, release_year) FROM stdin;
    public          postgres    false    212   �>       �          0    16451    artists 
   TABLE DATA           +   COPY public.artists (id, name) FROM stdin;
    public          postgres    false    210   �?       �          0    16515    artistsalbums 
   TABLE DATA           <   COPY public.artistsalbums (artist_id, album_id) FROM stdin;
    public          postgres    false    220   s@       �          0    16485    artistsgenres 
   TABLE DATA           <   COPY public.artistsgenres (artist_id, genre_id) FROM stdin;
    public          postgres    false    219   �@       �          0    16479 
   collection 
   TABLE DATA           <   COPY public.collection (id, name, release_year) FROM stdin;
    public          postgres    false    218   �@       �          0    16530    collectiontracks 
   TABLE DATA           C   COPY public.collectiontracks (collection_id, track_id) FROM stdin;
    public          postgres    false    221   �A       �          0    16465    genres 
   TABLE DATA           0   COPY public.genres (id, genre_name) FROM stdin;
    public          postgres    false    214   %B       �          0    16472    songs 
   TABLE DATA           I   COPY public.songs (id, track_name, track_duration, album_id) FROM stdin;
    public          postgres    false    216   ZB       �           0    0    albums_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.albums_id_seq', 1, false);
          public          postgres    false    211            �           0    0    artists_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.artists_id_seq', 6, true);
          public          postgres    false    209            �           0    0    collection_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.collection_id_seq', 10, true);
          public          postgres    false    217            �           0    0    genres_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genres_id_seq', 3, true);
          public          postgres    false    213            �           0    0    songs_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.songs_id_seq', 12, true);
          public          postgres    false    215            �           2606    16463    albums albums_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.albums DROP CONSTRAINT albums_pkey;
       public            postgres    false    212            �           2606    16456    artists artists_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.artists DROP CONSTRAINT artists_pkey;
       public            postgres    false    210            �           2606    16484    collection collection_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.collection
    ADD CONSTRAINT collection_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.collection DROP CONSTRAINT collection_pkey;
       public            postgres    false    218            �           2606    16470    genres genres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    214            �           2606    16519    artistsalbums pk_artistsalbums 
   CONSTRAINT     m   ALTER TABLE ONLY public.artistsalbums
    ADD CONSTRAINT pk_artistsalbums PRIMARY KEY (artist_id, album_id);
 H   ALTER TABLE ONLY public.artistsalbums DROP CONSTRAINT pk_artistsalbums;
       public            postgres    false    220    220            �           2606    16514    artistsgenres pk_artistsgenres 
   CONSTRAINT     m   ALTER TABLE ONLY public.artistsgenres
    ADD CONSTRAINT pk_artistsgenres PRIMARY KEY (artist_id, genre_id);
 H   ALTER TABLE ONLY public.artistsgenres DROP CONSTRAINT pk_artistsgenres;
       public            postgres    false    219    219            �           2606    16534 $   collectiontracks pk_collectiontracks 
   CONSTRAINT     w   ALTER TABLE ONLY public.collectiontracks
    ADD CONSTRAINT pk_collectiontracks PRIMARY KEY (collection_id, track_id);
 N   ALTER TABLE ONLY public.collectiontracks DROP CONSTRAINT pk_collectiontracks;
       public            postgres    false    221    221            �           2606    16477    songs songs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.songs DROP CONSTRAINT songs_pkey;
       public            postgres    false    216            �           2606    16525 )   artistsalbums artistsalbums_album_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.artistsalbums
    ADD CONSTRAINT artistsalbums_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.albums(id);
 S   ALTER TABLE ONLY public.artistsalbums DROP CONSTRAINT artistsalbums_album_id_fkey;
       public          postgres    false    212    220    3556            �           2606    16520 *   artistsalbums artistsalbums_artist_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.artistsalbums
    ADD CONSTRAINT artistsalbums_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artists(id);
 T   ALTER TABLE ONLY public.artistsalbums DROP CONSTRAINT artistsalbums_artist_id_fkey;
       public          postgres    false    210    220    3554            �           2606    16490 *   artistsgenres artistsgenres_artist_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.artistsgenres
    ADD CONSTRAINT artistsgenres_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artists(id);
 T   ALTER TABLE ONLY public.artistsgenres DROP CONSTRAINT artistsgenres_artist_id_fkey;
       public          postgres    false    210    3554    219            �           2606    16495 )   artistsgenres artistsgenres_genre_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.artistsgenres
    ADD CONSTRAINT artistsgenres_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genres(id);
 S   ALTER TABLE ONLY public.artistsgenres DROP CONSTRAINT artistsgenres_genre_id_fkey;
       public          postgres    false    3558    219    214            �           2606    16535 4   collectiontracks collectiontracks_collection_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.collectiontracks
    ADD CONSTRAINT collectiontracks_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.collection(id);
 ^   ALTER TABLE ONLY public.collectiontracks DROP CONSTRAINT collectiontracks_collection_id_fkey;
       public          postgres    false    221    218    3562            �           2606    16540 /   collectiontracks collectiontracks_track_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.collectiontracks
    ADD CONSTRAINT collectiontracks_track_id_fkey FOREIGN KEY (track_id) REFERENCES public.songs(id);
 Y   ALTER TABLE ONLY public.collectiontracks DROP CONSTRAINT collectiontracks_track_id_fkey;
       public          postgres    false    3560    216    221            �           2606    16545    songs fk_songs_albums    FK CONSTRAINT     v   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT fk_songs_albums FOREIGN KEY (album_id) REFERENCES public.albums(id);
 ?   ALTER TABLE ONLY public.songs DROP CONSTRAINT fk_songs_albums;
       public          postgres    false    3556    212    216            �   �   x�M�]N�@���S�����%w�0M�R�*�JH�	�B�"�M���F�U���~�g,�7]��O��,�3�3v�F�{8Zm)�1眰Ơ|�:�˸<%<ػ��x�6�xZ�b0e&\�\�T�OG��c����1'<�J�`:�W��tnE���M2�k�읗\^����^��6������e4є%6	��v�MX���_�`�3��#��}��Br8��=㽝�����3���O      �   �   x�3�0�¦[/6\��e�yaɅv���.̺�(���> ���&.cN������̢�<.�/l��x���.Sg���煅�\��4��b���
&_� ���w�h�^�6��+F��� �%L5      �   1   x���  ��������𐬃�J�)hj��5�dh�͔�n���      �       x�3�4�2�4�2�4�2bS ��c���� 5~      �   �   x�U��n�@��ۧ� �#�����2-QR R��t�(i,��)R��� ��
�oĮ�����}3Ss�F�#
�#��P^��p��r>�y�w��=�]�i��������d��2�ѝçg�m3֊�K�Z�E��G�z��I�2����J�-
�w�Tt� �o��̰g]���p�k��4%��#Ѳzd2U�I��|�h��8I���5L��,���K˙�6�P%�+!��      �   3   x���  ����p�B�u �2���=I��5�L-���ʖ�N.�      �   %   x�3�0�¾���8/,��d@�]\1z\\\  �      �     x�P;N�@���%A��_|�OAD$@T) !њ$F	��
�n������{��;_����6�������R�h	|cώ�! Y>��.��r<:_!Ur+�wq�q�(�}�?_�R"�v��+�D:Jm�w��5�@i�3�FN<��-�X��z�5)L���t���T��m~h� ��<	�0�|e˳��ofr���"�R� ��� >s�&�ô���U�G'�'�o�Ũ@�('��h���Ѣ:��5�N5uc�He@Lv{cf�	:�I     