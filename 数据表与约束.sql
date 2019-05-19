
/*
   �������� : 
        �ַ��� : char varchar2
        ���� : date
        ��ֵ : number , ������С��
           1) number , ����ʵ�����ƥ���С
           2) number(4), ��ʾ����һ�������4λ������
           3) number(8,2) , ��ʾ6λ���� , 2λС��
*/

/*
   ���������� : ��ע���ݵ���Ч�Ժ�׼ȷ��
         1. ʵ������ : ��ע�� , һ�����ݵ�Ψһ��
                 ʹ������ primary key �� Ψһ�� unique ����Լ��
         2. ������ : ��ע�� , �ֶεĸ�ʽ
                 ʹ�÷ǿ� not null �� ��� check �� ��� foreign key ����Լ��
         3. �������� : ��ע�� ,  �ֶε����ù�ϵ
                 ʹ����� foreign key ����Լ��
         4. �Զ������� : 
                 ���Դ洢���� procedure�������� trigger�Ƚ��й淶         
*/

/*
   �������� : �ֶε����ݳ����ظ�
        �ظ���������������������Բ�����
        ����ʽ : ���ظ�������ȡ��һ���µ����ݱ� , ����ԭ���ݱ������� 
*/

/*
   ���ݱ��������ɾ���﷨����
*/

---ɾ�����ݱ�
--���Ա�
drop table t_reply;
--�û��� 
drop table t_user;   

---�������ݱ�
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










