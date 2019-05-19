
--单行注释
/* 多行注释 */

/*
   表空间 : Oracle数据库最大的逻辑单元
       关键字 tablespace
       表空间通过绑定的账户产生效果
       Oracle默认生成的表空间 : system系统表空间 , users测试表空间
       注 : 需要使用管理员账户操作
*/

---- 创建表空间
create tablespace mydata
datafile 'd:/jt35/data/mydata.dbf'
size 128M
--以下可选
autoextend on --是否可以自动增长空间大小
next 64M --每次的增量
maxsize unlimited; --空间上限大小


---删除表空间
drop tablespace mydata;












