-- report queries 

-- for 1
SELECT movies.title, hub_movies.hub_score 
FROM movies, hub_movies 
WHERE movies.id = hub_movies.movieid 
ORDER BY hub_movies.hub_score DESC LIMIT 5;


-- for 2 
SELECT movies.title, auth_movies.auth_score 
FROM movies, auth_movies 
WHERE movies.id = auth_movies.movieid 
ORDER BY auth_movies.auth_score DESC LIMIT 5;


-- for 3
Select top_user_titles.userid, top_user_titles.title
from auth_movies am, 
	(select top_user.userid, m.id, title
	from movies m, 
		(select r.userid, r.movieid 
		from  ratings r, 
			(select userid
			from hub_users
			order by hub_score DESC limit 5) u
		where u.userid = r.userid
		group by r.userid, r.movieid) top_user
	where m.id = top_user.movieid) top_user_titles
where am.movieid = top_user_titles.id
order by am.auth_score DESC Limit 5;


-- for  4
Select top_user_titles.userid, top_user_titles.title
from hub_movies hm, 
	(select top_user.userid, m.id, title
	from movies m, 
		(select r.userid, r.movieid 
		from ratings r, 
			(select userid
			from auth_users
			order by auth_score DESC limit 5) u
		where u.userid = r.userid
		group by r.userid, r.movieid) top_user
	where m.id = top_user.movieid) top_user_titles
where hm.movieid = top_user_titles.id
order by hm.hub_score DESC Limit 5;


