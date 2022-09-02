

-- import data from .dat files
-- docker cp "D:\docker\cse511\exampleinput\." postgres-MBCm:/home/dat

COPY users FROM '/home/dat/users.dat' DELIMITER '%';
COPY movies FROM '/home/dat/movies.dat' DELIMITER '%';
COPY taginfo FROM '/home/dat/taginfo.dat' DELIMITER '%';
COPY genres FROM '/home/dat/genres.dat' DELIMITER '%';
COPY ratings FROM '/home/dat/ratings.dat' DELIMITER '%';
COPY tags FROM '/home/dat/tags.dat' DELIMITER '%';
COPY hasagenre FROM '/home/dat/hasagenre.dat' DELIMITER '%';