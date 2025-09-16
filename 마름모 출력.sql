undefined p_num
ACCEPT p_num prompt '숫자 입력 : '

SELECT lpad(' ', &p_num - level, ' ') || rpad('*', level, '*') as star
    FROM dual
    CONNECT BY level < &p_num + 1
UNION ALL
SELECT lpad(' ', level, ' ') || rpad('*', (&p_num) - level, '*') as star
    FROM dual
    CONNECT BY level < &p_num;