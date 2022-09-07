create table query9
(
    movieid integer,
    rating  numeric(2, 1)
);

alter table query9
    owner to postgres;

INSERT INTO public.query9 (movieid, rating) VALUES (1, 3.0);
INSERT INTO public.query9 (movieid, rating) VALUES (3, 1.0);
