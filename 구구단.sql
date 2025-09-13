WITH LOOP_TABLE as (SELECT LEVEL as NUM --1~9까지 숫자
                        FROM DUAL
                        CONNECT BY LEVEL <= 9),
        GUGU_TABLE AS (SELECT LEVEL + 1 as GUGU --2~9까지 숫자
                        FROM DUAL
                        CONNECT BY LEVEL <= 8)
                        
SELECT TO_CHAR(A.NUM) || 'X' || TO_CHAR(B.GUGU) || '=' || TO_CHAR(B.GUGU * A.NUM) AS 구구단
FROM LOOP_TABLE A, GUGU_TABLE B
-- 조인 조건절이 없는 조인 -> 전체를 다 조인해서 결과 출력
--계층형 질의문을 사용해 루프문을 구현할 수 있다!
