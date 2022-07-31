create table admin(
MovNo varchar2(100) not null , --primary key
Theater varchar2(100) not null,
Title varchar2(100) not null,
Time varchar2(50) not null,
Count number not null,
Price number not null,
Seats number default 0,
Status number default 0
);
ALTER TABLE admin ADD PRIMARY KEY (MovNO, Seats);

desc admin;