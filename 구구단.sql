WITH LOOP_TABLE as (SELECT LEVEL as NUM --1~9���� ����
                        FROM DUAL
                        CONNECT BY LEVEL <= 9),
        GUGU_TABLE AS (SELECT LEVEL + 1 as GUGU --2~9���� ����
                        FROM DUAL
                        CONNECT BY LEVEL <= 8)
                        
SELECT TO_CHAR(A.NUM) || 'X' || TO_CHAR(B.GUGU) || '=' || TO_CHAR(B.GUGU * A.NUM) AS ������
FROM LOOP_TABLE A, GUGU_TABLE B
-- ���� �������� ���� ���� -> ��ü�� �� �����ؼ� ��� ���
--������ ���ǹ��� ����� �������� ������ �� �ִ�!
