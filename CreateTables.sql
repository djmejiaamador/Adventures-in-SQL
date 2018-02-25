

-- movies (id, title, year)

CREATE TABLE Movies(
    id numeric(10),
    title text,
    year character varying(10)
);

-- genres(title)

CREATE TABLE genres (
   title text
);

-- users (id)

CREATE TABLE users as (
SELECT DISTINCT userid
from ratings UNION (Select DISTINCT userID from tags));


-- ratings (userid, movieid, rating, time)

CREATE TABLE ratings(
    userid numeric, 
    movieId numeric,
    rating double percision,
    time numeric
);


-- tags (userid, movieid, tag, time)

CREATE TABLE tags(
    userid numeric,
    movieId numeric,
    tag text,
    time numeric
);


-- has_genre(movieid, title)

CREATE TABLE has_genre(
	movieid numeric,
	title character varying(50)
)



-- indexs created 

CREATE INDEX hub_movieidx_og on hub_movies(movieid);
CREATE INDEX hub_moviescoreidx_og on hub_movies(hub_score);

CREATE INDEX hub_useridx_og on hub_users(userid);
CREATE INDEX hub_userscoreidx_og on hub_users(hub_score);

CREATE INDEX auth_movieidx_og  on auth_movies(movieid);
CREATE INDEX auth_moviescoreidx_og  on auth_movies(auth_score);

CREATE INDEX auth_useridx_og  on auth_users(userid);
CREATE INDEX auth_userscoreidx_og  on auth_users(auth_score);

CREATE INDEX ratings_Movieidx on ratings(movieid);
CREATE INDEX ratings_useridx on ratings(userid);
CREATE INDEX ratings_ratingidx on ratings(rating);

-- furthur testing: indexing temp tables :
CREATE INDEX hub_movieidx on hub_movies_temp(movieid);
CREATE INDEX hub_moviescoreidx on hub_movies_temp(hub_score);

CREATE INDEX hub_useridx on hub_users_temp(userid);
CREATE INDEX hub_userscoreidx on hub_users_temp(hub_score);

CREATE INDEX auth_movieidx on auth_movies_temp(movieid);
CREATE INDEX auth_moviescoreidx  on auth_movies_temp(auth_score);

CREATE INDEX auth_useridx  on auth_users_temp(userid);
CREATE INDEX auth_userscoreidx  on auth_users_temp(auth_score);





-- create temp tables 




-- Queries written  To load data

    -- for movies
    \COPY movies FROM '/Users/douglasmejia/Desktop/Intro to data System/Project/movies/movies_clean.txt' (DELIMITER('|'));
    
    -- for ratings
    \COPY ratings FROM '/Users/douglasmejia/Desktop/Intro to data System/Project/movies/ratigns.txt' (DELIMITER(':'));


    -- for tags
    \COPY tags FROM '/Users/douglasmejia/Desktop/Intro to data System/Project/movies/tags_clean.txt' (DELIMITER('|')); 

    -- for genres
    \COPY genres FROM '/Users/douglasmejia/Desktop/Intro to data System/Project/movies/genres_clean.txt'

    -- for has genres
    \COPY  has_genre FROM '/Users/douglasmejia/Desktop/Intro to data System/Project/movies/hasGenra_clean.txt' (DELIMITER(“:”));


-- To test size of  tables 
Select count(*) from Movies;
Select count(*) from genres;
Select count(*) from users;
Select count(*) from ratings;
Select count(*) from tags;
Select count(*) from has_genre;


-- Test queries written 

    -- 1).Find the most reviewed movie (movie with most reviews). Show the movie id, movie title and the number of reviews.
    SELECT movies.id, movies.title, count(ratings.rating) FROM movies, ratings where movies.id = ratings.movieid GROUP BY 
    movies.id, movies.title ORDER BY count(ratings.rating) DESC LIMIT 1;


    /* 2).  Find the highest reviewed movie (movie with most 5-star reviews). Show the movie id, movie title and 
    the number of reviews. Using the Query: */
    Select movies.id, movies.title, count(ratings.rating) from movies, ratings where movies.id = ratings.movieid and ratings.rating = 5 
    group by movies.id, movies.title order by count(ratings.rating) DESC limit 1;

    -- 3) Find the number of movies that are associated with at least 3 different genres.
    select count(*) FROM (Select count(movieid) from has_genre group by movieid) d  where d.count>= 3;



-- populate hub and auth tables  queries used in the initialization step

INSERT INTO hub_movies SELECT Distinct movieid FROM ratings;
INSERT INTO auth_movies SELECT Distinct movieid FROM ratings;
INSERT INTO hub_users SELECT Distinct userid FROM ratings;
INSERT INTO auth_users SELECT  Distinct userid FROM ratings;

-- nulll checks

Select count(*)  From  hub_users  hm where hm.hub_score is NULL;
Select count(*)  From  auth_users  am where am.auth_score is NULL;
Select count(*)  From  hub_movies  hm where hm.hub_score is NULL;
Select count(*)  From  auth_movies am where am.auth_score is NULL;

