create table query5
(
    title   text,
    average numeric
);

alter table query5
    owner to postgres;

INSERT INTO public.query5 (title, average) VALUES ('Comedy and Romance movie', 1);
INSERT INTO public.query5 (title, average) VALUES ('Romance movie', 4);
INSERT INTO public.query5 (title, average) VALUES ('Comedy movie', 2.5);
