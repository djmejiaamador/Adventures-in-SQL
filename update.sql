EXPLAIN ANALYZE UPDATE hub_movies_temp
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
AND
hub_movies_temp.movieid IN
(SELECT movieid 
FROM 
(
SELECT movieid, count(movieid) c
from ratings
group by movieid
order by c desc) t 
WHERE t.c > 30000)
);


EXPLAIN ANALYZE UPDATE hub_movies_temp
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
AND
hub_movies_temp.movieid IN
(SELECT movieid 
FROM 
(
SELECT movieid, count(movieid) c
from ratings
group by movieid
order by c desc) t 
WHERE t.c < 30000 AND t.c > 25000 ) 
);



EXPLAIN ANALYZE UPDATE hub_movies_temp
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
AND
hub_movies_temp.movieid IN
(SELECT movieid 
FROM 
(
SELECT movieid, count(movieid) c
from ratings
group by movieid
order by c desc) t 
WHERE t.c < 25000 AND t.c > 20000 ) 
);



EXPLAIN ANALYZE UPDATE hub_movies_temp
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
AND
hub_movies_temp.movieid IN
(SELECT movieid 
FROM 
(
SELECT movieid, count(movieid) c
from ratings
group by movieid
order by c desc) t 
WHERE t.c < 20000 AND t.c > 15000 ) 
);


EXPLAIN ANALYZE UPDATE hub_movies_temp
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
AND
hub_movies_temp.movieid IN
(SELECT movieid 
FROM 
(
SELECT movieid, count(movieid) c
from ratings
group by movieid
order by c desc) t 
WHERE t.c < 20000 AND t.c > 15000 ) 
);


EXPLAIN ANALYZE UPDATE hub_movies_temp
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
AND
hub_movies_temp.movieid IN
(SELECT movieid 
FROM 
(
SELECT movieid, count(movieid) c
from ratings
group by movieid
order by c desc) t 
WHERE t.c < 15000 AND t.c > 12500 ) 
);


EXPLAIN ANALYZE UPDATE hub_movies_temp
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
AND
hub_movies_temp.movieid IN
(SELECT movieid 
FROM 
(
SELECT movieid, count(movieid) c
from ratings
group by movieid
order by c desc) t 
WHERE t.c < 12500 AND t.c > 10000 ) 
);

EXPLAIN ANALYZE UPDATE hub_movies_temp
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
AND
hub_movies_temp.movieid IN
(SELECT movieid 
FROM 
(
SELECT movieid, count(movieid) c
from ratings
group by movieid
order by c desc) t 
WHERE t.c < 10000 AND t.c > 5000 ) 
);



EXPLAIN ANALYZE UPDATE hub_movies_temp
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
AND
hub_movies_temp.movieid IN
(SELECT movieid 
FROM 
(
SELECT movieid, count(movieid) c
from ratings
group by movieid
order by c desc) t 
WHERE t.c < 5000 AND t.c > 2500 ) 
);



EXPLAIN ANALYZE UPDATE hub_movies_temp
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
AND
hub_movies_temp.movieid IN
(SELECT movieid 
FROM 
(
SELECT movieid, count(movieid) c
from ratings
group by movieid
order by c desc) t 
WHERE t.c <  2500 )
);



explain analyze UPDATE hub_movies
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid
and hub_movies.movieid > 5000);


UPDATE hub_movies_temp
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid
AND
hub_movies.movieid IN
(
SELECT movieid 
FROM (
    (SELECT movieid, count(movieid) c
    from ratings
    group by movieid
    order by c desc) t 
    WHERE t.c > 25000)
);
