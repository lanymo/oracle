undefined p_n
ACCEPT p_n prompt '���ڿ� ���� �� �Է�:~';


SELECT ROUND(EXP(SUM(LN(LEVEL)))) ��
 FROM DUAL
 CONNECT BY LEVEL <= &p_n;