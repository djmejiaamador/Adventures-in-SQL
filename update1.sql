 set enable_seqscan=false;

-- update hub movies 


-- Execution time: 1071.358 ms
explain analyze UPDATE hub_movies_temp
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
)
Where hub_movies_temp.movieid in (select * from moviechunk1) ;



--  Execution time: 2084.872 ms
explain analyze UPDATE hub_movies_temp
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid
)
Where hub_movies_temp.movieid in (select * from moviechunk2) ;


explain analyze UPDATE hub_movies_temp
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid)
Where hub_movies_temp.movieid in (select * from moviechunk3) ;


explain analyze UPDATE hub_movies_temp
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid)
Where hub_movies_temp.movieid in (select * from moviechunk4) ;


explain analyze UPDATE hub_movies_temp
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid)
Where hub_movies_temp.movieid in (select * from moviechunk5) ;



explain analyze UPDATE hub_movies_temp
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid)
Where hub_movies_temp.movieid in (select * from moviechunk6) ;



explain analyze UPDATE hub_movies_temp
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users a, ratings r
WHERE a.userid = r.userid
AND hub_movies_temp.movieid = r.movieid)
Where hub_movies_temp.movieid in (select * from moviechunk7) ;


-- normalize 1
update norms
set norm = (
SELECT SQRT( SUM(hub_score*hub_score ) )
FROM hub_movies )
where table_name = 'hub_movies';

    -- apply norm 1
    UPDATE hub_movies
    SET hub_score = hub_score / 
    ( select norm from norms
    where table_name = 'hub_movies');



-- update auth _movies 


explain analyze UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk1) ;

explain analyze UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk2) ;


explain analyze UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk3) ;


explain analyze UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk4) ;


explain analyze UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk5) ;

explain analyze UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk6) ;


explain analyze UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk7) ;


        --  calculate norm 1
    update norms
    set norm = (
    SELECT SQRT( SUM(auth_score*auth_score ) )
    FROM auth_movies )
    where table_name = 'auth_movies';

    -- apply norm 1
    UPDATE auth_movies
    SET auth_score = auth_score / 
    ( select norm from norms
    where table_name = 'auth_movies');







-- updater hub user

UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk1) ;

UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk2) ;

UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk3) ;

UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk4) ;


UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk5) ;


UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk6) ;


UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk7) ;


UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk8) ;


UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk9) ;

UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk10) ;








    -- calculate norm 1
    update norms
    set norm = (
    SELECT SQRT( SUM(hub_score*hub_score ) )
    FROM hub_users )
    where table_name = 'hub_users';

            -- apply nore 8
            UPDATE hub_users
            SET hub_score = hub_score / 
            ( select norm from norms
            where table_name = 'hub_users');



-- explain analyze UPDATE hub_movies_temp
-- SET hub_score = hub_score +
-- ( 
-- SELECT SUM(auth_score)
-- FROM auth_users a, ratings r
-- WHERE a.userid = r.userid
-- AND hub_movies_temp.movieid = r.movieid)
-- Where hub_movies_temp.movieid in (select * from moviechunk8) ;

-- explain analyze UPDATE hub_movies_temp
-- SET hub_score = hub_score +
-- ( 
-- SELECT SUM(auth_score)
-- FROM auth_users a, ratings r
-- WHERE a.userid = r.userid
-- AND hub_movies_temp.movieid = r.movieid)
-- Where hub_movies_temp.movieid in (select * from moviechunk9) ;

-- explain analyze UPDATE hub_movies_temp
-- SET hub_score = hub_score +
-- ( 
-- SELECT SUM(auth_score)
-- FROM auth_users a, ratings r
-- WHERE a.userid = r.userid
-- AND hub_movies_temp.movieid = r.movieid)
-- Where hub_movies_temp.movieid in (select * from moviechunk10) ;

-- explain analyze UPDATE hub_movies_temp
-- SET hub_score = hub_score +
-- ( 
-- SELECT SUM(auth_score)
-- FROM auth_users a, ratings r
-- WHERE a.userid = r.userid
-- AND hub_movies_temp.movieid = r.movieid)
-- Where hub_movies_temp.movieid in (select * from moviechunk11) ;


-- explain analyze UPDATE hub_movies_temp
-- SET hub_score = hub_score +
-- ( 
-- SELECT SUM(auth_score)
-- FROM auth_users a, ratings r
-- WHERE a.userid = r.userid
-- AND hub_movies_temp.movieid = r.movieid)
-- Where hub_movies_temp.movieid in (select * from moviechunk12) ;


-- explain analyze UPDATE hub_movies_temp
-- SET hub_score = hub_score +
-- ( 
-- SELECT SUM(auth_score)
-- FROM auth_users a, ratings r
-- WHERE a.userid = r.userid
-- AND hub_movies_temp.movieid = r.movieid)
-- Where hub_movies_temp.movieid in (select * from moviechunk13) ;

-- explain analyze UPDATE hub_movies_temp
-- SET hub_score = hub_score +
-- ( 
-- SELECT SUM(auth_score)
-- FROM auth_users a, ratings r
-- WHERE a.userid = r.userid
-- AND hub_movies_temp.movieid = r.movieid)
-- Where hub_movies_temp.movieid in (select * from moviechunk14) ;



