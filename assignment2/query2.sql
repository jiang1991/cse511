create table query2
(
    name text,
    avg  numeric
);

alter table query2
    owner to postgres;

INSERT INTO public.query2 (name, avg) VALUES ('Romance', 2.5);
INSERT INTO public.query2 (name, avg) VALUES ('Comedy', 2);
