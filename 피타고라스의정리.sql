ACCEPT NUM1 PROMPT '밑변의 길이를 입력하세요 ~ '
ACCEPT NUM2 PROMPT '높이를 입력하세요 ~ '
ACCEPT NUM3 PROMPT '빗변의 길이를 입력하세요 ~ '

SELECT CASE WHEN
    ( POWER(&NUM1, 2) + POWER(&NUM2, 2) ) = POWER(&NUM3, 2)
        THEN '직각삼각형이 맞습니다'
        ELSE '직각삼각형이 아닙니다' END AS "피타고라스의 정리"
    FROM DUAL;