-- update hub users 


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
 
explain analyze UPDATE hub_users
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


 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk11) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk12) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk13) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk14) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk15) ;


 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk16) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk17) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk18) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk19) ;


 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk20) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk21) ;


 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk22) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk23) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk24) ;


 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk25) ;

 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk26) ;


 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk27) ;


 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk28) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk29) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk30) ;


 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk31) ;



 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk32) ;


 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk33) ;

 UPDATE hub_users
SET hub_score = hub_score +
(SELECT SUM(a.auth_score * r.rating)
FROM auth_movies_temp a, ratings r
WHERE a.movieid = r.movieid
AND hub_users.userid = r.userid)
Where hub_users.userid in (select * from userchunk34) ;



    -- calculate norm 1
    update norms
    set norm = (
    SELECT SQRT( SUM(hub_score*hub_score ) )
    FROM hub_users )
    where table_name = 'hub_users';

            -- apply nore 8
            UPDATE hub_users
            SET hub_score = hub_score / 
            (select norm from norms
            where table_name = 'hub_users');


