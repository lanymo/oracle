--������ ���ǹ��� LPAD�� �̿��� �����ﰢ�� �׸���
WITH LOOP_TABLE AS (SELECT LEVEL AS NUM
                    FROM DUAL
                    CONNECT BY LEVEL <= 8)

SELECT LPAD('*', NUM, '*') AS STAR
    FROM LOOP_TABLE;