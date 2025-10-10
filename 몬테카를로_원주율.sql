SELECT SUM(CASE WHEN (POWER(NUM1, 2) + POWER(NUM2,2)) <= 1 THEN 1
                ELSE 0 END) / 100000 * 4 AS "¿øÁÖÀ²"
                
FROM (
    SELECT DBMS_RANDOM.VALUE(0,1) AS NUM1,
           DBMS_RANDOM.VALUE(0,1) AS NUM2
           FROM DUAL
           CONNECT BY LEVEL < 100000
);