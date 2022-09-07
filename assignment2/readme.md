## 运行结果
```
[2022-09-07 20:20:06] completed in 15 ms
postgres> CREATE TABLE query1 AS
          SELECT g.title as name, count(h.movieid) AS moviecount
          FROM genres g
          JOIN hasagenre h
          ON g.genreid = h.genreid
          group by g.title
[2022-09-07 20:20:09] 2 rows affected in 20 ms
postgres.public> CREATE TABLE query2 AS
                 SELECT g.title as name, AVG(r.rating)
                 FROM (genres g JOIN hasagenre h on g.genreid = h.genreid)
                 JOIN ratings r
                 ON h.movieid = r.movieid
                 group by g.title
[2022-09-07 20:20:16] 2 rows affected in 11 ms
postgres.public> CREATE TABLE query3 AS
                 SELECT m.title as title, count(r.movieid) as CountOfRatings
                 FROM movies as m
                 JOIN ratings r
                 on m.movieid = r.movieid
                 group by m.title
                 having count(r.movieid) > 10
[2022-09-07 20:20:21] completed in 11 ms
postgres.public> CREATE TABLE query4 AS
                 SELECT m.movieid, m.title
                 FROM (hasagenre h JOIN genres g ON g.title = 'Comedy' AND h.genreid = g.genreid)
                 JOIN movies m
                 ON m.movieid = h.movieid
[2022-09-07 20:20:26] 3 rows affected in 11 ms
postgres.public> CREATE TABLE query5 AS
                 SELECT m.title, AVG(r.rating) as average
                 FROM movies m
                 JOIN ratings r on m.movieid = r.movieid
                 GROUP BY m.title
[2022-09-07 20:20:29] 3 rows affected in 9 ms
postgres.public> CREATE TABLE query6 AS
                 SELECT AVG(r.rating) as average
                 FROM (hasagenre h JOIN genres g ON g.title = 'Comedy' AND h.genreid = g.genreid)
                 JOIN ratings r
                 ON r.movieid = h.movieid
[2022-09-07 20:20:33] 1 row affected in 10 ms
postgres.public> CREATE TABLE query7 AS
                 SELECT AVG(r.rating) as average
                 FROM (hasagenre h1 JOIN genres g1 ON g1.title = 'Romance'  AND h1.genreid = g1.genreid
                     INNER JOIN hasagenre h2 JOIN genres g2 on g2.title = 'Comedy' AND h2.genreid = g2.genreid
                     ON h1.movieid = h2.movieid)
                 JOIN ratings r
                 ON r.movieid = h1.movieid
[2022-09-07 20:20:36] 1 row affected in 10 ms
postgres.public> CREATE TABLE query8 AS
                 SELECT AVG(r.rating) as average
                 FROM (hasagenre h1 JOIN genres g1 ON g1.title = 'Romance'  AND h1.genreid = g1.genreid
                     LEFT JOIN hasagenre h2 JOIN genres g2 on g2.title = 'Comedy' AND h2.genreid = g2.genreid
                     ON h1.movieid = h2.movieid)
                 JOIN ratings r
                 ON r.movieid = h1.movieid
[2022-09-07 20:20:40] 1 row affected in 12 ms
postgres.public> CREATE TABLE query9 AS
                 SELECT r.movieid, r.rating
                 FROM ratings r
                 WHERE r.userid = 2
[2022-09-07 20:20:51] 2 rows affected in 6 ms

```
