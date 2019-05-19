
/*
   增删改的通用语法没有变化.
*/

---添加
--- 添加所有字段的数据 , 按照数据表的字段声明顺序依次添加
insert into t_user values(1000, 'admin', '9999', 1, 20, sysdate);
insert into t_user values(1001, 'apple', '9999', 2, 12, sysdate);

select * from t_user;
