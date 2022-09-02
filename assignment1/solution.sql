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
    userid integer REFERENCES users(userid),
    movieid integer REFERENCES movies(movieid),
    rating numeric (2, 1),
    timestamp bigint,
    primary key (userid, movieid),
    CHECK ( rating <= 5 AND rating >= 0)
);

--tags
CREATE TABLE tags (
    userid integer REFERENCES users(userid),
    movieid integer REFERENCES movies(movieid),
    tagid integer REFERENCES taginfo(tagid),
    timestamp bigint
);

--hasagenre
CREATE TABLE hasagenre (
    movieid integer REFERENCES movies(movieid),
    genreid integer REFERENCES genres(genreid)
);
