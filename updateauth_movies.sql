 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk1) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk2) ;


 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk3) ;


 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk4) ;


 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk5) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk6) ;


 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk7) ;


 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk8) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk9) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk10) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk11) ;

explain analyze UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk12) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk13) ;


 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk14) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk15) ;


 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk16) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk17) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk18) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk19) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk20) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk21) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk22) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk23) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk24) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk25) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk26) ;


 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk27) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk28) ;


 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk29) ;



 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk30) ;



 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk31) ;



 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk32) ;


 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk33) ;

 UPDATE auth_movies
SET auth_score = auth_score +
( 
SELECT SUM(hub_score * r.rating)
FROM hub_users_temp h, ratings r
WHERE h.userid = r.userid
AND auth_movies.movieid = r.movieid
)
Where auth_movies.movieid in (select * from moviechunk34) ;


        --  calculate norm 1
    update norms
    set norm = (
    SELECT SQRT( SUM(auth_score*auth_score ) )
    FROM auth_movies )
    where table_name = 'auth_movies';

    -- apply norm 1
    UPDATE auth_movies
    SET auth_score = auth_score / 
    (select norm from norms
    where table_name = 'auth_movies');
