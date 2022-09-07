create table query7
(
    average numeric
);

alter table query7
    owner to postgres;

INSERT INTO public.query7 (average) VALUES (1);
