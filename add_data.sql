

-- import data from .dat files

COPY users FROM '/home/users.dat' DELIMITER '%';
COPY movies FROM '/home/movies.dat' DELIMITER '%';
COPY taginfo FROM '/home/taginfo.dat' DELIMITER '%';
COPY genres FROM '/home/genres.dat' DELIMITER '%';
COPY ratings FROM '/home/ratings.dat' DELIMITER '%';
COPY tags FROM '/home/tags.dat' DELIMITER '%';
COPY hasagenre FROM '/home/hasagenre.dat' DELIMITER '%';