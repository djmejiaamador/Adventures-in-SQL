SELECT count(movieid)
FROM 
    (SELECT movieid, count(movieid) c
    from ratings
    group by movieid
    order by c desc) t 
    WHERE t.c > 25000;

SELECT count(movieid)
FROM 
    (SELECT movieid, count(movieid) c
    from ratings
    group by movieid
    order by c desc) t 
    WHERE t.c <= 25000 AND t.c > 15000;

SELECT count(movieid)
FROM 
    (SELECT movieid, count(movieid) c
    from ratings
    group by movieid
    order by c desc) t 
    WHERE t.c <= 15000 AND t.c > 10000;



SELECT count(movieid)
FROM 
    (SELECT movieid, count(movieid) c
    from ratings
    group by movieid
    order by c desc) t 
    WHERE t.c <= 5000 AND t.c > 1000;


SELECT count(movieid)
FROM 
    (SELECT movieid, count(movieid) c
    from ratings
    group by movieid
    order by c desc) t 
    WHERE t.c <= 1000;



SELECT movieid, count(movieid) c
from ratings
group by movieid
order by c desc;



select Distinct Count(movieid) from ratings;