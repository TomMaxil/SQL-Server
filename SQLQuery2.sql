create database db_center;

use db_center;

create table course(
id int primary key identity(1,1),
cname varchar (20)
)

insert into course values ('ADSE'),('HDSE'),('STC');
select * from course;

create table students(
id int primary key identity(1,1),
sname varchar (120) not null,
semail varchar (25) unique,
courseid int references course(id)
)

INSERT INTO students VALUES ('Bilal', 'bilal@gmail.com', 1);
INSERT INTO students VALUES ('Ayesha', 'ayesha123@gmail.com', 2);
INSERT INTO students VALUES ('Usman', 'usman_khan@gmail.com', 3);
INSERT INTO students VALUES ('Fatima', 'fatima.ali@gmail.com', 1);
INSERT INTO students VALUES ('Ahmed', 'ahmed_r@hotmail.com', 2);
INSERT INTO students VALUES ('Zara', 'zara789@yahoo.com', 3);
INSERT INTO students VALUES ('Hassan', 'hassan.mir@gmail.com', 1);
INSERT INTO students VALUES ('Laiba', 'laiba_2000@gmail.com', 2);
INSERT INTO students VALUES ('Ali', 'ali_butt@gmail.com', 3);
INSERT INTO students VALUES ('Noor', 'noor_fatima@gmail.com', 1);

select * from students;

**Inner Join**
select * from students join course on students.courseid = course.id;

:/Selective data with join:
select students.sname,students.semail,course.cname  from students join course on students.courseid = course.id;

drop table students;

create table employee( 
id int primary key identity(1,1),
ename varchar (120) not null
)

select * from employee;
alter table employee add email varchar (25) unique;
alter table employee alter column email varchar (120);
alter table employee drop column email;

execute sp_rename 'employee','tbl_employee';
execute sp_renamedb 'db_center', 'center_db';

use center_db; 
select * from tbl_employee;

execute sp_rename 'tbl_employee.ename', 'emp_name' ,'column';
