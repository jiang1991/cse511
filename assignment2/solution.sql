-- CLEAR TABLE
-- DROP TABLE query1;
-- DROP TABLE query2;
-- DROP TABLE query3;
-- DROP TABLE query4;
-- DROP TABLE query5;
-- DROP TABLE query6;
-- DROP TABLE query7;
-- DROP TABLE query8;
-- DROP TABLE query9;

-- query 1
-- 1.编写 SQL 查询，用以返回每种影片类型的电影总数。你的查询结果应该保存在一个名为“query1”的表中，
-- 该表有两个属性：“name”属性是影片类型列表，而“moviecount”是每个类型的电影计数列表。
CREATE TABLE query1 AS
SELECT g.title as name, count(h.movieid) AS moviecount
FROM genres g
JOIN hasagenre h
ON g.genreid = h.genreid
group by g.title;


-- query 2
-- 2.编写 SQL 查询，用以返回每种影片类型的平均评分。你的查询结果应该保存在一个名为“query2”的表中，
-- 该表有两个属性：“name”属性是影片类型列表，而“rating”是每种影片类型的平均评分。
CREATE TABLE query2 AS
SELECT g.title as name, AVG(r.rating)
FROM (genres g JOIN hasagenre h on g.genreid = h.genreid)
JOIN ratings r
ON h.movieid = r.movieid
group by g.title;

-- query 3
-- 3.编写 SQL 查询，用以返回具有至少 10 次评分的电影。你的查询结果应该保存在一个名为“query3”的表中，
-- 该表有两个属性：“title”属性是影片名称列表，而“CountOfRatings”是评分次数的列表。
CREATE TABLE query3 AS
SELECT m.title as title, count(r.movieid) as CountOfRatings
FROM movies as m
JOIN ratings r
on m.movieid = r.movieid
group by m.title
having count(r.movieid) > 10;


-- query 4
-- 4.编写 SQL 查询，用以返回所有“Comedy”（喜剧）类型的电影，包括 movieid 和 title。
-- 你的查询结果应该保存在一个名为“query4”的表中，该表有两个属性：“movieid”属性是影片 id 列表，而“title”是电影名称列表。
CREATE TABLE query4 AS
SELECT m.movieid, m.title
FROM (hasagenre h JOIN genres g ON g.title = 'Comedy' AND h.genreid = g.genreid)
JOIN movies m
ON m.movieid = h.movieid;


-- query 5
-- 5.编写 SQL 查询，用以返回每部影片的平均评分。你的查询结果应该保存在一个名为“query5”的表中，
-- 该表有两个属性：“title”属性是影片名称列表，而“average”是每部影片的平均评分。
CREATE TABLE query5 AS
SELECT m.title, AVG(r.rating) as average
FROM movies m
JOIN ratings r on m.movieid = r.movieid
GROUP BY m.title;

-- query 6
-- 6.编写 SQL 查询，用以返回所有“Comedy”（喜剧）类型电影的平均评分。你的查询结果应该保存在一个名为“query6”的表中，
-- 该表有一个属性：“average”。
CREATE TABLE query6 AS
SELECT AVG(r.rating) as average
FROM (hasagenre h JOIN genres g ON g.title = 'Comedy' AND h.genreid = g.genreid)
JOIN ratings r
ON r.movieid = h.movieid;

-- query 7
-- 7.编写 SQL 查询，用以返回所有同时是“Comedy”（喜剧）和“Romance”（爱情）类型的影片的平均评分。
-- 你的查询结果应该保存在一个名为“query7”的表中，该表有一个属性：“average”。
CREATE TABLE query7 AS
SELECT AVG(r.rating) as average
FROM (hasagenre h1 JOIN genres g1 ON g1.title = 'Romance'  AND h1.genreid = g1.genreid
    INNER JOIN hasagenre h2 JOIN genres g2 on g2.title = 'Comedy' AND h2.genreid = g2.genreid
    ON h1.movieid = h2.movieid)
JOIN ratings r
ON r.movieid = h1.movieid;

-- query 8
-- 8.编写 SQL 查询，用以返回所有是“Romance”（爱情），但不是“Comedy”（喜剧）类型的影片的平均评分。
-- 你的查询结果应该保存在一个名为“query8”的表中，该表有一个属性：“average”。
CREATE TABLE query8 AS
SELECT AVG(r.rating) as average
FROM (hasagenre h1 JOIN genres g1 ON g1.title = 'Romance'  AND h1.genreid = g1.genreid
    LEFT JOIN hasagenre h2 JOIN genres g2 on g2.title = 'Comedy' AND h2.genreid = g2.genreid
    ON h1.movieid = h2.movieid)
JOIN ratings r
ON r.movieid = h1.movieid;

--
-- SELECT h1.movieid FROM hasagenre h1 JOIN genres g1 ON g1.title = 'Comedy'  AND h1.genreid = g1.genreid
-- INNER JOIN hasagenre h2 JOIN genres g2 on g2.title = 'Romance' AND h2.genreid = g2.genreid
-- ON h1.movieid = h2.movieid;


-- query 9
-- 9.查找由这类用户（userId = v1）评分的所有电影。v1 是传递给 SQL 查询的整数参数。你的查询结果应该保存在一个名为“query9”的表中，
-- 该表有两个属性：“movieid”是由 userId v1 评分的 movieid 列表，而“rating”是 userId v1 对相应 movieid 的评分列表。
CREATE TABLE query9 AS
SELECT r.movieid, r.rating
FROM ratings r
WHERE r.userid = :v;