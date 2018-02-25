



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
WHERE t.c > 25000)
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
WHERE t.c <= 25000 AND t.c > 15000)
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
WHERE t.c <= 15000 AND t.c > 10000)
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
WHERE t.c <= 10000 AND t.c > 5000)
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
WHERE t.c <= 5000)
);

