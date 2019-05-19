
/*
   数据类型 : 
        字符串 : char varchar2
        日期 : date
        数值 : number , 整数和小数
           1) number , 根据实际情况匹配大小
           2) number(4), 表示保存一个最大是4位的整数
           3) number(8,2) , 表示6位整数 , 2位小数
*/

/*
   数据完整性 : 关注数据的有效性和准确性
         1. 实体完整 : 关注点 , 一条数据的唯一性
                 使用主键 primary key 或 唯一键 unique 进行约束
         2. 域完整 : 关注点 , 字段的格式
                 使用非空 not null 或 检查 check 或 外键 foreign key 进行约束
         3. 引用完整 : 关注点 ,  字段的引用关系
                 使用外键 foreign key 进行约束
         4. 自定义完整 : 
                 可以存储过程 procedure、触发器 trigger等进行规范         
*/

/*
   数据冗余 : 字段的数据出现重复
        重复的数据量可以忍受则可以不处理
        处理方式 : 将重复数据提取成一张新的数据表 , 再在原数据表中引用 
*/

/*
   数据表的声明和删除语法不变
*/

---删除数据表
--留言表
drop table t_reply;
--用户表 
drop table t_user;   

---创建数据表
create table t_user(
   u_id number(4) primary key,
   u_userName varchar2(40) unique not null,
   u_password varchar2(50) not null,
   u_gender number(1) check(u_gender in (0,1,2)),
   u_age number(3) check(u_age between 12 and 120),
   u_registeTime date not null
);
create table t_reply(
   r_id number(10) primary key,
   r_content varchar2(500) not null,
   r_userId number(4) not null,
   foreign key(r_userId) references t_user(u_id)
);

/*
   select * from t_user;
   select * from t_reply;
*/










