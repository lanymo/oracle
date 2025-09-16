undefined a
undefiend b

WITH LOOP_TABLE AS (SELECT LEVEL AS NUM
                        FROM DUAL
                        CONNECT BY LEVEL <= &a)
        
SELECT LPAD(' ', &b - NUM, ' ') || LPAD('*', NUM, '*') AS "TRIANGLE"
    FROM LOOP_TABLE;
