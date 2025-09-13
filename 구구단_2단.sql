WITH LOOP_TABLE as (SELECT LEVEL as NUM
                        FROM DUAL
                        CONNECT BY LEVEL <= 9)
    
SELECT '2' || 'X' || NUM || '=' || 2 * NUM AS "2단"
    FROM LOOP_TABLE;

--계층형 질의문을 사용해 루프문을 구현할 수 있다!
