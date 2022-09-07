create table query8
(
    average numeric
);

alter table query8
    owner to postgres;

INSERT INTO public.query8 (average) VALUES (2.5);
