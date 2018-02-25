-- Execution time: 1071.358 ms
 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid
)
Where hub_movies.movieid in (select * from moviechunk1) ;




Explain analyze UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid
)
Where hub_movies.movieid in (select * from moviechunk2) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk3) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk4) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk5) ;



 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk6) ;



 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk7) ;

 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk8) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk9) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk10) ;



 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk11) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk12) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk13) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid)
Where hub_movies.movieid in (select * from moviechunk14) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk15) ; 

 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk16) ; 


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk17) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk18) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk19) ;   


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk20) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk21) ; 

 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk22) ; 


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk23) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk24) ;   

 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk25) ;   

 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk26) ;  


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk27) ; 

 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk28) ; 

 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk29) ;


 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk30) ;

 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk31) ;  

 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk32) ;

 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk33) ; 

 UPDATE hub_movies
SET hub_score = hub_score +
( 
SELECT SUM(auth_score)
FROM auth_users_temp a, ratings r
WHERE a.userid = r.userid
AND hub_movies.movieid = r.movieid) 
Where hub_movies.movieid in (select * from moviechunk34) ;      



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
