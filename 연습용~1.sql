SELECT LEVEL,
    articleno,
    parenno,
    LPAD(' ',4*(LEVEL-1)) || title title,
    content,
    writedate,
    id
FROM t_board
START WITH parenno=0
connect by PRIOR articleno=parenno
ORDER SIBLINGS BY articleno desc;