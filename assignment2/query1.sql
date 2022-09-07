create table query1
(
    name       text,
    moviecount bigint
);

alter table query1
    owner to postgres;

INSERT INTO public.query1 (name, moviecount) VALUES ('Romance', 2);
INSERT INTO public.query1 (name, moviecount) VALUES ('Comedy', 3);
