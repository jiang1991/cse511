create table query4
(
    movieid integer,
    title   text
);

alter table query4
    owner to postgres;

INSERT INTO public.query4 (movieid, title) VALUES (1, 'Comedy movie');
INSERT INTO public.query4 (movieid, title) VALUES (3, 'Comedy and Romance movie');
INSERT INTO public.query4 (movieid, title) VALUES (4, 'Comedy movie 1');
