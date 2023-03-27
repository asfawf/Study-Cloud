Insert Into Member values('admin1','1234','admin','123456','1234@ccc', 1 , 'ROLE_ADMIN');
Insert Into Member values('admin2','5678','admin','123456','1234@ccc', 1 , 'ROLE_ADMIN');
Insert Into Member values('user1','1234','admin','123456','1234@ccc', 1 , 'ROLE_USER');
Insert Into Member values('user2','1234','admin','123456','1234@ccc', 0 , 'ROLE_USER');

commit;

DELETE FROM Member
           WHERE MEM_ID = 'admin2';
select MEM_ID as username ,MEM_PASSWD as password,MEM_QUIT as enabled from MEMBER where MEM_ID= 'admin2';
select MEM_ID as username ,MEM_PASSWD as password,MEM_QUIT as enabled from MEMBER where MEM_ID = 'admin1';
select MEM_ID as username ,MEM_PASSWD as password,MEM_QUIT as enabled from MEMBER where MEM_ID = 'user2';

select MEM_ID as username, 
    CASE WHEN MEM_AUTHORITY= 'ROLE_ADMIN'  THEN 'ROLE_ADMIN'
        ELSE 'ROLE_USER' 
        END authority 
    FROM MEMBER where MEM_ID='admin1';


select MEM_ID as username ,MEM_PASSWD as password, MEM_AUTHORITY as enabled from MEMBER where MEM_ID ='admin1';

select MEM_ID as username, MEM_AUTHORITY as authority from MEMBER where MEM_ID= 'admin1' ;