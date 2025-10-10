undefined p_n
ACCEPT p_n prompt '숫자에 대한 값 입력:~';


SELECT SUM(LEVEL) 곱
 FROM DUAL
 CONNECT BY LEVEL <= &p_n;