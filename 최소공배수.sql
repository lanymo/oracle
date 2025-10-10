ACCEPT p_n1 prompt '첫 번째 숫자를 입력하세요.';
ACCEPT p_n2 prompt '두 번째 숫자를 입력하세요.';

WITH NUM_D AS (SELECT &p_n1 as NUM1, &p_n2 AS NUM2
                FROM DUAL)
                
SELECT NUM1, NUM2, 
        (NUM1/MAX(LEVEL)) * (NUM2/MAX(LEVEL))*MAX(LEVEL) "최소 공배수"
    FROM NUM_D
    WHERE MOD(NUM1, LEVEL) = 0
        AND MOD(NUM2, LEVEL) = 0
    CONNECT BY LEVEL <= NUM2;