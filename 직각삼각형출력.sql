--계층형 질의문과 LPAD를 이용한 직각삼각형 그리기
WITH LOOP_TABLE AS (SELECT LEVEL AS NUM
                    FROM DUAL
                    CONNECT BY LEVEL <= 8)

SELECT LPAD('*', NUM, '*') AS STAR
    FROM LOOP_TABLE;