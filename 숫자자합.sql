undefined p_n
ACCEPT p_n prompt '���ڿ� ���� �� �Է�:~';


SELECT SUM(LEVEL) ��
 FROM DUAL
 CONNECT BY LEVEL <= &p_n;