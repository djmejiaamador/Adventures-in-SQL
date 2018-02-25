-- auth_movies(movied. )

CREATE TABLE hub_users(
    userid numeric,
    hub_score float  DEFAULT 1.0 NOT NULL
);
INSERT INTO hub_users SELECT Distinct userid FROM ratings;



CREATE TABLE auth_users(
    userid numeric,
    auth_score float  DEFAULT 1.0 NOT NULL
);
INSERT INTO auth_users SELECT Distinct userid FROM ratings;



CREATE TABLE hub_movies(
    movieid numeric,
    hub_score float  DEFAULT 1.0 NOT NULL
);
INSERT INTO hub_movies SELECT Distinct movieid FROM ratings;


CREATE TABLE auth_movies(
    movieid numeric,
    auth_score float  DEFAULT 1.0 NOT NULL
);
INSERT INTO auth_movies SELECT Distinct movieid FROM ratings;


-- temp tables

CREATE TABLE hub_users_temp(
    userid numeric,
    hub_score float  DEFAULT 1.0 NOT NULL
);
INSERT INTO hub_users_temp SELECT userid FROM hub_users;


CREATE TABLE auth_users_temp(
    userid numeric,
    auth_score float  DEFAULT 1.0 NOT NULL
);
INSERT INTO auth_users_temp SELECT userid FROM auth_users;


CREATE TABLE hub_movies_temp(
    movieid numeric,
    hub_score float  DEFAULT 1.0 NOT NULL
);
INSERT INTO hub_movies_temp SELECT movieid FROM hub_movies;

CREATE TABLE auth_movies_temp(
    movieid numeric,
    auth_score float  DEFAULT 1.0 NOT NULL
);
INSERT INTO auth_movies_temp SELECT movieid FROM auth_movies;

--  reduce subplans tables 


-- user id chunks 
CREATE TABLE userId_count as (
    SELECT userid, count(userid) c
    from ratings
    group by userid
    order by c desc);

CREATE TABLE userchunk1 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c > 4000);


CREATE TABLE userchunk2 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 4000 and t.c > 1500);


CREATE TABLE userchunk3 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 1500 and t.c > 1000);

CREATE TABLE userchunk4 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 1000 and t.c > 900);

CREATE TABLE userchunk5 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 900 and t.c > 800);

CREATE TABLE userchunk6 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 800 and t.c > 750);


CREATE TABLE userchunk7 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 750 and t.c > 700);


CREATE TABLE userchunk8 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 700 and t.c > 650);

CREATE TABLE userchunk9 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 650 and t.c > 600);

CREATE TABLE userchunk10 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 600 and t.c > 550);

CREATE TABLE userchunk11 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 550 and t.c > 500);

CREATE TABLE userchunk12 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 500 and t.c > 450);

CREATE TABLE userchunk13 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 450 and t.c > 400);

CREATE TABLE userchunk14 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 400 and t.c > 380);



CREATE TABLE userchunk15 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 380 and t.c > 350);


CREATE TABLE userchunk16 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 350 and t.c > 330);

CREATE TABLE userchunk17 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 330 and t.c > 300);

CREATE TABLE userchunk18 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 300 and t.c > 280);

CREATE TABLE userchunk19 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 280 and t.c > 250);


CREATE TABLE userchunk20 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 250 and t.c > 230);

CREATE TABLE userchunk21 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 230 and t.c > 200);

CREATE TABLE userchunk22 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 200 and t.c > 180);

CREATE TABLE userchunk23 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 180 and t.c > 150);

CREATE TABLE userchunk24 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 150 and t.c > 130);


CREATE TABLE userchunk25 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 130 and t.c > 100);




CREATE TABLE userchunk26 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 90 and t.c > 80);

CREATE TABLE userchunk27 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 100 and t.c > 90);

CREATE TABLE userchunk28 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 80 and t.c > 70);





CREATE TABLE userchunk29 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 70 and t.c > 60);


CREATE TABLE userchunk30 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 60 and t.c > 50);

CREATE TABLE userchunk31 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 50 and t.c > 40);


CREATE TABLE userchunk32 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 40 and t.c > 30);

