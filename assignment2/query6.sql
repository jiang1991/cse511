create table query6
(
    average numeric
);

alter table query6
    owner to postgres;

INSERT INTO public.query6 (average) VALUES (2);
