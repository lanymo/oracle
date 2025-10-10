undefined p_n
ACCEPT p_n prompt '숫자에 대한 값 입력:~';
WITH LOOP_TABLE as (SELECT LEVEL AS NUM
                        FROM DUAL
                        CONNECT BY LEVEL <= &p_n)
SELECT L1.NUM 소수
    FROM LOOP_TABLE L1, LOOP_TABLE L2
    WHERE MOD(L1.NUM, L2.NUM) = 0
    GROUP BY L1.NUM
    HAVING COUNT(L1.NUM) = 2;