ACCEPT NUM1 PROMPT '�غ��� ���̸� �Է��ϼ��� ~ '
ACCEPT NUM2 PROMPT '���̸� �Է��ϼ��� ~ '
ACCEPT NUM3 PROMPT '������ ���̸� �Է��ϼ��� ~ '

SELECT CASE WHEN
    ( POWER(&NUM1, 2) + POWER(&NUM2, 2) ) = POWER(&NUM3, 2)
        THEN '�����ﰢ���� �½��ϴ�'
        ELSE '�����ﰢ���� �ƴմϴ�' END AS "��Ÿ����� ����"
    FROM DUAL;