CREATE TABLE userchunk33 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 30 and t.c >20);

CREATE TABLE userchunk34 as (
    SELECT userid 
    FROM userid_count t 
    WHERE t.c <= 20 );




-- movie chunks 

CREATE TABLE movieId_count AS (
    SELECT movieid, count(movieid) c
    from ratings
    group by movieid
    order by c desc);

CREATE TABLE moviechunk1 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c > 30000);

CREATE TABLE moviechunk2 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 25000 and t.c > 20000);

CREATE TABLE moviechunk3 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 20000 AND t.c > 18000);

CREATE TABLE moviechunk4 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 18000 AND t.c > 17000);

CREATE TABLE moviechunk5 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 17000 AND t.c > 16000);

CREATE TABLE moviechunk6 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 16000 AND t.c >15000);

CREATE TABLE moviechunk7 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 15000 AND t.c > 14000 );

CREATE TABLE moviechunk8 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 14000 AND t.c > 13000 );

CREATE TABLE moviechunk9 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 13000 AND t.c > 12000 );

CREATE TABLE moviechunk10 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 12000 AND t.c > 11000 );


CREATE TABLE moviechunk11 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 11000 AND t.c > 10000 );

CREATE TABLE moviechunk12 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 10000 AND t.c > 9500 );

CREATE TABLE moviechunk13 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 9500 AND t.c > 9000 );

CREATE TABLE moviechunk14 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 9000 AND t.c > 8500 );

CREATE TABLE moviechunk15 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 8500 AND t.c > 8000 );

CREATE TABLE moviechunk16 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 8000 AND t.c > 7500 );

CREATE TABLE moviechunk17 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 7500 AND t.c > 7000 );

CREATE TABLE moviechunk18 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 7000 AND t.c > 6500 );

CREATE TABLE moviechunk19 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 6500 AND t.c > 6000 );


CREATE TABLE moviechunk20 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 6000 AND t.c > 5500 );

CREATE TABLE moviechunk21 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 5500 AND t.c > 5000 );

CREATE TABLE moviechunk22 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 5000 AND t.c > 4500 );


CREATE TABLE moviechunk23 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 4500 AND t.c > 4000 );


CREATE TABLE moviechunk24 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 4000 AND t.c > 3500 );


CREATE TABLE moviechunk25 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 3500 AND t.c > 3000 );

CREATE TABLE moviechunk26 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 3000 AND t.c > 2500 );

CREATE TABLE moviechunk27 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 2500 AND t.c > 2000 );

CREATE TABLE moviechunk28 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 2000 AND t.c > 1500 );

CREATE TABLE moviechunk29 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 1500 AND t.c > 1000 );

CREATE TABLE moviechunk30 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 1000 AND t.c > 500 );



CREATE TABLE moviechunk31 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 500 AND t.c > 250 );

CREATE TABLE moviechunk32 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 250 AND t.c > 100 );


CREATE TABLE moviechunk33 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 100 AND t.c > 50 );

CREATE TABLE moviechunk34 as (
    SELECT movieid 
    FROM movieid_count t 
    WHERE t.c <= 50 );



create table norms (table_name varchar(20), norm float default 1.0);
insert into norms(table_name) values ('hub_movies');
insert into norms(table_name) values ('hub_users');
insert into norms(table_name) values ('auth_movies');
insert into norms(table_name) values ('auth_users');

CREATE INDEX movieid_countidx on movieid_count(movieid);
CREATE INDEX userid_countidx on userid_count(userid);



