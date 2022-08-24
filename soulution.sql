-- create tables and relation

-- users
CREATE TABLE users (
    userid integer NOT NULL,
    name text,
    primary key (userid)
);

-- movies
CREATE TABLE movies (
    movieid integer NOT NULL,
    title text,
    primary key (movieid)
);

-- taginfo
CREATE TABLE taginfo (
    tagid integer NOT NULL,
    title text,
    primary key (tagid)
);

--genres
CREATE TABLE genres (
    genreid integer NOT NULL,
    title text,
    primary key (genreid)
);

--ratings
CREATE TABLE ratings (
    userid integer NOT NULL,
    movieid integer NOT NULL,
    rating smallint,
    timestamp bigint
);

--tags
CREATE TABLE tags (
    userid integer NOT NULL,
    movieid integer NOT NULL,
    tagid integer,
    timestamp bigint
);

--hasagenre
CREATE TABLE hasagenre (
    movieid integer NOT NULL,
    genreid integer NOT NULL
)