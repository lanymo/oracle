WITH LOOP_TABLE as (SELECT LEVEL as NUM
                        FROM DUAL
                        CONNECT BY LEVEL <= 9)
    
SELECT '2' || 'X' || NUM || '=' || 2 * NUM AS "2��"
    FROM LOOP_TABLE;

--������ ���ǹ��� ����� �������� ������ �� �ִ�!
