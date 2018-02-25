

\i updatehub_users.sql
\i updateAuth_users.sql

\i updatehub_movies.sql
\i updateauth_movies.sql


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








  	