CREATE TABLE auth_users_temp AS SELECT * FROM auth_users;
CREATE TABLE hub_users_temp AS SELECT * FROM hub_users;
CREATE TABLE hub_movies_temp AS SELECT * FROM hub_movies;
CREATE TABLE auth_movies_temp AS SELECT * FROM auth_movies;

create table norms (table_name varchar(20), norm float default 1.0);
insert into norms(table_name) values ('hub_movies');
insert into norms(table_name) values ('hub_users');
insert into norms(table_name) values ('auth_movies');
insert into norms(table_name) values ('auth_users');






drop TABLE tempTest 
drop TABLE tempOverwrite ;


-- To update 

-- the equations 
-- Movie nodes m
-- hub(m) = hub(m) + Σ_{u in Um} auth(u) (1)
-- auth(m) = auth(m) + Σ_{u in Um} [hub(u) * rating(u,m)] (2)

-- User nodes u
-- hub(u) = hub(u) + Σ_{m in Mu} [auth(m) * rating(u,m)] (3)
-- auth(u) = auth(u) + Σ_{m in Mu} hub(m) (4)


-- This query never executes. that is because its cross procuct is too big

-- for (1) hub(m) = hub(m) + Σ_{u in Um} auth(u) 
UPDATE hub_movies
SET hub_score = hub_score +
( SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid);
    -- In transaction form
    BEGIN;
    CREATE TEMPORARY TABLE hub_movies_temp AS SELECT * FROM hub_movies;
    CREATE INDEX hub_movieidx on hub_movies_temp(movieid);
    UPDATE hub_movies
    SET hub_score = hub_score +
    ( SELECT SUM(auth_score)
    FROM auth_users_temp a, ratings r
    WHERE a.userid = r.userid
    AND hub_movies.movieid = r.movieid);
    
    commit;

-- for (2) auth(m) = auth(m) + Σ_{u in Um} [hub(u) * rating(u,m)] 

UPDATE auth_movies
SET auth_score = auth_score +
( SELECT SUM(hub_score * ratings.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies_temp.movieid = r.movieid);
-- In transaction form
    BEGIN;
    CREATE TEMPORARY TABLE auth_movies_temp AS SELECT * FROM auth_movies;
    CREATE INDEX auth_movieidx on auth_movies_temp(movieid);
    UPDATE auth_movies_temp
    SET auth_score = auth_score +
    ( SELECT SUM(hub_score * ratings.rating)
    FROM hub_users h, ratings r
    WHERE h.userid = r.userid
    AND auth_movies_temp.movieid = r.movieid);
    commit;

-- for (3) hub(u) = hub(u) + Σ_{m in Mu} [auth(m) * rating(u,m)] 
EXPLAIN ANALYZE UPDATE hub_users_temp
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies a, ratings r
WHERE a.movieid = r.movieid
AND hub_users_temp.userid = r.userid);

-- In transaction form
    BEGIN;
    CREATE TEMPORARY TABLE hub_users_temp AS SELECT * FROM hub_users;
    CREATE INDEX hub_useridx on hub_users_temp(userid);
    UPDATE hub_users_
    SET hub_score = hub_score +
    (SELECT SUM(a.auth_score * r.rating)
    FROM auth_movies a, ratings r
    WHERE a.movieid = r.movieid
    AND hub_users.userid = r.userid);
    commit;


-- for (4)  auth(u) = auth(u) + Σ_{m in Mu} hub(m)
EXPLAIN ANALYZE UPDATE auth_users_temp
SET auth_score = auth_score +
( SELECT SUM(hub_score)
FROM hub_movies h, ratings r
WHERE h.movieid = r.movieid
AND auth_users_temp.userid = r.userid);

    -- In transaction form
    BEGIN;
    CREATE TEMPORARY TABLE auth_users_temp AS SELECT * FROM auth_users;
    CREATE INDEX auth_useridx on auth_users_temp(userid);
    UPDATE hub_movies
    SET hub_score = hub_score +
    ( SELECT SUM(auth_score)
    FROM auth_users a, ratings r
    WHERE a.userid = r.userid
    AND hub_movies.movieid = r.movieid);
    commit;


-- In transaction form
    BEGIN;
    CREATE TEMPORARY TABLE hub_movies_temp AS SELECT * FROM hub_movies;
    Select * into hub_movies_temp from hub_movies;
    CREATE INDEX hub_movieidx on hub_movies_temp(movieid);

    CREATE TEMPORARY TABLE auth_movies_temp AS SELECT * FROM auth_movies;
    Select * into auth_movies_temp from auth_movies;
    CREATE INDEX auth_movieidx on auth_movies_temp(movieid);

    CREATE TEMPORARY TABLE hub_users_temp AS SELECT * FROM hub_users;
    Select * into  hub_users_temp from hub_users;
    CREATE INDEX hub_useridx on hub_users_temp(userid);

    CREATE TEMPORARY TABLE auth_users_temp AS SELECT * FROM auth_users;
    Select * into  hauth_users_temp from auth_users;
    CREATE INDEX auth_useridx on auth_users_temp(userid);
    

    EXPLAIN ANALYZE UPDATE hub_movies
    SET hub_score = hub_score +
    ( SELECT SUM(auth_score)
    FROM auth_users_temp a, ratings r
    WHERE a.userid = r.userid
    AND hub_movies.movieid = r.movieid);


    EXPLAIN ANALYZE UPDATE hub_users
    SET hub_score = hub_score +
    (SELECT SUM(a.auth_score * r.rating)
    FROM auth_movies_temp a, ratings r
    WHERE a.movieid = r.movieid
    AND hub_users.userid = r.userid);

    EXPLAIN ANALYZE UPDATE auth_users
    SET auth_score = auth_score +
    ( SELECT SUM(hub_score)
    FROM hub_movies_temp h, ratings r
    WHERE h.movieid = r.movieid
    AND auth_users.userid = r.userid);
    commit;



