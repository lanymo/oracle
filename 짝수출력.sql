undefined p_n
ACCEPT p_n prompt '���ڿ� ���� �� �Է�:~';


SELECT LISTAGG(LEVEL, ', ') ¦��
    FROM DUAL
    WHERE MOD(LEVEL, 2) = 0
    CONNECT BY LEVEL <= &p_n