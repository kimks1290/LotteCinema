create table client(
No varchar(20) not null,
Name varchar2(100),
Title varchar2(100) not null,
Theater varchar2(100) not null,
Seats number primary key,
Time varchar2(50) ,
Id varchar2(100) not null,
Phone varchar2(50),
Price number, 
Count number, 
Buydate date default sysdate not null
);

drop table client;
select * from client;
desc client;

