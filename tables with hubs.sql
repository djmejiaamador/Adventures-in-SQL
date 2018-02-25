

movies (id, title, year)

CREATE TABLE Movies(
    id numeric(10),
    title text,
    year character varying(10)
);

genres(title)

CREATE TABLE genres (
   title text
);

users (id)

CREATE TABLE users (
   id numeric  PRIMARY KEY
);


ratings (userid, movieid, rating, time)

CREATE TABLE ratings(
    userid numeric, 
    movieId numeric,
    rating double percision,
    time numeric
);


tags (userid, movieid, tag, time)

CREATE TABLE tags(
    userid numeric,
    movieId numeric,
    tag text,
    time numeric
);


has_genre(movieid, title)

CREATE TABLE has_genre(
	movieid numeric,
	title character varying(50)
)


hubs_movies(movieid, hub_score)

CREATE TABLE hubs(
    Movieid numeric
    Hub_score int  DEFAULT 1
);



auths_movies (movieid, auth_score)

CREATE TABLE aut(
    Movieid numeric
    auth_score int  DEFAULT 1
);


hubs_users(userid, hub_score)

CREATE TABLE hubs_users(
    userid numeric
    Hub_score int  DEFAULT 1
);



auths_users (userid, auth_score)

CREATE TABLE auths_users(
    userid numeric
    auth_score int  DEFAULT 1
);