-- the update step query order:

    -- create temp tables
    CREATE TABLE auth_users_temp AS SELECT * FROM auth_users;
    CREATE TABLE hub_users_temp AS SELECT * FROM hub_users;
    CREATE TABLE hub_movies_temp AS SELECT * FROM hub_movies;
    CREATE TABLE auth_movies_temp AS SELECT * FROM auth_movies;

    -- index them
    CREATE INDEX auth_movieidx on auth_movies_temp(movieid);
    CREATE INDEX hub_movieidx on hub_movies_temp(movieid);
    CREATE INDEX hub_useridx on hub_users_temp(userid);
    CREATE INDEX auth_useridx on auth_users_temp(userid);


    set enable_seqscan=false;
    -- update og tables 

    -- Update for (1) hub(m) = hub(m) + Σ_{u in Um} auth(u) : 1
    explain analyze UPDATE hub_movies
    SET hub_score = hub_score +
    ( SELECT SUM(auth_score)
    FROM auth_users_temp a, ratings r
    WHERE a.userid = r.userid
    AND hub_movies.movieid = r.movieid);


        
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


    -- for (2) 1
    UPDATE auth_movies
    SET auth_score = auth_score +
    ( SELECT SUM(hub_score * r.rating)
    FROM hub_users_temp h, ratings r
    WHERE h.userid = r.userid
    AND auth_movies.movieid = r.movieid);
            
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


    -- for (3) hub(u) = hub(u) + Σ_{m in Mu} [auth(m) * rating(u,m)]  1
    UPDATE hub_users
    SET hub_score = hub_score +
    (SELECT SUM(a.auth_score * r.rating)
    FROM auth_movies a, ratings r
    WHERE a.movieid = r.movieid
    AND hub_users.userid = r.userid);
        

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


    -- for (4)  auth(u) = auth(u) + Σ_{m in Mu} hub(m) 1
   explain analyze  UPDATE auth_users
    SET auth_score = auth_score +
    ( SELECT SUM(hub_score)
    FROM hub_movies_temp h, ratings r
    WHERE h.movieid = r.movieid
    AND auth_users.userid = r.userid);
       
        -- normalize  1
        update norms
        set norm = (
        SELECT SQRT( SUM(auth_score*auth_score ) )
        FROM auth_users )
        where table_name = 'auth_users';

                -- apply norm 8
                UPDATE auth_users
                SET auth_score = auth_score / 
                ( select norm from norms
                where table_name = 'auth_users');


    -- reset temp values after all tables updated 1


    UPDATE hub_movies_temp htemp
    SET hub_score =  
    ( select h.hub_score from hub_movies h
    where htemp.movieid= h.movieid);

   
    UPDATE auth_movies_temp atemp
    SET auth_score =  
    ( select a.auth_score from auth_movies a
    where atemp.movieid= a.movieid);


    UPDATE hub_users_temp htemp
    SET hub_score =  
    ( select h.hub_score from hub_users h
    where htemp.userid= h.userid);


    UPDATE auth_users_temp atemp
    SET auth_score =  
    ( select a.auth_score from auth_users a
    where atemp.userid= a.userid);





    -- REPEATES 


-- check queries

select count(*) from hub_movies_temp where hub_score is null;
select count(*) from auth_movies_temp where auth_score is null;
select count(*) from hub_users_temp where hub_score is null;
select count(*) from auth_users_temp where auth_score is null;

select count(*) from hub_movies where hub_score is null;
select count(*) from auth_movies where auth_score is null;
select count(*) from hub_users where hub_score is null;
select count(*) from auth_users where auth_score is null;





ALTER TABLE norms ALTER COLUMN norm TYPE BIGINT;






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
WHERE t.c <= 5000 AND t.c > 1000)
);









-- 1) The top 5 hub score movie titles and their hub score.
    
        Select m.title, hm.hub_score From movies m, hub_movies hm where m.id = hm.movieid;


-- 2) The top 5 auth score movie titles and their auth score.

-- 3) The ids of the top 5 hub score users. For each of these users, report the title of the top 1 auth score movie they have rated.

-- 4) The ids of the top 5 auth score users. For each of these users, report the titlw of the top 1 hub score movie they have rated.

-- 5) The runtime of your queries before and after you do any optimization.


