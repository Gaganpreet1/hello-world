drop database if exists test;
create database test;
use test;
drop table if exists Teacher;
Create table Teacher(
teacher_id int,
f_name varchar(20),
l_nmae varchar(20),
primary key (teacher_id)
);
desc Teacher;

insert into Teacher values (2001,'john','doe');
insert into Teacher values (2002,'jane','Dane');
insert into Teacher values (2003,'Shivi','Prabhakar');
insert into Teacher values (2004,'Rony','Rincon');
insert into Teacher values (2005,'Anthony','Pryor');
insert into Teacher values (2006,'Elywood','Lyken ');
insert into Teacher values (2007,'Dexter','Dexter');
insert into Teacher values (2008,'Mad ','Dexter');
Select* from teacher;

drop table if exists just;
Create table just(
just_id int,
title varchar(30) not null,
primary key (just_id)
);
desc just;

insert into just values (1001,'Mathematics');
insert into just values (1002,'English');
insert into just values (1003,'SQL');
insert into just values (1004,'JAVA Programming');
insert into just values (1005,'Automation testing');
select* from just;

drop table if exists Groups1;
Create table Groups1(
group_id int,
name_ varchar(30) not null,
primary key (group_id)
);
desc Groups1;
insert into Groups1 values (3001,'Coders');
insert into Groups1 values (3002,'Literature');
insert into Groups1 values (3003,'Physical sciences');
select* from Groups1;

drop table if exists Subject_Teacher;
Create table Subject_Teacher(
just_id int,
teacher_id int,
group_id int,
foreign key (teacher_id) references Teacher(teacher_id),
foreign key (just_id) references just(just_id),
foreign key (group_id) references Groups1(group_id)

);
desc Subject_Teacher;
insert into Subject_Teacher values (1001,2001,3001);
insert into Subject_Teacher values (1002,2002,3002);
insert into Subject_Teacher values (1003,2003,3003);
insert into Subject_Teacher values (1004,2004,3001);
insert into Subject_Teacher values (1005,2005,3002);
insert into Subject_Teacher values (1001,2006,3003);
insert into Subject_Teacher values (1002,2007,3001);
insert into Subject_Teacher values (1003,2008,3002);
insert into Subject_Teacher values (1004,2001,3003);
insert into Subject_Teacher values (1005,2002,3001);
select* from Subject_Teacher;
select* from Subject_Teacher where group_id >= 30011 or teacher_id=1001;

drop table if exists Students;
Create table Students(
student_id int,
f_name varchar(30),
l_name varchar(30),
group_id int,
foreign key (group_id) references Groups1(group_id)
);
desc Students;
insert into Students values (4001,'Samantha','Stuart',3001);
insert into Students values (4002,'Samantha','Stuart',3001);
insert into Students values (4002,'vicky','dx',3002);
insert into Students values (4002,'jay','dt',3002);
insert into Students values (4003,'Samantha','Stuart',3003);
select* from Students;
select group_id from  Students where group_id in (3001,3003);
select* from Students  where f_name like '%Samantha%';
select* from  Students where l_name like '%Stuart%';
select* from Students  where f_name like '%S%';
select* from  Students where l_name like '%S%';
select distinct (f_name),(l_name) from students order by (f_name) desc;



drop table if exists Marks;
Create table Marks(
mark_id int,
student_id int,
just_id int,
date date,
mark int not null,
primary key (mark_id),
foreign key (just_id) references just(just_id)
);

desc Marks;

insert into Marks values (5001,4001,1001,'2019-11-11',80);
insert into Marks values (5002,4002,1002,'2000-01-21',65);
insert into Marks values (5003,4003,1003,'2018-05-12',40);
select* from Marks;
select* from marks order by mark_id desc;