-- Movie chunks  indexes 
CREATE INDEX moviechunk1idx on moviechunk1(movieid);
CREATE INDEX moviechunk2idx on moviechunk2(movieid);
CREATE INDEX moviechunk3idx on moviechunk3(movieid);
CREATE INDEX moviechunk4idx on moviechunk4(movieid);
CREATE INDEX moviechunk5idx on moviechunk5(movieid);
CREATE INDEX moviechunk6idx on moviechunk6(movieid);
CREATE INDEX moviechunk7idx on moviechunk7(movieid);
CREATE INDEX moviechunk8idx on moviechunk8(movieid);
CREATE INDEX moviechunk9idx on moviechunk9(movieid);
CREATE INDEX moviechunk10idx on moviechunk10(movieid);
CREATE INDEX moviechunk11idx on moviechunk11(movieid);
CREATE INDEX moviechunk12idx on moviechunk12(movieid);
CREATE INDEX moviechunk13idx on moviechunk13(movieid);
CREATE INDEX moviechunk14idx on moviechunk14(movieid);
CREATE INDEX moviechunk15idx on moviechunk15(movieid);
CREATE INDEX moviechunk16idx on moviechunk16(movieid);
CREATE INDEX moviechunk17idx on moviechunk17(movieid);
CREATE INDEX moviechunk18idx on moviechunk18(movieid);
CREATE INDEX moviechunk19idx on moviechunk19(movieid);
CREATE INDEX moviechunk20idx on moviechunk20(movieid);
CREATE INDEX moviechunk21idx on moviechunk21(movieid);
CREATE INDEX moviechunk22idx on moviechunk22(movieid);
CREATE INDEX moviechunk23idx on moviechunk23(movieid);
CREATE INDEX moviechunk24idx on moviechunk24(movieid);
CREATE INDEX moviechunk25idx on moviechunk25(movieid);
CREATE INDEX moviechunk26idx on moviechunk26(movieid);
CREATE INDEX moviechunk27idx on moviechunk27(movieid);
CREATE INDEX moviechunk28idx on moviechunk28(movieid);
CREATE INDEX moviechunk29idx on moviechunk29(movieid);
CREATE INDEX moviechunk30idx on moviechunk30(movieid);
CREATE INDEX moviechunk31idx on moviechunk31(movieid);
CREATE INDEX moviechunk32idx on moviechunk32(movieid);
CREATE INDEX moviechunk33idx on moviechunk33(movieid);
CREATE INDEX moviechunk34idx on moviechunk34(movieid);



-- user chunk idx

CREATE INDEX userchunk1idx on userchunk1(userid);
CREATE INDEX userchunk2idx on userchunk2(userid);
CREATE INDEX userchunk3idx on userchunk3(userid);
CREATE INDEX userchunk4idx on userchunk4(userid);
CREATE INDEX userchunk5idx on userchunk5(userid);
CREATE INDEX userchunk6idx on userchunk6(userid);
CREATE INDEX userchunk7idx on userchunk7(userid);
CREATE INDEX userchunk8idx on userchunk8(userid);
CREATE INDEX userchunk9idx on userchunk9(userid);
CREATE INDEX userchunk10idx on userchunk10(userid);
CREATE INDEX userchunk11idx on userchunk11(userid);
CREATE INDEX userchunk12idx on userchunk12(userid);
CREATE INDEX userchunk13idx on userchunk13(userid);
CREATE INDEX userchunk14idx on userchunk14(userid);
CREATE INDEX userchunk15idx on userchunk15(userid);
CREATE INDEX userchunk16idx on userchunk16(userid);
CREATE INDEX userchunk17idx on userchunk17(userid);
CREATE INDEX userchunk18idx on userchunk18(userid);

CREATE INDEX userchunk19idx on userchunk19(userid);

CREATE INDEX userchunk20idx on userchunk20(userid);

CREATE INDEX userchunk21idx on userchunk21(userid);

CREATE INDEX userchunk22idx on userchunk22(userid);

CREATE INDEX userchunk23idx on userchunk23(userid);

CREATE INDEX userchunk24dx on userchunk24(userid);

CREATE INDEX userchunk25idx on userchunk25(userid);

CREATE INDEX userchunk26idx on userchunk26(userid);

CREATE INDEX userchunk27idx on userchunk27(userid);
CREATE INDEX userchunk28idx on userchunk28(userid);

CREATE INDEX userchunk29idx on userchunk29(userid);

CREATE INDEX userchunk30idx on userchunk30(userid);
CREATE INDEX userchunk31idx on userchunk31(userid);
CREATE INDEX userchunk32idx on userchunk32(userid);
CREATE INDEX userchunk33idx on userchunk33(userid);
CREATE INDEX userchunk34idx on userchunk34(userid);






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