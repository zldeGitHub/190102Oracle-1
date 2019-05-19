
/*
   用户 : Oracle需要通过用户才能操作 .
      每个用户需要绑定2个表空间 . 一个是默认表空间 , 一个是临时表空间 .
      用户的数据会自动存放到绑定的默认表空间中 .
      用户需要被授予对应的权限才能完成相关的操作 . 
      关键字 user
*/

----创建用户
create user apple identified by 123;

----授予权限
/*
    登录 : connect
    数据表 : resource
    视图 : create view 
    数据库管理员: sysdba
*/
grant connect to apple; 

----回收权限
revoke connect from apple;

----删除用户
drop user apple;












