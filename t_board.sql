drop TABLE t_board CASCADE CONSTRAINTS;

CREATE TABLE t_board(
    articleNO NUMBER(10) PRIMARY key,
    parenNO NUMBER(10) DEFAULT 0,
    title VARCHAR2(500) not null,
    content VARCHAR2(4000),
    imageFileName VARCHAR2(100),
    writedate date DEFAULT SYSDATE not null,
    id VARCHAR2(10),
    CONSTRAINT FK_ID FOREIGN key(id)
    REFERENCES t_member(id)
);

insert into t_board(articleNO, parenNO, title, content, imageFileName, writedate, id)
values(1, 0, '테스트글입니다.', '테스트글입니다.', null ,sysdate,'hong');

insert into t_board(articleNO, parenNO, title, content, imageFileName, writedate, id)
values(2, 0, '안녕하세요.', '상품 후기입니다.', null ,sysdate,'hong');

insert into t_board(articleNO, parenNO, title, content, imageFileName, writedate, id)
values(3, 2, '답변입니다.', '상품 후기에 대한 답변입니다.', null ,sysdate,'hong');

insert into t_board(articleNO, parenNO, title, content, imageFileName, writedate, id)
values(5, 3, '답변입니다.', '상품 좋습니다.', null ,sysdate,'lee');

insert into t_board(articleNO, parenNO, title, content, imageFileName, writedate, id)
values(4, 0, '김유신입니다.', '김유신 테스트글입니다.', null ,sysdate,'kim');

insert into t_board(articleNO, parenNO, title, content, imageFileName, writedate, id)
values(6, 2, '상품후기입니다..', '이순신씨의 상품 사용 후기를 올립니다.', null ,sysdate,'lee');

commit;

SELECT
    *
FROM t_board;