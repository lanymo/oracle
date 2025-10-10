ACCEPT p_n1 prompt 'ù ��° ���ڸ� �Է��ϼ���.';
ACCEPT p_n2 prompt '�� ��° ���ڸ� �Է��ϼ���.';

WITH NUM_D AS (SELECT &p_n1 as NUM1, &p_n2 AS NUM2
                FROM DUAL)
                
SELECT NUM1, NUM2, 
        (NUM1/MAX(LEVEL)) * (NUM2/MAX(LEVEL))*MAX(LEVEL) "�ּ� �����"
    FROM NUM_D
    WHERE MOD(NUM1, LEVEL) = 0
        AND MOD(NUM2, LEVEL) = 0
    CONNECT BY LEVEL <= NUM2;